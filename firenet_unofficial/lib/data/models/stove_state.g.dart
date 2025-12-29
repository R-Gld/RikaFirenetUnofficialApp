// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stove_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoveStateImpl _$$StoveStateImplFromJson(Map<String, dynamic> json) =>
    _$StoveStateImpl(
      controls: StoveControls.fromJson(
        json['controls'] as Map<String, dynamic>,
      ),
      sensors: StoveSensors.fromJson(json['sensors'] as Map<String, dynamic>),
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$$StoveStateImplToJson(_$StoveStateImpl instance) =>
    <String, dynamic>{
      'controls': instance.controls,
      'sensors': instance.sensors,
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
    };
