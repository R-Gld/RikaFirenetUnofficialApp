import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings.freezed.dart';
part 'app_settings.g.dart';

/// Application UI settings for customizing the interface
@freezed
class AppSettings with _$AppSettings {
  const factory AppSettings({
    // Advanced controls visibility
    @Default(true) bool showEcoMode,
    @Default(true) bool showRoomPowerRequest,
    @Default(true) bool showConvectionFans,
    @Default(true) bool showFrostProtection,
    @Default(true) bool showTemperatureOffset,
    @Default(true) bool showBakeTemperature,

    // Info panels visibility
    @Default(true) bool showErrorWarningPanel,
    @Default(true) bool showSafetyStatusPanel,
    @Default(true) bool showSensorInfoPanel,
    @Default(true) bool showOutputsInfoPanel,
    @Default(true) bool showStatisticsPanel,
  }) = _AppSettings;

  factory AppSettings.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsFromJson(json);
}
