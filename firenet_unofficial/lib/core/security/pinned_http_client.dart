import 'dart:io';
import 'dart:typed_data';
import 'package:dio/io.dart';
import 'package:dio/dio.dart';
import 'certificate_pinning.dart';

/// HTTP client adapter with certificate pinning
///
/// Validates SSL certificates against pinned public key hashes
class PinnedHttpClientAdapter implements HttpClientAdapter {
  final IOHttpClientAdapter _adapter = IOHttpClientAdapter();

  @override
  void close({bool force = false}) {
    _adapter.close(force: force);
  }

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    // Configure the HTTP client with certificate pinning
    final httpClient = HttpClient();
    httpClient.badCertificateCallback = (X509Certificate cert, String host, int port) {
      return CertificatePinningValidator.validateCertificate(cert, host, port);
    };

    // Create a new adapter with our configured client
    final adapter = IOHttpClientAdapter(
      createHttpClient: () => httpClient,
    );

    try {
      return await adapter.fetch(options, requestStream, cancelFuture);
    } finally {
      adapter.close(force: true);
    }
  }
}
