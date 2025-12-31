import 'package:dio/dio.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import '../../core/constants/api_constants.dart';
import '../../core/errors/exceptions.dart';
import '../../core/utils/cookie_parser.dart';

/// Result of authentication containing session cookie and expiration
class AuthResult {
  final String sessionCookie;
  final DateTime? expiresAt;

  const AuthResult(this.sessionCookie, this.expiresAt);
}

/// HTTP client for Rika Firenet API
///
/// Manages all HTTP requests to the Rika Firenet API with cookie-based
/// authentication and automatic error handling.
class RikaApiClient {
  late final Dio _dio;
  final CookieJar _cookieJar;

  RikaApiClient({CookieJar? cookieJar}) : _cookieJar = cookieJar ?? CookieJar() {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: ApiConstants.connectTimeout,
        receiveTimeout: ApiConstants.receiveTimeout,
        sendTimeout: ApiConstants.requestTimeout,
        validateStatus: (status) => status != null && status < 500,
      ),
    );

    // Add cookie manager for session handling (not supported on web)
    if (!kIsWeb) {
      _dio.interceptors.add(CookieManager(_cookieJar));
    }

    // Add logging in debug mode ONLY (security: prevent credential leakage in production)
    if (kDebugMode) {
      _dio.interceptors.add(
        LogInterceptor(
          requestBody: true,
          responseBody: true,
          logPrint: (obj) => debugPrint('[RikaAPI] $obj'),
        ),
      );
    }
  }

  /// Authenticates with email and password
  ///
  /// Returns [AuthResult] containing session cookie and expiration on success
  /// Throws [AuthenticationException] if credentials are invalid
  Future<AuthResult> authenticate({
    required String email,
    required String password,
  }) async {
    try {
      // First request: login with credentials (don't follow redirects to detect success)
      final loginResponse = await _dio.post(
        ApiConstants.loginEndpoint,
        data: {
          'email': email,
          'password': password,
        },
        options: Options(
          contentType: Headers.formUrlEncodedContentType,
          followRedirects: false,
          validateStatus: (status) => status != null && status < 500,
        ),
      );

      // Check if login was successful (302 redirect to /web/summary)
      final isSuccess = loginResponse.statusCode == 302 &&
          loginResponse.headers.value('location')?.contains('/web/summary') == true;

      if (!isSuccess) {
        throw const AuthenticationException('Invalid credentials');
      }

      // Follow the redirect manually to establish the session properly
      // Response not needed, just making the request to set up session cookies
      await _dio.get(
        ApiConstants.summaryEndpoint,
        options: Options(
          followRedirects: true,
          validateStatus: (status) => status != null && status < 500,
        ),
      );

      // Extract session cookie and expiration
      String sessionCookieValue;
      DateTime? expiresAt;

      if (kIsWeb) {
        // On web, cookies are managed by the browser
        // Extract from response headers (first response that set the cookie)
        final setCookieHeaders = loginResponse.headers['set-cookie'] ?? [];
        final sessionCookieHeader = setCookieHeaders.firstWhere(
          (header) => header.contains(ApiConstants.sessionCookieName),
          orElse: () => throw const AuthenticationException(
            'Session cookie not found in headers',
          ),
        );

        // Parse cookie value from header (format: "connect.sid=s%3A...")
        sessionCookieValue = CookieParser.extractSessionCookie(sessionCookieHeader) ?? '';
        if (sessionCookieValue.isEmpty) {
          throw const AuthenticationException('Invalid cookie format');
        }

        // Parse expiration from Set-Cookie header
        expiresAt = CookieParser.extractCookieExpiry(sessionCookieHeader);
      } else {
        // On mobile/desktop, use CookieJar
        final cookies = await _cookieJar.loadForRequest(
          Uri.parse(ApiConstants.baseUrl),
        );

        final sessionCookie = cookies.firstWhere(
          (cookie) => cookie.name == ApiConstants.sessionCookieName,
          orElse: () => throw const AuthenticationException(
            'Session cookie not found',
          ),
        );
        sessionCookieValue = sessionCookie.value;

        // Extract expiration from cookie
        expiresAt = sessionCookie.expires;
      }

      return AuthResult(sessionCookieValue, expiresAt);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  /// Fetches stove summary page for discovery
  ///
  /// Returns HTML content containing list of stoves
  /// Throws [SessionExpiredException] if session has expired
  Future<String> getStoveSummaryHtml() async {
    try {
      final response = await _dio.get(ApiConstants.summaryEndpoint);

      if (response.statusCode == 200) {
        return response.data.toString();
      }

      throw ApiException(
        'Failed to fetch stove summary',
        response.statusCode,
      );
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  /// Fetches current stove state
  ///
  /// Returns JSON object with controls and sensors data
  /// The nocache parameter prevents caching
  Future<Map<String, dynamic>> getStoveStatus(String stoveId) async {
    try {
      final timestamp = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      final response = await _dio.get(
        ApiConstants.statusEndpoint(stoveId),
        queryParameters: {'nocache': timestamp},
      );

      if (response.statusCode == 200) {
        return response.data as Map<String, dynamic>;
      }

      throw ApiException(
        'Failed to fetch stove status',
        response.statusCode,
      );
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  /// Updates stove controls
  ///
  /// CRITICAL: Must send complete controls object, not partial updates
  /// Returns true if 'OK' received in response, false otherwise
  Future<bool> setStoveControls(
    String stoveId,
    Map<String, dynamic> controls,
  ) async {
    try {
      final response = await _dio.post(
        ApiConstants.controlsEndpoint(stoveId),
        data: controls,
        options: Options(
          contentType: Headers.formUrlEncodedContentType,
        ),
      );

      if (response.statusCode == 200) {
        return response.data.toString().contains(
              ApiConstants.controlUpdateSuccessIndicator,
            );
      }

      return false;
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  /// Clears all cookies (for logout)
  Future<void> clearSession() async {
    if (!kIsWeb) {
      await _cookieJar.deleteAll();
    }
    // On web, cookies are managed by the browser
    // They will be cleared by the browser when needed
  }

  /// Converts DioException to appropriate RikaException
  RikaException _handleDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return TimeoutException('Request timeout', e);

      case DioExceptionType.connectionError:
        return const NetworkException('Connection failed');

      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode;
        if (statusCode == 401 || statusCode == 403) {
          return const SessionExpiredException();
        }
        return ApiException('API error', statusCode, e);

      default:
        return NetworkException('Network error', e);
    }
  }
}
