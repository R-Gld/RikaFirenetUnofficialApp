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

  /// Key for biometric authentication preference
  static const String biometricEnabled = 'biometric_enabled';

  /// Key to track if user was prompted for biometric enrollment
  static const String biometricPromptShown = 'biometric_prompt_shown';
}
