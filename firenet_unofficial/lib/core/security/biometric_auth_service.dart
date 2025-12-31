import 'package:local_auth/local_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';

/// Service for biometric authentication (fingerprint/Face ID)
///
/// Provides a wrapper around the local_auth package
class BiometricAuthService {
  final LocalAuthentication _localAuth = LocalAuthentication();

  /// Check if device supports biometric authentication
  Future<bool> isBiometricAvailable() async {
    try {
      return await _localAuth.canCheckBiometrics ||
          await _localAuth.isDeviceSupported();
    } catch (e) {
      debugPrint('[BiometricAuth] Error checking availability: ${e.runtimeType}');
      return false;
    }
  }

  /// Get available biometric types
  Future<List<BiometricType>> getAvailableBiometrics() async {
    try {
      return await _localAuth.getAvailableBiometrics();
    } catch (e) {
      debugPrint('[BiometricAuth] Error getting biometrics: ${e.runtimeType}');
      return [];
    }
  }

  /// Authenticate with biometrics
  ///
  /// Returns true if authentication successful, false otherwise
  Future<bool> authenticate({
    required String reason,
  }) async {
    try {
      return await _localAuth.authenticate(
        localizedReason: reason,
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: false, // Allow PIN/Pattern as fallback
          useErrorDialogs: true,
          sensitiveTransaction: true,
        ),
      );
    } on PlatformException catch (e) {
      debugPrint('[BiometricAuth] Authentication failed: ${e.message}');
      return false;
    } catch (e) {
      debugPrint('[BiometricAuth] Authentication error: ${e.runtimeType}');
      return false;
    }
  }

  /// Stop authentication
  Future<void> stopAuthentication() async {
    try {
      await _localAuth.stopAuthentication();
    } catch (e) {
      // Ignore errors
      debugPrint('[BiometricAuth] Error stopping auth: ${e.runtimeType}');
    }
  }
}
