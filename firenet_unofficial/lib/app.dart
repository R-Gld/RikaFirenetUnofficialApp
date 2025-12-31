import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'l10n/app_localizations.dart';
import 'providers/auth_providers.dart';
import 'providers/settings_provider.dart';
import 'data/models/app_settings.dart';
import 'presentation/theme/app_theme.dart';
import 'presentation/screens/auth/login_screen.dart';
import 'presentation/screens/home/home_screen.dart';
import 'presentation/widgets/common/loading_indicator.dart';

/// Root application widget with authentication guard
class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);
    final settings = ref.watch(settingsProvider);

    // Determine theme mode
    ThemeMode themeMode;
    switch (settings.themeMode) {
      case AppThemeMode.light:
        themeMode = ThemeMode.light;
        break;
      case AppThemeMode.dark:
        themeMode = ThemeMode.dark;
        break;
      case AppThemeMode.system:
        themeMode = ThemeMode.system;
        break;
    }

    return MaterialApp(
      title: 'Rika Firenet',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      debugShowCheckedModeBanner: false,

      // Localization configuration
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('fr', ''),
        Locale('da', ''),
        Locale('de', ''),
        Locale('es', ''),
        Locale('it', ''),
        Locale('nl', ''),
      ],
      locale: settings.appLocale, // Use saved locale or null for system default

      home: authState.isLoading
          ? const Scaffold(
              body: LoadingIndicator(message: 'Chargement...'),
            )
          : authState.isAuthenticated
              ? const HomeScreen()
              : const LoginScreen(),
    );
  }
}
