
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:dartz/dartz.dart';
import 'dart:convert';
import '../models/auth_credentials.dart';
import '../../core/errors/failures.dart';

/// Repository for securely storing and retrieving sensitive data
///
/// Uses FlutterSecureStorage to store credentials and session data
/// in the device's secure storage (Keychain on iOS, KeyStore on Android)
class SecureStorageRepository {
  final FlutterSecureStorage _storage;

  static const String _credentialsKey = 'rika_credentials';
  static const String _sessionDataKey = 'rika_session';

  SecureStorageRepository({FlutterSecureStorage? storage})
      : _storage = storage ?? const FlutterSecureStorage();

  /// Saves credentials securely
  ///
  /// Returns [Unit] on success or [CacheFailure] on error
  Future<Either<Failure, Unit>> saveCredentials(
    AuthCredentials credentials,
  ) async {
    try {
      final json = jsonEncode(credentials.toJson());
      await _storage.write(key: _credentialsKey, value: json);
      return const Right(unit);
    } catch (e) {
      return const Left(CacheFailure('Failed to save credentials'));
    }
  }

  /// Retrieves saved credentials
  ///
  /// Returns credentials if found, null if not found, or [CacheFailure] on error
  Future<Either<Failure, AuthCredentials?>> getCredentials() async {
    try {
      final json = await _storage.read(key: _credentialsKey);
      if (json == null) return const Right(null);

      final map = jsonDecode(json) as Map<String, dynamic>;
      return Right(AuthCredentials.fromJson(map));
    } catch (e) {
      return const Left(CacheFailure('Failed to read credentials'));
    }
  }

  /// Saves session data
  ///
  /// Returns [Unit] on success or [CacheFailure] on error
  Future<Either<Failure, Unit>> saveSessionData(SessionData session) async {
    try {
      final json = jsonEncode(session.toJson());
      await _storage.write(key: _sessionDataKey, value: json);
      return const Right(unit);
    } catch (e) {
      return const Left(CacheFailure('Failed to save session'));
    }
  }

  /// Retrieves session data
  ///
  /// Returns session if found, null if not found, or [CacheFailure] on error
  Future<Either<Failure, SessionData?>> getSessionData() async {
    try {
      final json = await _storage.read(key: _sessionDataKey);
      if (json == null) return const Right(null);

      final map = jsonDecode(json) as Map<String, dynamic>;
      return Right(SessionData.fromJson(map));
    } catch (e) {
      return const Left(CacheFailure('Failed to read session'));
    }
  }

  /// Clears all stored authentication data
  ///
  /// Returns [Unit] on success or [CacheFailure] on error
  Future<Either<Failure, Unit>> clearAll() async {
    try {
      await _storage.delete(key: _credentialsKey);
      await _storage.delete(key: _sessionDataKey);
      return const Right(unit);
    } catch (e) {
      return const Left(CacheFailure('Failed to clear storage'));
    }
  }
}
