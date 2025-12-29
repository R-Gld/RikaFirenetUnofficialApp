// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stove_sensors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoveSensorsImpl _$$StoveSensorsImplFromJson(Map<String, dynamic> json) =>
    _$StoveSensorsImpl(
      inputRoomTemperature: (json['inputRoomTemperature'] as num).toDouble(),
      inputFlameTemperature: (json['inputFlameTemperature'] as num).toDouble(),
      parameterFeedRateTotal: (json['parameterFeedRateTotal'] as num)
          .toDouble(),
      parameterRuntimePellets: (json['parameterRuntimePellets'] as num).toInt(),
      statusMainState: (json['statusMainState'] as num).toInt(),
      statusSubState: (json['statusSubState'] as num).toInt(),
      statusFrostStarted: json['statusFrostStarted'] as bool,
    );

Map<String, dynamic> _$$StoveSensorsImplToJson(_$StoveSensorsImpl instance) =>
    <String, dynamic>{
      'inputRoomTemperature': instance.inputRoomTemperature,
      'inputFlameTemperature': instance.inputFlameTemperature,
      'parameterFeedRateTotal': instance.parameterFeedRateTotal,
      'parameterRuntimePellets': instance.parameterRuntimePellets,
      'statusMainState': instance.statusMainState,
      'statusSubState': instance.statusSubState,
      'statusFrostStarted': instance.statusFrostStarted,
    };
