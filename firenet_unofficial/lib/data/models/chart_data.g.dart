// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TemperatureDataPointImpl _$$TemperatureDataPointImplFromJson(
  Map<String, dynamic> json,
) => _$TemperatureDataPointImpl(
  timestamp: DateTime.parse(json['timestamp'] as String),
  roomTemperature: (json['roomTemperature'] as num).toDouble(),
  targetTemperature: (json['targetTemperature'] as num).toDouble(),
  flameTemperature: (json['flameTemperature'] as num).toInt(),
  mainState: (json['mainState'] as num).toInt(),
);

Map<String, dynamic> _$$TemperatureDataPointImplToJson(
  _$TemperatureDataPointImpl instance,
) => <String, dynamic>{
  'timestamp': instance.timestamp.toIso8601String(),
  'roomTemperature': instance.roomTemperature,
  'targetTemperature': instance.targetTemperature,
  'flameTemperature': instance.flameTemperature,
  'mainState': instance.mainState,
};

_$ConsumptionDataPointImpl _$$ConsumptionDataPointImplFromJson(
  Map<String, dynamic> json,
) => _$ConsumptionDataPointImpl(
  date: DateTime.parse(json['date'] as String),
  pelletConsumptionKg: (json['pelletConsumptionKg'] as num).toDouble(),
  runtimeMinutes: (json['runtimeMinutes'] as num).toInt(),
  ignitionCount: (json['ignitionCount'] as num).toInt(),
);

Map<String, dynamic> _$$ConsumptionDataPointImplToJson(
  _$ConsumptionDataPointImpl instance,
) => <String, dynamic>{
  'date': instance.date.toIso8601String(),
  'pelletConsumptionKg': instance.pelletConsumptionKg,
  'runtimeMinutes': instance.runtimeMinutes,
  'ignitionCount': instance.ignitionCount,
};

_$StateTransitionDataPointImpl _$$StateTransitionDataPointImplFromJson(
  Map<String, dynamic> json,
) => _$StateTransitionDataPointImpl(
  timestamp: DateTime.parse(json['timestamp'] as String),
  fromState: (json['fromState'] as num).toInt(),
  toState: (json['toState'] as num).toInt(),
  durationSeconds: (json['durationSeconds'] as num).toInt(),
);

Map<String, dynamic> _$$StateTransitionDataPointImplToJson(
  _$StateTransitionDataPointImpl instance,
) => <String, dynamic>{
  'timestamp': instance.timestamp.toIso8601String(),
  'fromState': instance.fromState,
  'toState': instance.toState,
  'durationSeconds': instance.durationSeconds,
};
