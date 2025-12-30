// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppSettingsImpl _$$AppSettingsImplFromJson(Map<String, dynamic> json) =>
    _$AppSettingsImpl(
      themeMode:
          $enumDecodeNullable(_$AppThemeModeEnumMap, json['themeMode']) ??
          AppThemeMode.system,
      showEcoMode: json['showEcoMode'] as bool? ?? false,
      showRoomPowerRequest: json['showRoomPowerRequest'] as bool? ?? false,
      showConvectionFans: json['showConvectionFans'] as bool? ?? false,
      showFrostProtection: json['showFrostProtection'] as bool? ?? false,
      showTemperatureOffset: json['showTemperatureOffset'] as bool? ?? false,
      showBakeTemperature: json['showBakeTemperature'] as bool? ?? false,
      showErrorWarningPanel: json['showErrorWarningPanel'] as bool? ?? true,
      showSafetyStatusPanel: json['showSafetyStatusPanel'] as bool? ?? true,
      showSensorInfoPanel: json['showSensorInfoPanel'] as bool? ?? true,
      showOutputsInfoPanel: json['showOutputsInfoPanel'] as bool? ?? true,
      showStatisticsPanel: json['showStatisticsPanel'] as bool? ?? true,
    );

Map<String, dynamic> _$$AppSettingsImplToJson(_$AppSettingsImpl instance) =>
    <String, dynamic>{
      'themeMode': _$AppThemeModeEnumMap[instance.themeMode]!,
      'showEcoMode': instance.showEcoMode,
      'showRoomPowerRequest': instance.showRoomPowerRequest,
      'showConvectionFans': instance.showConvectionFans,
      'showFrostProtection': instance.showFrostProtection,
      'showTemperatureOffset': instance.showTemperatureOffset,
      'showBakeTemperature': instance.showBakeTemperature,
      'showErrorWarningPanel': instance.showErrorWarningPanel,
      'showSafetyStatusPanel': instance.showSafetyStatusPanel,
      'showSensorInfoPanel': instance.showSensorInfoPanel,
      'showOutputsInfoPanel': instance.showOutputsInfoPanel,
      'showStatisticsPanel': instance.showStatisticsPanel,
    };

const _$AppThemeModeEnumMap = {
  AppThemeMode.light: 'light',
  AppThemeMode.dark: 'dark',
  AppThemeMode.system: 'system',
};
