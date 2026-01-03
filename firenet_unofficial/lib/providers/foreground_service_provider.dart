import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/foreground_polling_service.dart';
import 'auth_providers.dart';
import 'notification_settings_provider.dart';

/// Provider for the foreground polling service instance
final foregroundPollingServiceProvider = Provider<ForegroundPollingService>((ref) {
  return ForegroundPollingService();
});

/// Provider that manages the foreground service lifecycle
///
/// Automatically starts the foreground service when:
/// - User is authenticated
/// - Notifications are enabled
///
/// Automatically stops the service when:
/// - User logs out
/// - Notifications are disabled
final foregroundServiceManagerProvider = Provider<void>((ref) {
  final authState = ref.watch(authStateProvider);
  final notificationSettings = ref.watch(notificationSettingsProvider);
  final service = ref.watch(foregroundPollingServiceProvider);

  // Determine if service should be running
  final shouldRun = authState.isAuthenticated &&
                    notificationSettings.whenOrNull(data: (settings) => settings.enabled) == true;

  // Start or stop service based on conditions
  if (shouldRun) {
    service.startPolling();
  } else {
    service.stopPolling();
  }

  // Cleanup on dispose
  ref.onDispose(() {
    service.stopPolling();
  });
});
