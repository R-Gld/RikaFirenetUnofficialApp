import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:workmanager/workmanager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:cookie_jar/cookie_jar.dart';
import '../data/datasources/rika_api_client.dart';
import '../data/models/auth_credentials.dart';
import '../data/models/stove_sensors.dart';
import '../data/models/stove_comparison_snapshot.dart';
import '../data/models/notification_settings.dart';
import '../data/models/stove_state.dart';
import '../data/repositories/notification_settings_repository.dart';
import '../data/repositories/notification_state_repository.dart';
import '../core/constants/storage_keys.dart';
import 'notification_change_detector.dart';
import 'notification_service.dart';
import 'stove_field_descriptor_service.dart';
import 'home_widget_service.dart';
import '../core/errors/exceptions.dart';

/// Background task callback - entry point for WorkManager
///
/// This function runs in a separate isolate and has no access to the main app context
@pragma('vm:entry-point')
void backgroundTaskCallback() {
  Workmanager().executeTask((task, inputData) async {
    try {
      debugPrint('[BG-WORKER] Starting task: $task');

      // Extract stoveId from input data
      final stoveId = inputData?['stoveId'] as String?;
      if (stoveId == null) {
        debugPrint('[BG-WORKER] ERROR: No stoveId in inputData');
        return false;
      }

      // Create task handler and execute
      final handler = BackgroundTaskHandler();
      final success = await handler.execute(stoveId);

      debugPrint('[BG-WORKER] Task completed: ${success ? "SUCCESS" : "FAILED"}');
      return success;
    } catch (e, stackTrace) {
      debugPrint('[BG-WORKER] ERROR: ${e.runtimeType}');
      if (kDebugMode) {
        debugPrint('[BG-WORKER] Stack trace: $stackTrace');
      }
      return false;
    }
  });
}

/// Handler for background polling task
class BackgroundTaskHandler {
  /// Execute background polling for a stove
  Future<bool> execute(String stoveId) async {
    try {
      // 1. Load notification settings
      debugPrint('[BG-WORKER] Loading notification settings');
      final settingsRepo = NotificationSettingsRepository();
      final settings = await settingsRepo.loadSettings();

      if (!settings.enabled) {
        debugPrint('[BG-WORKER] Notifications disabled, skipping');
        return true; // Not an error, just disabled
      }

      if (settings.watchedFields.isEmpty) {
        debugPrint('[BG-WORKER] No watched fields, skipping');
        return true;
      }

      // 2. Load credentials
      debugPrint('[BG-WORKER] Loading credentials');
      final credentials = await _loadCredentials();
      if (credentials == null) {
        debugPrint('[BG-WORKER] ERROR: No credentials found');
        await _sendAuthErrorNotification();
        return false;
      }

      // 3. Create API client
      debugPrint('[BG-WORKER] Creating API client');
      final apiClient = await _createApiClient();

      // 4. Fetch stove data
      debugPrint('[BG-WORKER] Fetching stove data for $stoveId');
      Map<String, dynamic> stoveData;
      try {
        stoveData = await apiClient.getStoveStatus(stoveId);
      } on SessionExpiredException {
        debugPrint('[BG-WORKER] Session expired, reauthenticating');
        // Try to reauthenticate
        try {
          await apiClient.authenticate(
            email: credentials.email,
            password: credentials.password,
          );
          // Retry fetch
          stoveData = await apiClient.getStoveStatus(stoveId);
        } catch (e) {
          debugPrint('[BG-WORKER] ERROR: Reauthentication failed: ${e.runtimeType}');
          await _sendAuthErrorNotification();
          return false;
        }
      }

      // 5. Parse sensors and full stove data
      final sensorsData = stoveData['sensors'] as Map<String, dynamic>;
      final sensors = StoveSensors.fromJson(sensorsData);

      // 5a. Update home widget with latest data
      try {
        final fullStoveData = StoveData.fromJson(stoveData);
        final widgetService = HomeWidgetService();
        await widgetService.updateWidget(fullStoveData);
        debugPrint('[BG-WORKER] Home widget updated');
      } catch (e) {
        debugPrint('[BG-WORKER] WARNING: Failed to update widget: ${e.runtimeType}');
        // Don't fail the whole task if widget update fails
      }

      // 6. Create current snapshot with only watched fields
      final currentSnapshot = _createSnapshot(stoveId, sensors, settings);

      // 7. Load previous snapshot
      debugPrint('[BG-WORKER] Loading previous snapshot');
      final stateRepo = NotificationStateRepository();
      final previousSnapshot = await stateRepo.getLastKnownState(stoveId);

      // 8. Detect changes
      debugPrint('[BG-WORKER] Detecting changes');
      final detector = NotificationChangeDetector();
      final stoveName = stoveData['name'] as String? ?? 'Poêle';
      final events = detector.detectChanges(
        previous: previousSnapshot,
        current: currentSnapshot,
        settings: settings,
        stoveName: stoveName,
      );

      debugPrint('[BG-WORKER] Detected ${events.length} changes');

      // 9. Send notifications if changes detected
      if (events.isNotEmpty) {
        debugPrint('[BG-WORKER] Sending notifications');
        final notificationService = NotificationService();
        await notificationService.initialize();

        if (events.length == 1) {
          await notificationService.sendNotification(events.first);
        } else {
          await notificationService.sendGroupedNotification(
            stoveId,
            stoveName,
            events,
          );
        }
      }

      // 10. Save current snapshot for next comparison
      debugPrint('[BG-WORKER] Saving current snapshot');
      await stateRepo.saveLastKnownState(stoveId, currentSnapshot);

      return true;
    } catch (e, stackTrace) {
      debugPrint('[BG-WORKER] ERROR in execute: ${e.runtimeType}');
      if (kDebugMode) {
        debugPrint('[BG-WORKER] Stack trace: $stackTrace');
      }
      return false;
    }
  }

