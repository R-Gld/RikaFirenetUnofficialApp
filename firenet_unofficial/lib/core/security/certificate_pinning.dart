import 'dart:io';
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:flutter/foundation.dart';

/// SSL certificate pinning implementation
///
/// Validates server certificates against pinned public key hashes
/// to prevent MITM attacks
class CertificatePinningValidator {
  // SHA-256 hash of www.rika-firenet.com public key
  // Generated on 2025-12-31
  // Command: echo | openssl s_client -connect www.rika-firenet.com:443 -servername www.rika-firenet.com 2>/dev/null | \
  //          openssl x509 -pubkey -noout | openssl pkey -pubin -outform DER | \
  //          openssl dgst -sha256 -binary | openssl enc -base64
  static const List<String> _pinnedPublicKeyHashes = [
    'mAXiOaBzLsq4NP7qbVl62bHRXvzdVhKPxfHXAYMWAY4=',  // Current certificate (valid as of 2025-12-31)
    // Add backup/future key here when certificate rotation is planned
  ];

  static const String _pinnedHost = 'www.rika-firenet.com';

  /// Validates certificate chain against pinned keys
  /// Returns true if certificate is valid, false otherwise
  static bool validateCertificate(
    X509Certificate cert,
    String host,
    int port,
  ) {
    // Only pin for production host
    if (host != _pinnedHost) {
      return true; // Allow other hosts
    }

    // If pinning is not enabled (placeholder hash), bypass validation
    if (!isPinningEnabled) {
      if (kDebugMode) {
        debugPrint('[CertPin] Certificate pinning disabled (placeholder hash)');
      }
      return true;
    }

    // In debug mode, allow bypassing pinning (optional)
    if (kDebugMode) {
      debugPrint('[CertPin] Debug mode: Checking certificate for $host');
      // Uncomment to bypass pinning in debug mode:
      // return true;
    }

    try {
      // Extract public key DER bytes from certificate
      final publicKeyBytes = cert.der;

      // Compute SHA-256 hash
      final digest = sha256.convert(publicKeyBytes);
      final hash = base64.encode(digest.bytes);

      // Check against pinned hashes
      final isValid = _pinnedPublicKeyHashes.contains(hash);

      if (!isValid) {
        debugPrint('[CertPin] Certificate validation FAILED for $host');
        debugPrint('[CertPin] Expected one of: $_pinnedPublicKeyHashes');
        debugPrint('[CertPin] Received: $hash');
      } else if (kDebugMode) {
        debugPrint('[CertPin] Certificate validation SUCCESS for $host');
      }

      return isValid;
    } catch (e) {
      debugPrint('[CertPin] Error validating certificate: $e');
      return false;
    }
  }

  /// Checks if certificate pinning is enabled
  static bool get isPinningEnabled {
    return !_pinnedPublicKeyHashes.contains('PLACEHOLDER_HASH_UPDATE_WITH_REAL_CERTIFICATE_HASH');
  }
}
