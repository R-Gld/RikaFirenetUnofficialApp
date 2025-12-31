import 'dart:io';
import 'package:dio/io.dart';
import 'certificate_pinning.dart';

/// HTTP client adapter with certificate pinning
///
/// Validates SSL certificates against pinned public key hashes
class PinnedHttpClientAdapter extends IOHttpClientAdapter {
  PinnedHttpClientAdapter() {
    onHttpClientCreate = (HttpClient client) {
      client.badCertificateCallback = (X509Certificate cert, String host, int port) {
        return CertificatePinningValidator.validateCertificate(cert, host, port);
      };
      return client;
    };
  }
}
