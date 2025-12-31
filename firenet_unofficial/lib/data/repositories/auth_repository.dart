import 'package:dartz/dartz.dart';
import '../datasources/rika_api_client.dart';
import '../models/auth_credentials.dart';
import 'secure_storage_repository.dart';
import '../../core/errors/exceptions.dart';
import '../../core/errors/failures.dart';

/// Repository for authentication operations
///
/// Handles user authentication, session management, and credential storage
class AuthRepository {
  final RikaApiClient _apiClient;
  final SecureStorageRepository _storageRepository;

  SessionData? _currentSession;

  AuthRepository({
    required RikaApiClient apiClient,
    required SecureStorageRepository storageRepository,
  })  : _apiClient = apiClient,
        _storageRepository = storageRepository;

  /// Authenticates with credentials and stores session
  ///
  /// Returns [SessionData] on success or [AuthFailure]/[NetworkFailure] on error
  Future<Either<Failure, SessionData>> authenticate(
    AuthCredentials credentials,
  ) async {
    try {
      final authResult = await _apiClient.authenticate(
        email: credentials.email,
        password: credentials.password,
      );

      // Use actual cookie expiry from server, or fallback to 30 days if not provided
      final expiresAt = authResult.expiresAt ??
          DateTime.now().add(const Duration(days: 30));

      final session = SessionData(
        sessionCookie: authResult.sessionCookie,
        expiresAt: expiresAt,
      );

      _currentSession = session;

      // Save both credentials and session
      await _storageRepository.saveCredentials(credentials);
      await _storageRepository.saveSessionData(session);

      return Right(session);
    } on AuthenticationException catch (e) {
      return Left(AuthFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } catch (e) {
      return Left(ServerFailure('Authentication failed: $e'));
    }
  }

  /// Attempts to restore session from storage
  ///
  /// Returns [SessionData] if valid session found, null if not found
  Future<Either<Failure, SessionData?>> restoreSession() async {
    try {
      final sessionResult = await _storageRepository.getSessionData();

      return sessionResult.fold(
        (failure) => Left(failure),
        (session) {
          if (session != null && session.isValid) {
            _currentSession = session;
            return Right(session);
          }
          return const Right(null);
        },
      );
    } catch (e) {
      return Left(CacheFailure('Failed to restore session: $e'));
    }
  }

  /// Attempts automatic re-authentication using stored credentials
  ///
  /// Returns [SessionData] on success or [AuthFailure] if no credentials stored
  Future<Either<Failure, SessionData>> reauthenticate() async {
    final credentialsResult = await _storageRepository.getCredentials();

    return await credentialsResult.fold(
      (failure) => Left(failure),
      (credentials) async {
        if (credentials == null) {
          return const Left(AuthFailure('No stored credentials'));
        }
        return await authenticate(credentials);
      },
    );
  }

  /// Checks if currently authenticated
  bool get isAuthenticated {
    return _currentSession != null && _currentSession!.isValid;
  }

  /// Gets current session
  SessionData? get currentSession => _currentSession;

  /// Logs out and clears all stored data
  ///
  /// Returns [Unit] on success or [CacheFailure] on error
  Future<Either<Failure, Unit>> logout() async {
    try {
      await _apiClient.clearSession();
      await _storageRepository.clearAll();
      _currentSession = null;
      return const Right(unit);
    } catch (e) {
      return Left(CacheFailure('Logout failed: $e'));
    }
  }
}
