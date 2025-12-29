// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stove_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoveDataImpl _$$StoveDataImplFromJson(Map<String, dynamic> json) =>
    _$StoveDataImpl(
      name: json['name'] as String,
      stoveID: json['stoveID'] as String,
      lastSeenMinutes: (json['lastSeenMinutes'] as num).toInt(),
      lastConfirmedRevision: (json['lastConfirmedRevision'] as num).toInt(),
      controls: StoveControls.fromJson(
        json['controls'] as Map<String, dynamic>,
      ),
      sensors: StoveSensors.fromJson(json['sensors'] as Map<String, dynamic>),
      stoveType: json['stoveType'] as String,
      stoveFeatures: StoveFeatures.fromJson(
        json['stoveFeatures'] as Map<String, dynamic>,
      ),
      oem: json['oem'] as String,
    );

Map<String, dynamic> _$$StoveDataImplToJson(_$StoveDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'stoveID': instance.stoveID,
      'lastSeenMinutes': instance.lastSeenMinutes,
      'lastConfirmedRevision': instance.lastConfirmedRevision,
      'controls': instance.controls,
      'sensors': instance.sensors,
      'stoveType': instance.stoveType,
      'stoveFeatures': instance.stoveFeatures,
      'oem': instance.oem,
    };
