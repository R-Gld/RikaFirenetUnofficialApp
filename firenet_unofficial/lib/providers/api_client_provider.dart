import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/datasources/rika_api_client.dart';
import '../data/datasources/html_parser_service.dart';

/// Provides singleton RikaApiClient
///
/// This is the main HTTP client for all Rika Firenet API requests
final rikaApiClientProvider = Provider<RikaApiClient>((ref) {
  return RikaApiClient();
});

/// Provides singleton HtmlParserService
///
/// This service parses HTML for stove discovery
final htmlParserServiceProvider = Provider<HtmlParserService>((ref) {
  return HtmlParserService();
});
