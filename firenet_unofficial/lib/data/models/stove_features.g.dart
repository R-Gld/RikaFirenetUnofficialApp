// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stove_features.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoveFeaturesImpl _$$StoveFeaturesImplFromJson(Map<String, dynamic> json) =>
    _$StoveFeaturesImpl(
      multiAir1: json['multiAir1'] as bool,
      multiAir2: json['multiAir2'] as bool,
      insertionMotor: json['insertionMotor'] as bool,
      airFlaps: json['airFlaps'] as bool,
      logRuntime: json['logRuntime'] as bool,
      bakeMode: json['bakeMode'] as bool,
    );

Map<String, dynamic> _$$StoveFeaturesImplToJson(_$StoveFeaturesImpl instance) =>
    <String, dynamic>{
      'multiAir1': instance.multiAir1,
      'multiAir2': instance.multiAir2,
      'insertionMotor': instance.insertionMotor,
      'airFlaps': instance.airFlaps,
      'logRuntime': instance.logRuntime,
      'bakeMode': instance.bakeMode,
    };
