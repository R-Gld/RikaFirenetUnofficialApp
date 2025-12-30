// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stove_comparison_snapshot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoveComparisonSnapshotImpl _$$StoveComparisonSnapshotImplFromJson(
  Map<String, dynamic> json,
) => _$StoveComparisonSnapshotImpl(
  stoveId: json['stoveId'] as String,
  fieldValues: json['fieldValues'] as Map<String, dynamic>,
  capturedAt: DateTime.parse(json['capturedAt'] as String),
);

Map<String, dynamic> _$$StoveComparisonSnapshotImplToJson(
  _$StoveComparisonSnapshotImpl instance,
) => <String, dynamic>{
  'stoveId': instance.stoveId,
  'fieldValues': instance.fieldValues,
  'capturedAt': instance.capturedAt.toIso8601String(),
};
