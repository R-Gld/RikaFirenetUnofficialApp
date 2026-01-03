import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../core/constants/api_constants.dart';
import 'stove_providers.dart';
import 'auth_providers.dart';

/// Configuration for polling behavior
class PollingConfig {
  final Duration interval;
  final bool enabled;

  const PollingConfig({
    required this.interval,
    this.enabled = true,
  });

  /// Foreground polling configuration (when app is in foreground - every 5 seconds)
  const PollingConfig.foreground()
      : interval = ApiConstants.foregroundPollingInterval,
        enabled = true;

  /// Continuous polling configuration (when screen is locked - every 5 minutes)
  const PollingConfig.continuous()
      : interval = ApiConstants.continuousPollingInterval,
        enabled = true;

  /// Background polling configuration (every 60 seconds)
  const PollingConfig.background()
      : interval = ApiConstants.backgroundPollingInterval,
        enabled = true;

  /// Disabled polling configuration
  const PollingConfig.disabled()
      : interval = ApiConstants.foregroundPollingInterval,
        enabled = false;
}

/// Manages polling configuration
///
/// Use this to switch between foreground/background/disabled polling
final pollingConfigProvider = StateProvider<PollingConfig>((ref) {
  return const PollingConfig.foreground();
});

/// Manages automatic polling for a stove
///
/// This is a family provider that creates a polling loop for each stove ID.
/// Usage: `ref.watch(stovePollingProvider('stove-id'))`
///
/// The polling will automatically:
/// - Start when the provider is first watched
/// - Stop when the provider is disposed
/// - Respect the polling configuration
/// - Only poll when authenticated
final stovePollingProvider = Provider.family<void, String>((ref, stoveId) {
  final config = ref.watch(pollingConfigProvider);
  final authState = ref.watch(authStateProvider);

  // Don't poll if disabled or not authenticated
  if (!config.enabled || !authState.isAuthenticated) {
    return;
  }

  Timer? timer;

  void poll() {
    // Use silent refresh to avoid showing loading state during background updates
    ref.read(stoveStateProvider(stoveId).notifier).refreshState(silent: true);
  }

  // Initial poll (silent to avoid disrupting UI if already loaded)
  poll();

  // Start periodic polling
  timer = Timer.periodic(config.interval, (_) => poll());

  // Cleanup on dispose
  ref.onDispose(() {
    timer?.cancel();
  });
});
