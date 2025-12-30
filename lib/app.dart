import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'providers/auth_providers.dart';
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

    return MaterialApp(
      title: 'Rika Firenet',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
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
