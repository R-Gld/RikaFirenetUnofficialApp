import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/models/notification_settings.dart';
import '../data/repositories/notification_settings_repository.dart';

/// Provides NotificationSettingsRepository
final notificationSettingsRepositoryProvider = Provider<NotificationSettingsRepository>((ref) {
  return NotificationSettingsRepository();
});

/// Provides notification settings state
final notificationSettingsProvider =
    StateNotifierProvider<NotificationSettingsNotifier, NotificationSettings>((ref) {
  return NotificationSettingsNotifier(
    repository: ref.watch(notificationSettingsRepositoryProvider),
  );
});

/// Manages notification settings state
class NotificationSettingsNotifier extends StateNotifier<NotificationSettings> {
  final NotificationSettingsRepository _repository;

  NotificationSettingsNotifier({required NotificationSettingsRepository repository})
      : _repository = repository,
        super(const NotificationSettings()) {
    _loadSettings();
  }

  /// Load settings from repository
  Future<void> _loadSettings() async {
    final settings = await _repository.loadSettings();
    state = settings;
  }

  /// Save current settings to repository
  Future<void> _saveSettings() async {
    await _repository.saveSettings(state);
  }

  /// Update settings with a transformer function
  Future<void> updateSetting(NotificationSettings Function(NotificationSettings) update) async {
    state = update(state);
    await _saveSettings();
  }

  /// Enable/disable notifications
  Future<void> setEnabled(bool enabled) async {
    state = state.copyWith(enabled: enabled);
    await _saveSettings();
  }

  /// Set polling interval in minutes
  Future<void> setPollingInterval(int minutes) async {
    state = state.copyWith(pollingIntervalMinutes: minutes);
    await _saveSettings();
  }

  /// Add a field to watch list
  Future<void> addWatchedField(String fieldName) async {
    if (!state.watchedFields.contains(fieldName)) {
      state = state.copyWith(
        watchedFields: [...state.watchedFields, fieldName],
      );
      await _saveSettings();
    }
  }

  /// Remove a field from watch list
  Future<void> removeWatchedField(String fieldName) async {
    state = state.copyWith(
      watchedFields: state.watchedFields.where((f) => f != fieldName).toList(),
    );
    await _saveSettings();
  }

  /// Set watched fields (replace all)
  Future<void> setWatchedFields(List<String> fields) async {
    state = state.copyWith(watchedFields: fields);
    await _saveSettings();
  }

  /// Set threshold for a field
  Future<void> setFieldThreshold(
    String fieldName,
    double min,
    double max,
  ) async {
    final thresholds = Map<String, dynamic>.from(state.fieldThresholds);
    thresholds[fieldName] = {'min': min, 'max': max};
    state = state.copyWith(fieldThresholds: thresholds);
    await _saveSettings();
  }

  /// Remove threshold for a field
  Future<void> removeFieldThreshold(String fieldName) async {
    final thresholds = Map<String, dynamic>.from(state.fieldThresholds);
    thresholds.remove(fieldName);
    state = state.copyWith(fieldThresholds: thresholds);
    await _saveSettings();
  }

  /// Reset to default settings
  Future<void> resetToDefaults() async {
    state = const NotificationSettings();
    await _saveSettings();
  }
}
