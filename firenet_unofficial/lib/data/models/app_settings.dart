import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings.freezed.dart';
part 'app_settings.g.dart';

/// Application UI settings for customizing the interface
@freezed
class AppSettings with _$AppSettings {
  const factory AppSettings({
    // Advanced controls visibility
    @Default(false) bool showEcoMode,
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
  }) = _AppSettings;

  factory AppSettings.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsFromJson(json);
}
