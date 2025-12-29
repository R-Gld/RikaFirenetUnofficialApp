// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stove_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StoveData _$StoveDataFromJson(Map<String, dynamic> json) {
  return _StoveData.fromJson(json);
}

/// @nodoc
mixin _$StoveData {
  String get name =>
      throw _privateConstructorUsedError; // User-defined stove name
  String get stoveID =>
      throw _privateConstructorUsedError; // Unique stove identifier
  int get lastSeenMinutes =>
      throw _privateConstructorUsedError; // Minutes since last communication (0 = online)
  int get lastConfirmedRevision =>
      throw _privateConstructorUsedError; // Last confirmed control revision timestamp
  StoveControls get controls => throw _privateConstructorUsedError;
  StoveSensors get sensors => throw _privateConstructorUsedError;
  String get stoveType =>
      throw _privateConstructorUsedError; // Stove model name (e.g., "PARO II")
  StoveFeatures get stoveFeatures => throw _privateConstructorUsedError;
  String get oem => throw _privateConstructorUsedError;

  /// Serializes this StoveData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoveData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoveDataCopyWith<StoveData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoveDataCopyWith<$Res> {
  factory $StoveDataCopyWith(StoveData value, $Res Function(StoveData) then) =
      _$StoveDataCopyWithImpl<$Res, StoveData>;
  @useResult
  $Res call({
    String name,
    String stoveID,
    int lastSeenMinutes,
    int lastConfirmedRevision,
    StoveControls controls,
    StoveSensors sensors,
    String stoveType,
    StoveFeatures stoveFeatures,
    String oem,
  });

  $StoveControlsCopyWith<$Res> get controls;
  $StoveSensorsCopyWith<$Res> get sensors;
  $StoveFeaturesCopyWith<$Res> get stoveFeatures;
}

