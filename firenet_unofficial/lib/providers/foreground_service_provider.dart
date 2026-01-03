import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/foreground_polling_service.dart';
import '../services/battery_optimization_service.dart';
import 'auth_providers.dart';
import 'settings_provider.dart';

/// Provider for the foreground polling service instance
final foregroundPollingServiceProvider = Provider<ForegroundPollingService>((ref) {
  return ForegroundPollingService();
});

/// Provider for the battery optimization service instance
final batteryOptimizationServiceProvider = Provider<BatteryOptimizationService>((ref) {
  return BatteryOptimizationService();
});

/// State notifier for managing foreground service
class ForegroundServiceManager extends StateNotifier<bool> {
  final Ref _ref;
  bool _isInitialized = false;

  ForegroundServiceManager(this._ref) : super(false) {
    _initialize();
  }

  Future<void> _initialize() async {
    if (!Platform.isAndroid || _isInitialized) return;
    _isInitialized = true;

    // Listen to auth and settings changes
    _ref.listen(authStateProvider, (_, __) => _updateService());
    _ref.listen(settingsProvider, (_, __) => _updateService());

    // Initial update
    await _updateService();
  }

  Future<void> _updateService() async {
    if (!Platform.isAndroid) return;

    final authState = _ref.read(authStateProvider);
    final settings = _ref.read(settingsProvider);
    final service = _ref.read(foregroundPollingServiceProvider);
    final batteryService = _ref.read(batteryOptimizationServiceProvider);

    // Check if continuous polling is enabled in settings
    final pollingEnabled = settings.continuousPollingEnabled;

    // Check battery optimization status
    final batteryOptDisabled = await batteryService.isBatteryOptimizationDisabled();

    // If polling is enabled but battery optimization is active, disable polling
    if (pollingEnabled && !batteryOptDisabled) {
      // Auto-disable continuous polling
      _ref.read(settingsProvider.notifier).updateSetting(
        (s) => s.copyWith(continuousPollingEnabled: false),
      );
      await service.stopPolling();
      state = false;
      return;
    }

    // Determine if service should be running
    final shouldRun = authState.isAuthenticated && pollingEnabled && batteryOptDisabled;

    // Start or stop service based on conditions
    if (shouldRun && !state) {
      await service.startPolling();
      state = true;
    } else if (!shouldRun && state) {
      await service.stopPolling();
      state = false;
    }
  }

  @override
  void dispose() {
    if (Platform.isAndroid && state) {
      _ref.read(foregroundPollingServiceProvider).stopPolling();
    }
    super.dispose();
  }
}

/// Provider that manages the foreground service lifecycle
///
/// Automatically starts the foreground service when:
/// - User is authenticated
/// - Continuous polling is enabled in settings
/// - Battery optimization is disabled (Android only)
///
/// Automatically stops the service when:
/// - User logs out
/// - Continuous polling is disabled
/// - Battery optimization is re-enabled (with auto-disable of setting)
final foregroundServiceManagerProvider = StateNotifierProvider<ForegroundServiceManager, bool>((ref) {
  return ForegroundServiceManager(ref);
});
