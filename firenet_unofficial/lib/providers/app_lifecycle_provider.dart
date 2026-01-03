import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'polling_provider.dart';
import 'settings_provider.dart';

/// Tracks the app lifecycle state
final appLifecycleProvider = StateNotifierProvider<AppLifecycleNotifier, AppLifecycleState>((ref) {
  return AppLifecycleNotifier(ref);
});

/// Notifier that manages app lifecycle and adjusts polling accordingly
class AppLifecycleNotifier extends StateNotifier<AppLifecycleState> with WidgetsBindingObserver {
  final Ref _ref;

  AppLifecycleNotifier(this._ref) : super(AppLifecycleState.resumed) {
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState lifecycleState) {
    state = lifecycleState;

    // Adjust polling config based on lifecycle state
    if (lifecycleState == AppLifecycleState.resumed) {
      // App is in foreground and visible - use fast polling (5s)
      _ref.read(pollingConfigProvider.notifier).state = const PollingConfig.foreground();
      debugPrint('[AppLifecycle] App resumed - switching to foreground polling (5s)');
    } else if (lifecycleState == AppLifecycleState.paused ||
               lifecycleState == AppLifecycleState.inactive) {
      // App is in background or screen locked - use slow polling (5min) if continuous polling is enabled
      final settings = _ref.read(settingsProvider);
      if (settings.continuousPollingEnabled) {
        _ref.read(pollingConfigProvider.notifier).state = const PollingConfig.continuous();
        debugPrint('[AppLifecycle] App paused/inactive - switching to continuous polling (5min)');
      } else {
        // Disable polling if continuous polling is not enabled
        _ref.read(pollingConfigProvider.notifier).state = const PollingConfig.disabled();
        debugPrint('[AppLifecycle] App paused/inactive - disabling polling (continuous not enabled)');
      }
    }
  }
}
