import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_settings.freezed.dart';
part 'notification_settings.g.dart';

/// Notification mode determining what events trigger notifications
enum NotificationMode {
  /// Simple mode: Pre-defined notifications for important events only
  /// - Error/warning changes (door open, pellet lid, pressure, etc.)
  /// - Major state changes (ignition, running, off, cleaning, etc.)
  simple,

  /// Advanced mode: Custom field monitoring with thresholds
  /// - User selects which fields to watch
  /// - Optional min/max thresholds for numeric fields
  advanced,
}

/// Settings for background notifications
///
/// Supports two modes:
/// - Simple: Pre-defined important events (errors, state changes)
/// - Advanced: Custom field monitoring with thresholds
@freezed
class NotificationSettings with _$NotificationSettings {
  const factory NotificationSettings({
    /// Master switch to enable/disable all notifications
    @Default(false) bool enabled,

    /// Notification mode (simple or advanced)
    @Default(NotificationMode.simple) NotificationMode mode,

    /// Polling interval in minutes (15, 30, 45, 60)
    @Default(30) int pollingIntervalMinutes,

    /// List of sensor field names to watch for changes (advanced mode only)
    /// Example: ["statusMainState", "inputRoomTemperature", "statusError"]
    @Default([]) List<String> watchedFields,

    /// Optional thresholds for numeric fields (advanced mode only)
    /// Example: {"inputRoomTemperature": {"min": 18.0, "max": 24.0}}
    @Default({}) Map<String, dynamic> fieldThresholds,

    /// Last time a notification was sent (anti-spam)
    DateTime? lastNotificationTime,
  }) = _NotificationSettings;

  factory NotificationSettings.fromJson(Map<String, dynamic> json) =>
      _$NotificationSettingsFromJson(json);
}
