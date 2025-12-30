import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:path_provider/path_provider.dart';
import 'app.dart';
import 'data/datasources/rika_api_client.dart';
import 'providers/api_client_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize persistent cookie storage
  final appDocDir = await getApplicationDocumentsDirectory();
  final cookiePath = '${appDocDir.path}/.cookies';
  final cookieJar = PersistCookieJar(storage: FileStorage(cookiePath));

  // Create API client with persistent cookies
  final apiClient = RikaApiClient(cookieJar: cookieJar);

  runApp(
    ProviderScope(
      overrides: [
        rikaApiClientProvider.overrideWithValue(apiClient),
      ],
      child: const App(),
    ),
  );
}
