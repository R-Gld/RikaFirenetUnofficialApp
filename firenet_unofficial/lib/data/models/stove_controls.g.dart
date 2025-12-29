// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stove_controls.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoveControlsImpl _$$StoveControlsImplFromJson(Map<String, dynamic> json) =>
    _$StoveControlsImpl(
      onOff: json['onOff'] as bool,
      targetTemperature: json['targetTemperature'] as String,
      setBackTemperature: (json['setBackTemperature'] as num).toDouble(),
      operatingMode: (json['operatingMode'] as num).toDouble(),
      heatingTimesActiveForComfort:
          json['heatingTimesActiveForComfort'] as bool,
      heatingPower: (json['heatingPower'] as num).toInt(),
      roomPowerRequest: (json['RoomPowerRequest'] as num).toInt(),
      convectionFan1Active: json['convectionFan1Active'] as bool,
      convectionFan1Level: (json['convectionFan1Level'] as num).toInt(),
      convectionFan1Area: (json['convectionFan1Area'] as num).toInt(),
      convectionFan2Active: json['convectionFan2Active'] as bool,
      convectionFan2Level: (json['convectionFan2Level'] as num).toInt(),
      convectionFan2Area: (json['convectionFan2Area'] as num).toInt(),
    );

Map<String, dynamic> _$$StoveControlsImplToJson(_$StoveControlsImpl instance) =>
    <String, dynamic>{
      'onOff': instance.onOff,
      'targetTemperature': instance.targetTemperature,
      'setBackTemperature': instance.setBackTemperature,
      'operatingMode': instance.operatingMode,
      'heatingTimesActiveForComfort': instance.heatingTimesActiveForComfort,
      'heatingPower': instance.heatingPower,
      'RoomPowerRequest': instance.roomPowerRequest,
      'convectionFan1Active': instance.convectionFan1Active,
      'convectionFan1Level': instance.convectionFan1Level,
      'convectionFan1Area': instance.convectionFan1Area,
      'convectionFan2Active': instance.convectionFan2Active,
      'convectionFan2Level': instance.convectionFan2Level,
      'convectionFan2Area': instance.convectionFan2Area,
    };
