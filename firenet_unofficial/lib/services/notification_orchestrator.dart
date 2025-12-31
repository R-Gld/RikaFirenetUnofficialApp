import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/notification_settings_provider.dart';
import '../providers/stove_providers.dart';
import 'background_polling_service.dart';

/// Orchestrates background notification tasks based on settings changes
///
/// This widget listens to notification settings and stove list changes,
/// and automatically registers/cancels background polling tasks accordingly.
class NotificationOrchestrator extends ConsumerStatefulWidget {
  final Widget child;

  const NotificationOrchestrator({
    required this.child,
    super.key,
  });

  @override
  ConsumerState<NotificationOrchestrator> createState() =>
      _NotificationOrchestratorState();
}

class _NotificationOrchestratorState
    extends ConsumerState<NotificationOrchestrator> {
  final _pollingService = BackgroundPollingService();

  // Track previous settings to detect changes
  bool? _wasEnabled;
  int? _previousInterval;

  @override
  void initState() {
    super.initState();
    // Initial setup will happen after first frame
  }

  @override
  Widget build(BuildContext context) {
    // Listen to notification settings changes
    ref.listen(notificationSettingsProvider, (previous, next) {
      // Schedule the handler to run after the current frame to avoid layout issues
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          _handleSettingsChange(previous, next);
        }
      });
    });

    return widget.child;
  }

  /// Handle notification settings changes
  Future<void> _handleSettingsChange(
    previous,
    next,
  ) async {
    final enabled = next.enabled;
    final interval = next.pollingIntervalMinutes;

    // First time initialization - just record state
    if (_wasEnabled == null) {
      _wasEnabled = enabled;
      _previousInterval = interval;

      // If already enabled on app start, register tasks
      if (enabled) {
        await _registerAllTasks(interval);
      }
      return;
    }

    // Handle enable/disable toggle
    if (enabled != _wasEnabled) {
      _wasEnabled = enabled;

      if (enabled) {
        // Notifications enabled - register tasks for all stoves
        await _registerAllTasks(interval);
      } else {
        // Notifications disabled - cancel all tasks
        debugPrint('[NotificationOrchestrator] Cancelling all background tasks');
        await _pollingService.cancelAllBackgroundTasks();
      }
      return;
    }

    // Handle interval change (while enabled)
    if (enabled && interval != _previousInterval) {
      _previousInterval = interval;
      debugPrint('[NotificationOrchestrator] Interval changed to $interval min, re-registering tasks');
      await _registerAllTasks(interval);
    }
  }

  /// Register background tasks for all stoves
  Future<void> _registerAllTasks(int intervalMinutes) async {
    try {
      // Get list of stoves
      final stoveListAsync = ref.read(stoveListProvider);

      stoveListAsync.when(
        data: (stoves) async {
          if (stoves.isEmpty) {
            debugPrint('[NotificationOrchestrator] No stoves found, skipping task registration');
            return;
          }

          final stoveIds = stoves.map((s) => s.id).toList();
          debugPrint('[NotificationOrchestrator] Registering tasks for ${stoveIds.length} stoves');

          await _pollingService.registerBackgroundTasks(
            stoveIds,
            intervalMinutes,
          );

          debugPrint('[NotificationOrchestrator] Background tasks registered successfully');
        },
        loading: () {
          debugPrint('[NotificationOrchestrator] Stove list loading, will retry on next settings change');
        },
        error: (error, stack) {
          debugPrint('[NotificationOrchestrator] Error getting stove list: $error');
        },
      );
    } catch (e) {
      debugPrint('[NotificationOrchestrator] Error registering tasks: $e');
    }
  }
}
