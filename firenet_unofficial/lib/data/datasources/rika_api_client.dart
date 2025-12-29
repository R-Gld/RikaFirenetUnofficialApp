import 'package:dio/dio.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import '../../core/constants/api_constants.dart';
import '../../core/errors/exceptions.dart';

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

    // Add cookie manager for session handling
    _dio.interceptors.add(CookieManager(_cookieJar));

    // Add logging in debug mode
    _dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        logPrint: (obj) => print('[RikaAPI] $obj'),
      ),
    );
  }

  /// Authenticates with email and password
  ///
  /// Returns session cookie value on success
  /// Throws [AuthenticationException] if credentials are invalid
  Future<String> authenticate({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _dio.post(
        ApiConstants.loginEndpoint,
        data: {
          'email': email,
          'password': password,
        },
        options: Options(
          contentType: Headers.formUrlEncodedContentType,
        ),
      );

      // Check for success indicator in response body
      if (response.statusCode == 200 &&
          response.data.toString().contains(ApiConstants.loginSuccessIndicator)) {
        // Cookie is automatically stored by CookieManager
        final cookies = await _cookieJar.loadForRequest(
          Uri.parse(ApiConstants.baseUrl),
        );

        final sessionCookie = cookies.firstWhere(
          (cookie) => cookie.name == ApiConstants.sessionCookieName,
          orElse: () => throw const AuthenticationException(
            'Session cookie not found',
          ),
        );

        return sessionCookie.value;
      }

      throw const AuthenticationException('Invalid credentials');
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
    await _cookieJar.deleteAll();
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
