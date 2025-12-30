import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_settings.freezed.dart';
part 'notification_settings.g.dart';

/// Settings for background notifications
///
/// Allows user to configure which stove sensor fields to watch
/// and how often to poll in the background
@freezed
class NotificationSettings with _$NotificationSettings {
  const factory NotificationSettings({
    /// Master switch to enable/disable all notifications
    @Default(false) bool enabled,

    /// Polling interval in minutes (15, 30, 45, 60)
    @Default(30) int pollingIntervalMinutes,

    /// List of sensor field names to watch for changes
    /// Example: ["statusMainState", "inputRoomTemperature", "statusError"]
    @Default([]) List<String> watchedFields,

    /// Optional thresholds for numeric fields
    /// Example: {"inputRoomTemperature": {"min": 18.0, "max": 24.0}}
    @Default({}) Map<String, dynamic> fieldThresholds,

    /// Last time a notification was sent (anti-spam)
    DateTime? lastNotificationTime,
  }) = _NotificationSettings;

  factory NotificationSettings.fromJson(Map<String, dynamic> json) =>
      _$NotificationSettingsFromJson(json);
}