  /// Load credentials from FlutterSecureStorage
  Future<AuthCredentials?> _loadCredentials() async {
    try {
      const storage = FlutterSecureStorage();
      final credentialsJson = await storage.read(key: StorageKeys.credentials);

      if (credentialsJson == null) {
        return null;
      }

      final json = jsonDecode(credentialsJson) as Map<String, dynamic>;
      return AuthCredentials.fromJson(json);
    } catch (e) {
      debugPrint('[BG-WORKER] ERROR loading credentials: ${e.runtimeType}');
      return null;
    }
  }

  /// Create RikaApiClient with persistent cookie jar
  Future<RikaApiClient> _createApiClient() async {
    final appDocDir = await getApplicationDocumentsDirectory();
    final cookiePath = '${appDocDir.path}/.cookies';
    final cookieJar = PersistCookieJar(storage: FileStorage(cookiePath));

    return RikaApiClient(cookieJar: cookieJar);
  }

  /// Create snapshot from sensors with only watched fields
  StoveComparisonSnapshot _createSnapshot(
    String stoveId,
    StoveSensors sensors,
    NotificationSettings settings,
  ) {
    final Map<String, dynamic> fieldValues = {};

    for (final fieldName in settings.watchedFields) {
      try {
        final value = StoveFieldDescriptorService.getFieldValue(sensors, fieldName);
        fieldValues[fieldName] = value;
      } catch (e) {
        debugPrint('[BG-WORKER] WARNING: Could not get value for field $fieldName: ${e.runtimeType}');
      }
    }

    return StoveComparisonSnapshot(
      stoveId: stoveId,
      fieldValues: fieldValues,
      capturedAt: DateTime.now(),
    );
  }

  /// Send notification when authentication fails
  Future<void> _sendAuthErrorNotification() async {
    try {
      final notificationService = NotificationService();
      await notificationService.initialize();
      await notificationService.sendAuthErrorNotification();
    } catch (e) {
      debugPrint('[BG-WORKER] ERROR sending auth error notification: ${e.runtimeType}');
    }
  }
}
