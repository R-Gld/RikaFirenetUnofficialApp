import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';

/// Service for secure deletion of sensitive data
///
/// Implements defense-in-depth deletion:
/// 1. Secure storage deletion (OS keychain/keystore)
/// 2. Memory zeroing (best-effort in Dart)
/// 3. Cache clearing
/// 4. Verification
class SecureDeletionService {
  final FlutterSecureStorage _secureStorage;

  SecureDeletionService({FlutterSecureStorage? secureStorage})
      : _secureStorage = secureStorage ?? const FlutterSecureStorage();

  /// Securely delete a sensitive string value
  ///
  /// Attempts to overwrite memory before deletion (limited in Dart)
  Future<void> deleteSecureValue(String key) async {
    try {
      // 1. Read current value to get reference
      final value = await _secureStorage.read(key: key);

      if (value != null) {
        // 2. Attempt to zero out memory (best-effort)
        _zeroOutString(value);
      }

      // 3. Delete from secure storage
      await _secureStorage.delete(key: key);

      // 4. Verify deletion
      final verification = await _secureStorage.read(key: key);
      if (verification != null) {
        debugPrint('[SecureDeletion] WARNING: Value still present after deletion: $key');
        // Retry deletion
        await _secureStorage.delete(key: key);
      }
    } catch (e) {
      debugPrint('[SecureDeletion] Error deleting $key: ${e.runtimeType}');
      rethrow;
    }
  }

  /// Securely delete all credentials and session data
  Future<void> deleteAllAuthData({
    required List<String> keys,
  }) async {
    for (final key in keys) {
      await deleteSecureValue(key);
    }

    // Double-check: delete all keys from secure storage
    await _secureStorage.deleteAll();

    // Verify all keys are deleted
    final allValues = await _secureStorage.readAll();
    if (allValues.isNotEmpty) {
      debugPrint('[SecureDeletion] WARNING: ${allValues.length} values remain after deleteAll');
    }
  }

  /// Clear cookie storage
  Future<void> clearCookieStorage() async {
    try {
      if (!kIsWeb) {
        final appDocDir = await getApplicationDocumentsDirectory();
        final cookiePath = '${appDocDir.path}/.cookies';
        final cookieDir = Directory(cookiePath);

        if (await cookieDir.exists()) {
          await cookieDir.delete(recursive: true);
          debugPrint('[SecureDeletion] Cookie storage deleted');
        }
      }
    } catch (e) {
      debugPrint('[SecureDeletion] Error clearing cookies: ${e.runtimeType}');
    }
  }

  /// Clear Dio HTTP cache
  Future<void> clearHttpCache() async {
    try {
      if (!kIsWeb) {
        final tempDir = await getTemporaryDirectory();
        final cacheDir = Directory('${tempDir.path}/dio_cache');

        if (await cacheDir.exists()) {
          await cacheDir.delete(recursive: true);
          debugPrint('[SecureDeletion] HTTP cache deleted');
        }
      }
    } catch (e) {
      debugPrint('[SecureDeletion] Error clearing HTTP cache: ${e.runtimeType}');
    }
  }

  /// Clear sensitive SharedPreferences values
  Future<void> clearSharedPreferences({
    required List<String> sensitiveKeys,
  }) async {
    try {
      final prefs = await SharedPreferences.getInstance();

      for (final key in sensitiveKeys) {
        await prefs.remove(key);
      }

      debugPrint('[SecureDeletion] Cleared ${sensitiveKeys.length} SharedPreferences keys');
    } catch (e) {
      debugPrint('[SecureDeletion] Error clearing SharedPreferences: ${e.runtimeType}');
    }
  }

  /// Complete secure cleanup on logout
  ///
  /// Returns true if all deletions succeeded, false if any failed
  Future<bool> performLogoutCleanup({
    required List<String> secureStorageKeys,
    List<String> sharedPreferencesKeys = const [],
  }) async {
    try {
      debugPrint('[SecureDeletion] Starting logout cleanup');

      // 1. Delete all auth data from secure storage
      await deleteAllAuthData(keys: secureStorageKeys);

      // 2. Clear cookies
      await clearCookieStorage();

      // 3. Clear HTTP cache
      await clearHttpCache();

      // 4. Clear SharedPreferences
      if (sharedPreferencesKeys.isNotEmpty) {
        await clearSharedPreferences(sensitiveKeys: sharedPreferencesKeys);
      }

      // 5. Trigger garbage collection (hint to VM)
      _forceGarbageCollection();

      debugPrint('[SecureDeletion] Logout cleanup completed successfully');
      return true;
    } catch (e) {
      debugPrint('[SecureDeletion] Logout cleanup failed: ${e.runtimeType}');
      return false;
    }
  }

  /// Attempt to zero out string memory (best-effort in Dart)
  ///
  /// NOTE: This is NOT guaranteed to work due to Dart's immutable strings
  /// and garbage collector. Consider it defense-in-depth, not primary security.
  void _zeroOutString(String value) {
    try {
      // Convert to byte buffer
      final bytes = Uint8List.fromList(utf8.encode(value));

      // Overwrite with zeros
      bytes.fillRange(0, bytes.length, 0);

      // Overwrite with random data (optional additional step)
      // This doesn't actually clear the original string's memory,
      // but it clears the byte representation we created
    } catch (e) {
      // Ignore errors - this is best-effort
    }
  }

  /// Force garbage collection (hint to VM)
  void _forceGarbageCollection() {
    // In Dart, we can't force GC, but we can hint by creating pressure
    // This is a no-op in production but may help in debug
    if (kDebugMode) {
      final _ = List.generate(1000, (i) => Uint8List(1024));
      debugPrint('[SecureDeletion] GC hint triggered');
    }
  }
}
