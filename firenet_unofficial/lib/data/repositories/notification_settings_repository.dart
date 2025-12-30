import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/notification_settings.dart';

/// Repository for persisting notification settings
class NotificationSettingsRepository {
  static const String _settingsKey = 'notification_settings';

  /// Load notification settings from SharedPreferences
  Future<NotificationSettings> loadSettings() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final settingsJson = prefs.getString(_settingsKey);

      if (settingsJson == null) {
        // Return default settings
        return const NotificationSettings();
      }

      final json = jsonDecode(settingsJson) as Map<String, dynamic>;
      return NotificationSettings.fromJson(json);
    } catch (e) {
      // On error, return default settings
      return const NotificationSettings();
    }
  }

  /// Save notification settings to SharedPreferences
  Future<void> saveSettings(NotificationSettings settings) async {
    final prefs = await SharedPreferences.getInstance();
    final settingsJson = jsonEncode(settings.toJson());
    await prefs.setString(_settingsKey, settingsJson);
  }

  /// Clear all notification settings
  Future<void> clearSettings() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_settingsKey);
  }
}
