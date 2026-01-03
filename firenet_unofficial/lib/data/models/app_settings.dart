import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings.freezed.dart';
part 'app_settings.g.dart';

/// Theme mode options
enum AppThemeMode {
  @JsonValue('light')
  light,
  @JsonValue('dark')
  dark,
  @JsonValue('system')
  system,
}

/// Application UI settings for customizing the interface
@freezed
class AppSettings with _$AppSettings {
  const factory AppSettings({
    // Theme settings
    @Default(AppThemeMode.system) AppThemeMode themeMode,

    // Language settings (null = system default)
    @LocaleConverter() Locale? appLocale,

    // Advanced controls visibility
    @Default(true) bool showEcoMode,
    @Default(true) bool showHeatingSchedule,
    @Default(false) bool showRoomPowerRequest,
    @Default(false) bool showConvectionFans,
    @Default(false) bool showFrostProtection,
    @Default(false) bool showTemperatureOffset,
    @Default(false) bool showBakeTemperature,

    // Info panels visibility
    @Default(true) bool showErrorWarningPanel,
    @Default(true) bool showSafetyStatusPanel,
    @Default(true) bool showSensorInfoPanel,
    @Default(true) bool showOutputsInfoPanel,
    @Default(true) bool showStatisticsPanel,
    @Default(true) bool showChartsPanel,
  }) = _AppSettings;

  factory AppSettings.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsFromJson(json);
}

/// JSON converter for Locale
class LocaleConverter implements JsonConverter<Locale?, String?> {
  const LocaleConverter();

  @override
  Locale? fromJson(String? json) {
    if (json == null || json.isEmpty) return null;
    final parts = json.split('_');
    return Locale(parts[0], parts.length > 1 ? parts[1] : '');
  }

  @override
  String? toJson(Locale? object) {
    if (object == null) return null;
    return object.countryCode != null && object.countryCode!.isNotEmpty
        ? '${object.languageCode}_${object.countryCode}'
        : object.languageCode;
  }
}
