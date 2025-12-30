import 'package:workmanager/workmanager.dart';
import 'package:flutter/foundation.dart';

/// Service to manage background polling tasks using WorkManager
class BackgroundPollingService {
  /// Unique task name prefix for each stove
  static String _getTaskName(String stoveId) => 'background_poll_$stoveId';

  /// Register background tasks for all stoves
  ///
  /// Creates one periodic task per stove ID
  Future<void> registerBackgroundTasks(
    List<String> stoveIds,
    int intervalMinutes,
  ) async {
    debugPrint('[BackgroundPollingService] Registering tasks for ${stoveIds.length} stoves, interval: ${intervalMinutes}min');

    for (final stoveId in stoveIds) {
      await registerSingleTask(stoveId, intervalMinutes);
    }
  }

  /// Register a single background task for one stove
  Future<void> registerSingleTask(
    String stoveId,
    int intervalMinutes,
  ) async {
    final taskName = _getTaskName(stoveId);

    debugPrint('[BackgroundPollingService] Registering task: $taskName');

    await Workmanager().registerPeriodicTask(
      taskName, // Unique task name
      taskName, // Task name used in callback
      frequency: Duration(minutes: intervalMinutes),
      initialDelay: Duration(seconds: 30), // Start after 30s
      constraints: Constraints(
        networkType: NetworkType.connected, // Require internet
      ),
      inputData: {
        'stoveId': stoveId,
      },
    );
  }

  /// Cancel all background tasks
  Future<void> cancelAllBackgroundTasks() async {
    debugPrint('[BackgroundPollingService] Cancelling all tasks');
    await Workmanager().cancelAll();
  }

  /// Cancel background task for a specific stove
  Future<void> cancelTask(String stoveId) async {
    final taskName = _getTaskName(stoveId);
    debugPrint('[BackgroundPollingService] Cancelling task: $taskName');
    await Workmanager().cancelByUniqueName(taskName);
  }
}
