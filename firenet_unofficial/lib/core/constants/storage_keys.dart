/// Storage keys for SecureStorage and SharedPreferences
///
/// Centralized constants for all storage keys used in the app to ensure
/// consistency and prevent typos.
class StorageKeys {
  StorageKeys._(); // Private constructor to prevent instantiation

  // ========== FlutterSecureStorage keys ==========

  /// Key for storing encrypted user credentials (email + password)
  static const String credentials = 'rika_credentials';

  /// Key for storing session data (cookie + expiry)
  static const String sessionData = 'rika_session';

  // ========== SharedPreferences keys ==========
  // Add SharedPreferences keys here as needed in the future
}
