import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/models/app_settings.dart';

const _settingsKey = 'app_settings';

/// Provider for application settings
final settingsProvider = StateNotifierProvider<SettingsNotifier, AppSettings>((ref) {
  return SettingsNotifier();
});

class SettingsNotifier extends StateNotifier<AppSettings> {
  SettingsNotifier() : super(const AppSettings()) {
    _loadSettings();
  }

  /// Load settings from shared preferences
  Future<void> _loadSettings() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final settingsJson = prefs.getString(_settingsKey);

      if (settingsJson != null) {
        final json = jsonDecode(settingsJson) as Map<String, dynamic>;
        state = AppSettings.fromJson(json);
      }
    } catch (e) {
      // If loading fails, keep default settings
      state = const AppSettings();
    }
  }

  /// Save settings to shared preferences
  Future<void> _saveSettings() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final settingsJson = jsonEncode(state.toJson());
      await prefs.setString(_settingsKey, settingsJson);
    } catch (e) {
      // Ignore save errors
    }
  }

  /// Update a specific setting
  Future<void> updateSetting(AppSettings Function(AppSettings) update) async {
    state = update(state);
    await _saveSettings();
  }

  /// Reset all settings to default
  Future<void> resetToDefaults() async {
    state = const AppSettings();
    await _saveSettings();
  }
}
