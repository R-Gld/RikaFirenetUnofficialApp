// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationSettingsImpl _$$NotificationSettingsImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationSettingsImpl(
  enabled: json['enabled'] as bool? ?? false,
  mode:
      $enumDecodeNullable(_$NotificationModeEnumMap, json['mode']) ??
      NotificationMode.simple,
  pollingIntervalMinutes:
      (json['pollingIntervalMinutes'] as num?)?.toInt() ?? 30,
  watchedFields:
      (json['watchedFields'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  fieldThresholds: json['fieldThresholds'] as Map<String, dynamic>? ?? const {},
  lastNotificationTime: json['lastNotificationTime'] == null
      ? null
      : DateTime.parse(json['lastNotificationTime'] as String),
);

Map<String, dynamic> _$$NotificationSettingsImplToJson(
  _$NotificationSettingsImpl instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'mode': _$NotificationModeEnumMap[instance.mode]!,
  'pollingIntervalMinutes': instance.pollingIntervalMinutes,
  'watchedFields': instance.watchedFields,
  'fieldThresholds': instance.fieldThresholds,
  'lastNotificationTime': instance.lastNotificationTime?.toIso8601String(),
};

const _$NotificationModeEnumMap = {
  NotificationMode.simple: 'simple',
  NotificationMode.advanced: 'advanced',
};
