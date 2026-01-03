import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// Service to manage foreground polling for Android
///
/// On Android, this starts a foreground service with a persistent notification
/// to keep network access alive even when screen is locked.
/// On iOS/other platforms, falls back to WorkManager periodic tasks.
class ForegroundPollingService {
  static const _platform = MethodChannel('fr.rgld.firenet/polling_service');

  /// Start foreground polling service
  ///
  /// On Android: Starts a foreground service with notification
  /// On other platforms: No-op (uses WorkManager instead)
  Future<bool> startPolling() async {
    if (!Platform.isAndroid) {
      debugPrint('[ForegroundPollingService] Not Android, skipping foreground service');
      return false;
    }

    try {
      debugPrint('[ForegroundPollingService] Starting foreground service');
      await _platform.invokeMethod('startForegroundService');
      debugPrint('[ForegroundPollingService] ✅ Foreground service started');
      return true;
    } on PlatformException catch (e) {
      debugPrint('[ForegroundPollingService] ❌ Failed to start: ${e.message}');
      return false;
    }
  }

  /// Stop foreground polling service
  Future<bool> stopPolling() async {
    if (!Platform.isAndroid) {
      return false;
    }

    try {
      debugPrint('[ForegroundPollingService] Stopping foreground service');
      await _platform.invokeMethod('stopForegroundService');
      debugPrint('[ForegroundPollingService] ✅ Foreground service stopped');
      return true;
    } on PlatformException catch (e) {
      debugPrint('[ForegroundPollingService] ❌ Failed to stop: ${e.message}');
      return false;
    }
  }

  /// Check if foreground service is running
  Future<bool> isRunning() async {
    if (!Platform.isAndroid) {
      return false;
    }

    try {
      final result = await _platform.invokeMethod<bool>('isServiceRunning');
      return result ?? false;
    } on PlatformException catch (e) {
      debugPrint('[ForegroundPollingService] Failed to check status: ${e.message}');
      return false;
    }
  }
}