/// @nodoc
class _$StoveDataCopyWithImpl<$Res, $Val extends StoveData>
    implements $StoveDataCopyWith<$Res> {
  _$StoveDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoveData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? stoveID = null,
    Object? lastSeenMinutes = null,
    Object? lastConfirmedRevision = null,
    Object? controls = null,
    Object? sensors = null,
    Object? stoveType = null,
    Object? stoveFeatures = null,
    Object? oem = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            stoveID: null == stoveID
                ? _value.stoveID
                : stoveID // ignore: cast_nullable_to_non_nullable
                      as String,
            lastSeenMinutes: null == lastSeenMinutes
                ? _value.lastSeenMinutes
                : lastSeenMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
            lastConfirmedRevision: null == lastConfirmedRevision
                ? _value.lastConfirmedRevision
                : lastConfirmedRevision // ignore: cast_nullable_to_non_nullable
                      as int,
            controls: null == controls
                ? _value.controls
                : controls // ignore: cast_nullable_to_non_nullable
                      as StoveControls,
            sensors: null == sensors
                ? _value.sensors
                : sensors // ignore: cast_nullable_to_non_nullable
                      as StoveSensors,
            stoveType: null == stoveType
                ? _value.stoveType
                : stoveType // ignore: cast_nullable_to_non_nullable
                      as String,
            stoveFeatures: null == stoveFeatures
                ? _value.stoveFeatures
                : stoveFeatures // ignore: cast_nullable_to_non_nullable
                      as StoveFeatures,
            oem: null == oem
                ? _value.oem
                : oem // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of StoveData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoveControlsCopyWith<$Res> get controls {
    return $StoveControlsCopyWith<$Res>(_value.controls, (value) {
      return _then(_value.copyWith(controls: value) as $Val);
    });
  }

  /// Create a copy of StoveData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoveSensorsCopyWith<$Res> get sensors {
    return $StoveSensorsCopyWith<$Res>(_value.sensors, (value) {
      return _then(_value.copyWith(sensors: value) as $Val);
    });
  }

  /// Create a copy of StoveData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoveFeaturesCopyWith<$Res> get stoveFeatures {
    return $StoveFeaturesCopyWith<$Res>(_value.stoveFeatures, (value) {
      return _then(_value.copyWith(stoveFeatures: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoveDataImplCopyWith<$Res>
    implements $StoveDataCopyWith<$Res> {
  factory _$$StoveDataImplCopyWith(
    _$StoveDataImpl value,
    $Res Function(_$StoveDataImpl) then,
  ) = __$$StoveDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    String stoveID,
    int lastSeenMinutes,
    int lastConfirmedRevision,
    StoveControls controls,
    StoveSensors sensors,
    String stoveType,
    StoveFeatures stoveFeatures,
    String oem,
  });

  @override
  $StoveControlsCopyWith<$Res> get controls;
  @override
  $StoveSensorsCopyWith<$Res> get sensors;
  @override
  $StoveFeaturesCopyWith<$Res> get stoveFeatures;
}

/// @nodoc
class __$$StoveDataImplCopyWithImpl<$Res>
    extends _$StoveDataCopyWithImpl<$Res, _$StoveDataImpl>
    implements _$$StoveDataImplCopyWith<$Res> {
  __$$StoveDataImplCopyWithImpl(
    _$StoveDataImpl _value,
    $Res Function(_$StoveDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StoveData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? stoveID = null,
    Object? lastSeenMinutes = null,
    Object? lastConfirmedRevision = null,
    Object? controls = null,
    Object? sensors = null,
    Object? stoveType = null,
    Object? stoveFeatures = null,
    Object? oem = null,
  }) {
    return _then(
      _$StoveDataImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        stoveID: null == stoveID
            ? _value.stoveID
            : stoveID // ignore: cast_nullable_to_non_nullable
                  as String,
        lastSeenMinutes: null == lastSeenMinutes
            ? _value.lastSeenMinutes
            : lastSeenMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
        lastConfirmedRevision: null == lastConfirmedRevision
            ? _value.lastConfirmedRevision
            : lastConfirmedRevision // ignore: cast_nullable_to_non_nullable
                  as int,
        controls: null == controls
            ? _value.controls
            : controls // ignore: cast_nullable_to_non_nullable
                  as StoveControls,
        sensors: null == sensors
            ? _value.sensors
            : sensors // ignore: cast_nullable_to_non_nullable
                  as StoveSensors,
        stoveType: null == stoveType
            ? _value.stoveType
            : stoveType // ignore: cast_nullable_to_non_nullable
                  as String,
        stoveFeatures: null == stoveFeatures
            ? _value.stoveFeatures
            : stoveFeatures // ignore: cast_nullable_to_non_nullable
                  as StoveFeatures,
        oem: null == oem
            ? _value.oem
            : oem // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StoveDataImpl extends _StoveData {
  const _$StoveDataImpl({
    required this.name,
    required this.stoveID,
    required this.lastSeenMinutes,
    required this.lastConfirmedRevision,
    required this.controls,
    required this.sensors,
    required this.stoveType,
    required this.stoveFeatures,
    required this.oem,
  }) : super._();

  factory _$StoveDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoveDataImplFromJson(json);

  @override
  final String name;
  // User-defined stove name
  @override
  final String stoveID;
  // Unique stove identifier
  @override
  final int lastSeenMinutes;
  // Minutes since last communication (0 = online)
  @override
  final int lastConfirmedRevision;
  // Last confirmed control revision timestamp
  @override
  final StoveControls controls;
  @override
  final StoveSensors sensors;
  @override
  final String stoveType;
  // Stove model name (e.g., "PARO II")
  @override
  final StoveFeatures stoveFeatures;
  @override
  final String oem;

  @override
  String toString() {
    return 'StoveData(name: $name, stoveID: $stoveID, lastSeenMinutes: $lastSeenMinutes, lastConfirmedRevision: $lastConfirmedRevision, controls: $controls, sensors: $sensors, stoveType: $stoveType, stoveFeatures: $stoveFeatures, oem: $oem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoveDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.stoveID, stoveID) || other.stoveID == stoveID) &&
            (identical(other.lastSeenMinutes, lastSeenMinutes) ||
                other.lastSeenMinutes == lastSeenMinutes) &&
            (identical(other.lastConfirmedRevision, lastConfirmedRevision) ||
                other.lastConfirmedRevision == lastConfirmedRevision) &&
            (identical(other.controls, controls) ||
                other.controls == controls) &&
            (identical(other.sensors, sensors) || other.sensors == sensors) &&
            (identical(other.stoveType, stoveType) ||
                other.stoveType == stoveType) &&
            (identical(other.stoveFeatures, stoveFeatures) ||
                other.stoveFeatures == stoveFeatures) &&
            (identical(other.oem, oem) || other.oem == oem));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    stoveID,
    lastSeenMinutes,
    lastConfirmedRevision,
    controls,
    sensors,
    stoveType,
    stoveFeatures,
    oem,
  );

  /// Create a copy of StoveData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoveDataImplCopyWith<_$StoveDataImpl> get copyWith =>
      __$$StoveDataImplCopyWithImpl<_$StoveDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoveDataImplToJson(this);
  }
}

abstract class _StoveData extends StoveData {
  const factory _StoveData({
    required final String name,
    required final String stoveID,
    required final int lastSeenMinutes,
    required final int lastConfirmedRevision,
    required final StoveControls controls,
    required final StoveSensors sensors,
    required final String stoveType,
    required final StoveFeatures stoveFeatures,
    required final String oem,
  }) = _$StoveDataImpl;
  const _StoveData._() : super._();

  factory _StoveData.fromJson(Map<String, dynamic> json) =
      _$StoveDataImpl.fromJson;

  @override
  String get name; // User-defined stove name
  @override
  String get stoveID; // Unique stove identifier
  @override
  int get lastSeenMinutes; // Minutes since last communication (0 = online)
  @override
  int get lastConfirmedRevision; // Last confirmed control revision timestamp
  @override
  StoveControls get controls;
  @override
  StoveSensors get sensors;
  @override
  String get stoveType; // Stove model name (e.g., "PARO II")
  @override
  StoveFeatures get stoveFeatures;
  @override
  String get oem;

  /// Create a copy of StoveData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoveDataImplCopyWith<_$StoveDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
