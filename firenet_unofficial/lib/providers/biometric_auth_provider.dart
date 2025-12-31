import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../core/security/biometric_auth_service.dart';
import '../core/constants/storage_keys.dart';

/// Provider for biometric authentication service
final biometricAuthServiceProvider = Provider<BiometricAuthService>((ref) {
  return BiometricAuthService();
});

/// Provider for biometric settings
final biometricSettingsProvider =
    StateNotifierProvider<BiometricSettingsNotifier, BiometricSettings>((ref) {
  return BiometricSettingsNotifier(
    biometricAuthService: ref.watch(biometricAuthServiceProvider),
  );
});

/// Biometric settings state
class BiometricSettings {
  final bool isEnabled;
  final bool isAvailable;

  const BiometricSettings({
    this.isEnabled = false,
    this.isAvailable = false,
  });

  BiometricSettings copyWith({
    bool? isEnabled,
    bool? isAvailable,
  }) {
    return BiometricSettings(
      isEnabled: isEnabled ?? this.isEnabled,
      isAvailable: isAvailable ?? this.isAvailable,
    );
  }
}

/// Manages biometric authentication settings
class BiometricSettingsNotifier extends StateNotifier<BiometricSettings> {
  final BiometricAuthService _biometricAuthService;

  BiometricSettingsNotifier({
    required BiometricAuthService biometricAuthService,
  })  : _biometricAuthService = biometricAuthService,
        super(const BiometricSettings()) {
    _initialize();
  }

  /// Initialize biometric settings
  Future<void> _initialize() async {
    // Check if biometric is available
    final isAvailable = await _biometricAuthService.isBiometricAvailable();

    // Load saved preference
    final prefs = await SharedPreferences.getInstance();
    final isEnabled = prefs.getBool(StorageKeys.biometricEnabled) ?? false;

    state = BiometricSettings(
      isEnabled: isEnabled && isAvailable, // Only enable if available
      isAvailable: isAvailable,
    );
  }

  /// Enable biometric authentication
  Future<void> setBiometricEnabled(bool enabled) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(StorageKeys.biometricEnabled, enabled);

      state = state.copyWith(isEnabled: enabled);
    } catch (e) {
      // Keep current state on error
    }
  }

  /// Mark that the biometric prompt was shown to the user
  Future<void> markPromptShown() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(StorageKeys.biometricPromptShown, true);
    } catch (e) {
      // Ignore errors
    }
  }

  /// Check if biometric prompt was already shown
  Future<bool> wasPromptShown() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getBool(StorageKeys.biometricPromptShown) ?? false;
    } catch (e) {
      return false;
    }
  }
}
