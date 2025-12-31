import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

/// Service to handle notification permissions
class PermissionService {
  final FlutterLocalNotificationsPlugin _plugin =
      FlutterLocalNotificationsPlugin();

  /// Request notification permission on Android 13+
  ///
  /// Returns true if permission is granted, false otherwise
  Future<bool> requestNotificationPermission() async {
    // Permissions only needed on Android 13+ (API 33+)
    if (!Platform.isAndroid) {
      return true; // Not Android, assume granted
    }

    try {
      final androidPlugin = _plugin.resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>();

      if (androidPlugin == null) {
        debugPrint('[PermissionService] AndroidFlutterLocalNotificationsPlugin not available');
        return false;
      }

      // Request permission
      final bool? granted = await androidPlugin.requestNotificationsPermission();

      debugPrint('[PermissionService] Notification permission granted: $granted');

      return granted ?? false;
    } catch (e) {
      debugPrint('[PermissionService] Error requesting notification permission: ${e.runtimeType}');
      return false;
    }
  }

  /// Check if notification permission is granted
  ///
  /// Returns true if permission is granted, false otherwise
  Future<bool> areNotificationsEnabled() async {
    if (!Platform.isAndroid) {
      return true; // Not Android, assume granted
    }

    try {
      final androidPlugin = _plugin.resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>();

      if (androidPlugin == null) {
        return false;
      }

      final bool? granted = await androidPlugin.areNotificationsEnabled();
      return granted ?? false;
    } catch (e) {
      debugPrint('[PermissionService] Error checking notification permission: ${e.runtimeType}');
      return false;
    }
  }
}
