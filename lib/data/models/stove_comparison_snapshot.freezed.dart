// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stove_comparison_snapshot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StoveComparisonSnapshot _$StoveComparisonSnapshotFromJson(
  Map<String, dynamic> json,
) {
  return _StoveComparisonSnapshot.fromJson(json);
}

/// @nodoc
mixin _$StoveComparisonSnapshot {
  /// Stove ID
  String get stoveId => throw _privateConstructorUsedError;

  /// Map of field names to their values
  /// Example: {"statusMainState": 4, "inputRoomTemperature": 20.5}
  Map<String, dynamic> get fieldValues => throw _privateConstructorUsedError;

  /// When this snapshot was captured
  DateTime get capturedAt => throw _privateConstructorUsedError;

  /// Serializes this StoveComparisonSnapshot to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoveComparisonSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoveComparisonSnapshotCopyWith<StoveComparisonSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoveComparisonSnapshotCopyWith<$Res> {
  factory $StoveComparisonSnapshotCopyWith(
    StoveComparisonSnapshot value,
    $Res Function(StoveComparisonSnapshot) then,
  ) = _$StoveComparisonSnapshotCopyWithImpl<$Res, StoveComparisonSnapshot>;
  @useResult
  $Res call({
    String stoveId,
    Map<String, dynamic> fieldValues,
    DateTime capturedAt,
  });
}

/// @nodoc
class _$StoveComparisonSnapshotCopyWithImpl<
  $Res,
  $Val extends StoveComparisonSnapshot
>
    implements $StoveComparisonSnapshotCopyWith<$Res> {
  _$StoveComparisonSnapshotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoveComparisonSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stoveId = null,
    Object? fieldValues = null,
    Object? capturedAt = null,
  }) {
    return _then(
      _value.copyWith(
            stoveId: null == stoveId
                ? _value.stoveId
                : stoveId // ignore: cast_nullable_to_non_nullable
                      as String,
            fieldValues: null == fieldValues
                ? _value.fieldValues
                : fieldValues // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            capturedAt: null == capturedAt
                ? _value.capturedAt
                : capturedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StoveComparisonSnapshotImplCopyWith<$Res>
    implements $StoveComparisonSnapshotCopyWith<$Res> {
  factory _$$StoveComparisonSnapshotImplCopyWith(
    _$StoveComparisonSnapshotImpl value,
    $Res Function(_$StoveComparisonSnapshotImpl) then,
  ) = __$$StoveComparisonSnapshotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String stoveId,
    Map<String, dynamic> fieldValues,
    DateTime capturedAt,
  });
}

/// @nodoc
class __$$StoveComparisonSnapshotImplCopyWithImpl<$Res>
    extends
        _$StoveComparisonSnapshotCopyWithImpl<
          $Res,
          _$StoveComparisonSnapshotImpl
        >
    implements _$$StoveComparisonSnapshotImplCopyWith<$Res> {
  __$$StoveComparisonSnapshotImplCopyWithImpl(
    _$StoveComparisonSnapshotImpl _value,
    $Res Function(_$StoveComparisonSnapshotImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StoveComparisonSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stoveId = null,
    Object? fieldValues = null,
    Object? capturedAt = null,
  }) {
    return _then(
      _$StoveComparisonSnapshotImpl(
        stoveId: null == stoveId
            ? _value.stoveId
            : stoveId // ignore: cast_nullable_to_non_nullable
                  as String,
        fieldValues: null == fieldValues
            ? _value._fieldValues
            : fieldValues // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        capturedAt: null == capturedAt
            ? _value.capturedAt
            : capturedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StoveComparisonSnapshotImpl implements _StoveComparisonSnapshot {
  const _$StoveComparisonSnapshotImpl({
    required this.stoveId,
    required final Map<String, dynamic> fieldValues,
    required this.capturedAt,
  }) : _fieldValues = fieldValues;

  factory _$StoveComparisonSnapshotImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoveComparisonSnapshotImplFromJson(json);

  /// Stove ID
  @override
  final String stoveId;

  /// Map of field names to their values
  /// Example: {"statusMainState": 4, "inputRoomTemperature": 20.5}
  final Map<String, dynamic> _fieldValues;

  /// Map of field names to their values
  /// Example: {"statusMainState": 4, "inputRoomTemperature": 20.5}
  @override
  Map<String, dynamic> get fieldValues {
    if (_fieldValues is EqualUnmodifiableMapView) return _fieldValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_fieldValues);
  }

  /// When this snapshot was captured
  @override
  final DateTime capturedAt;

  @override
  String toString() {
    return 'StoveComparisonSnapshot(stoveId: $stoveId, fieldValues: $fieldValues, capturedAt: $capturedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoveComparisonSnapshotImpl &&
            (identical(other.stoveId, stoveId) || other.stoveId == stoveId) &&
            const DeepCollectionEquality().equals(
              other._fieldValues,
              _fieldValues,
            ) &&
            (identical(other.capturedAt, capturedAt) ||
                other.capturedAt == capturedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    stoveId,
    const DeepCollectionEquality().hash(_fieldValues),
    capturedAt,
  );

  /// Create a copy of StoveComparisonSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoveComparisonSnapshotImplCopyWith<_$StoveComparisonSnapshotImpl>
  get copyWith =>
      __$$StoveComparisonSnapshotImplCopyWithImpl<
        _$StoveComparisonSnapshotImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoveComparisonSnapshotImplToJson(this);
  }
}

abstract class _StoveComparisonSnapshot implements StoveComparisonSnapshot {
  const factory _StoveComparisonSnapshot({
    required final String stoveId,
    required final Map<String, dynamic> fieldValues,
    required final DateTime capturedAt,
  }) = _$StoveComparisonSnapshotImpl;

  factory _StoveComparisonSnapshot.fromJson(Map<String, dynamic> json) =
      _$StoveComparisonSnapshotImpl.fromJson;

  /// Stove ID
  @override
  String get stoveId;

  /// Map of field names to their values
  /// Example: {"statusMainState": 4, "inputRoomTemperature": 20.5}
  @override
  Map<String, dynamic> get fieldValues;

  /// When this snapshot was captured
  @override
  DateTime get capturedAt;

  /// Create a copy of StoveComparisonSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoveComparisonSnapshotImplCopyWith<_$StoveComparisonSnapshotImpl>
  get copyWith => throw _privateConstructorUsedError;
}
