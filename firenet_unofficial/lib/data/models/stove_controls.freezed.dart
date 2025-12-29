// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stove_controls.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StoveControls _$StoveControlsFromJson(Map<String, dynamic> json) {
  return _StoveControls.fromJson(json);
}

/// @nodoc
mixin _$StoveControls {
  bool get onOff => throw _privateConstructorUsedError;
  String get targetTemperature =>
      throw _privateConstructorUsedError; // CRITICAL: Must be STRING!
  double get setBackTemperature => throw _privateConstructorUsedError;
  double get operatingMode => throw _privateConstructorUsedError;
  bool get heatingTimesActiveForComfort => throw _privateConstructorUsedError;
  int get heatingPower => throw _privateConstructorUsedError;
  @JsonKey(name: 'RoomPowerRequest')
  int get roomPowerRequest => throw _privateConstructorUsedError;
  bool get convectionFan1Active => throw _privateConstructorUsedError;
  int get convectionFan1Level => throw _privateConstructorUsedError;
  int get convectionFan1Area => throw _privateConstructorUsedError;
  bool get convectionFan2Active => throw _privateConstructorUsedError;
  int get convectionFan2Level => throw _privateConstructorUsedError;
  int get convectionFan2Area => throw _privateConstructorUsedError;

  /// Serializes this StoveControls to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoveControls
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoveControlsCopyWith<StoveControls> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoveControlsCopyWith<$Res> {
  factory $StoveControlsCopyWith(
    StoveControls value,
    $Res Function(StoveControls) then,
  ) = _$StoveControlsCopyWithImpl<$Res, StoveControls>;
  @useResult
  $Res call({
    bool onOff,
    String targetTemperature,
    double setBackTemperature,
    double operatingMode,
    bool heatingTimesActiveForComfort,
    int heatingPower,
    @JsonKey(name: 'RoomPowerRequest') int roomPowerRequest,
    bool convectionFan1Active,
    int convectionFan1Level,
    int convectionFan1Area,
    bool convectionFan2Active,
    int convectionFan2Level,
    int convectionFan2Area,
  });
}

/// @nodoc
class _$StoveControlsCopyWithImpl<$Res, $Val extends StoveControls>
    implements $StoveControlsCopyWith<$Res> {
  _$StoveControlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoveControls
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onOff = null,
    Object? targetTemperature = null,
    Object? setBackTemperature = null,
    Object? operatingMode = null,
    Object? heatingTimesActiveForComfort = null,
    Object? heatingPower = null,
    Object? roomPowerRequest = null,
    Object? convectionFan1Active = null,
    Object? convectionFan1Level = null,
    Object? convectionFan1Area = null,
    Object? convectionFan2Active = null,
    Object? convectionFan2Level = null,
    Object? convectionFan2Area = null,
  }) {
    return _then(
      _value.copyWith(
            onOff: null == onOff
                ? _value.onOff
                : onOff // ignore: cast_nullable_to_non_nullable
                      as bool,
            targetTemperature: null == targetTemperature
                ? _value.targetTemperature
                : targetTemperature // ignore: cast_nullable_to_non_nullable
                      as String,
            setBackTemperature: null == setBackTemperature
                ? _value.setBackTemperature
                : setBackTemperature // ignore: cast_nullable_to_non_nullable
                      as double,
            operatingMode: null == operatingMode
                ? _value.operatingMode
                : operatingMode // ignore: cast_nullable_to_non_nullable
                      as double,
            heatingTimesActiveForComfort: null == heatingTimesActiveForComfort
                ? _value.heatingTimesActiveForComfort
                : heatingTimesActiveForComfort // ignore: cast_nullable_to_non_nullable
                      as bool,
            heatingPower: null == heatingPower
                ? _value.heatingPower
                : heatingPower // ignore: cast_nullable_to_non_nullable
                      as int,
            roomPowerRequest: null == roomPowerRequest
                ? _value.roomPowerRequest
                : roomPowerRequest // ignore: cast_nullable_to_non_nullable
                      as int,
            convectionFan1Active: null == convectionFan1Active
                ? _value.convectionFan1Active
                : convectionFan1Active // ignore: cast_nullable_to_non_nullable
                      as bool,
            convectionFan1Level: null == convectionFan1Level
                ? _value.convectionFan1Level
                : convectionFan1Level // ignore: cast_nullable_to_non_nullable
                      as int,
            convectionFan1Area: null == convectionFan1Area
                ? _value.convectionFan1Area
                : convectionFan1Area // ignore: cast_nullable_to_non_nullable
                      as int,
            convectionFan2Active: null == convectionFan2Active
                ? _value.convectionFan2Active
                : convectionFan2Active // ignore: cast_nullable_to_non_nullable
                      as bool,
            convectionFan2Level: null == convectionFan2Level
                ? _value.convectionFan2Level
                : convectionFan2Level // ignore: cast_nullable_to_non_nullable
                      as int,
            convectionFan2Area: null == convectionFan2Area
                ? _value.convectionFan2Area
                : convectionFan2Area // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StoveControlsImplCopyWith<$Res>
    implements $StoveControlsCopyWith<$Res> {
  factory _$$StoveControlsImplCopyWith(
    _$StoveControlsImpl value,
    $Res Function(_$StoveControlsImpl) then,
  ) = __$$StoveControlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool onOff,
    String targetTemperature,
    double setBackTemperature,
    double operatingMode,
    bool heatingTimesActiveForComfort,
    int heatingPower,
    @JsonKey(name: 'RoomPowerRequest') int roomPowerRequest,
    bool convectionFan1Active,
    int convectionFan1Level,
    int convectionFan1Area,
    bool convectionFan2Active,
    int convectionFan2Level,
    int convectionFan2Area,
  });
}

/// @nodoc
class __$$StoveControlsImplCopyWithImpl<$Res>
    extends _$StoveControlsCopyWithImpl<$Res, _$StoveControlsImpl>
    implements _$$StoveControlsImplCopyWith<$Res> {
  __$$StoveControlsImplCopyWithImpl(
    _$StoveControlsImpl _value,
    $Res Function(_$StoveControlsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StoveControls
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onOff = null,
    Object? targetTemperature = null,
    Object? setBackTemperature = null,
    Object? operatingMode = null,
    Object? heatingTimesActiveForComfort = null,
    Object? heatingPower = null,
    Object? roomPowerRequest = null,
    Object? convectionFan1Active = null,
    Object? convectionFan1Level = null,
    Object? convectionFan1Area = null,
    Object? convectionFan2Active = null,
    Object? convectionFan2Level = null,
    Object? convectionFan2Area = null,
  }) {
    return _then(
      _$StoveControlsImpl(
        onOff: null == onOff
            ? _value.onOff
            : onOff // ignore: cast_nullable_to_non_nullable
                  as bool,
        targetTemperature: null == targetTemperature
            ? _value.targetTemperature
            : targetTemperature // ignore: cast_nullable_to_non_nullable
                  as String,
        setBackTemperature: null == setBackTemperature
            ? _value.setBackTemperature
            : setBackTemperature // ignore: cast_nullable_to_non_nullable
                  as double,
        operatingMode: null == operatingMode
            ? _value.operatingMode
            : operatingMode // ignore: cast_nullable_to_non_nullable
                  as double,
        heatingTimesActiveForComfort: null == heatingTimesActiveForComfort
            ? _value.heatingTimesActiveForComfort
            : heatingTimesActiveForComfort // ignore: cast_nullable_to_non_nullable
                  as bool,
        heatingPower: null == heatingPower
            ? _value.heatingPower
            : heatingPower // ignore: cast_nullable_to_non_nullable
                  as int,
        roomPowerRequest: null == roomPowerRequest
            ? _value.roomPowerRequest
            : roomPowerRequest // ignore: cast_nullable_to_non_nullable
                  as int,
        convectionFan1Active: null == convectionFan1Active
            ? _value.convectionFan1Active
            : convectionFan1Active // ignore: cast_nullable_to_non_nullable
                  as bool,
        convectionFan1Level: null == convectionFan1Level
            ? _value.convectionFan1Level
            : convectionFan1Level // ignore: cast_nullable_to_non_nullable
                  as int,
        convectionFan1Area: null == convectionFan1Area
            ? _value.convectionFan1Area
            : convectionFan1Area // ignore: cast_nullable_to_non_nullable
                  as int,
        convectionFan2Active: null == convectionFan2Active
            ? _value.convectionFan2Active
            : convectionFan2Active // ignore: cast_nullable_to_non_nullable
                  as bool,
        convectionFan2Level: null == convectionFan2Level
            ? _value.convectionFan2Level
            : convectionFan2Level // ignore: cast_nullable_to_non_nullable
                  as int,
        convectionFan2Area: null == convectionFan2Area
            ? _value.convectionFan2Area
            : convectionFan2Area // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StoveControlsImpl extends _StoveControls {
  const _$StoveControlsImpl({
    required this.onOff,
    required this.targetTemperature,
    required this.setBackTemperature,
    required this.operatingMode,
    required this.heatingTimesActiveForComfort,
    required this.heatingPower,
    @JsonKey(name: 'RoomPowerRequest') required this.roomPowerRequest,
    required this.convectionFan1Active,
    required this.convectionFan1Level,
    required this.convectionFan1Area,
    required this.convectionFan2Active,
    required this.convectionFan2Level,
    required this.convectionFan2Area,
  }) : super._();

  factory _$StoveControlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoveControlsImplFromJson(json);

  @override
  final bool onOff;
  @override
  final String targetTemperature;
  // CRITICAL: Must be STRING!
  @override
  final double setBackTemperature;
  @override
  final double operatingMode;
  @override
  final bool heatingTimesActiveForComfort;
  @override
  final int heatingPower;
  @override
  @JsonKey(name: 'RoomPowerRequest')
  final int roomPowerRequest;
  @override
  final bool convectionFan1Active;
  @override
  final int convectionFan1Level;
  @override
  final int convectionFan1Area;
  @override
  final bool convectionFan2Active;
  @override
  final int convectionFan2Level;
  @override
  final int convectionFan2Area;

  @override
  String toString() {
    return 'StoveControls(onOff: $onOff, targetTemperature: $targetTemperature, setBackTemperature: $setBackTemperature, operatingMode: $operatingMode, heatingTimesActiveForComfort: $heatingTimesActiveForComfort, heatingPower: $heatingPower, roomPowerRequest: $roomPowerRequest, convectionFan1Active: $convectionFan1Active, convectionFan1Level: $convectionFan1Level, convectionFan1Area: $convectionFan1Area, convectionFan2Active: $convectionFan2Active, convectionFan2Level: $convectionFan2Level, convectionFan2Area: $convectionFan2Area)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoveControlsImpl &&
            (identical(other.onOff, onOff) || other.onOff == onOff) &&
            (identical(other.targetTemperature, targetTemperature) ||
                other.targetTemperature == targetTemperature) &&
            (identical(other.setBackTemperature, setBackTemperature) ||
                other.setBackTemperature == setBackTemperature) &&
            (identical(other.operatingMode, operatingMode) ||
                other.operatingMode == operatingMode) &&
            (identical(
                  other.heatingTimesActiveForComfort,
                  heatingTimesActiveForComfort,
                ) ||
                other.heatingTimesActiveForComfort ==
                    heatingTimesActiveForComfort) &&
            (identical(other.heatingPower, heatingPower) ||
                other.heatingPower == heatingPower) &&
            (identical(other.roomPowerRequest, roomPowerRequest) ||
                other.roomPowerRequest == roomPowerRequest) &&
            (identical(other.convectionFan1Active, convectionFan1Active) ||
                other.convectionFan1Active == convectionFan1Active) &&
            (identical(other.convectionFan1Level, convectionFan1Level) ||
                other.convectionFan1Level == convectionFan1Level) &&
            (identical(other.convectionFan1Area, convectionFan1Area) ||
                other.convectionFan1Area == convectionFan1Area) &&
            (identical(other.convectionFan2Active, convectionFan2Active) ||
                other.convectionFan2Active == convectionFan2Active) &&
            (identical(other.convectionFan2Level, convectionFan2Level) ||
                other.convectionFan2Level == convectionFan2Level) &&
            (identical(other.convectionFan2Area, convectionFan2Area) ||
                other.convectionFan2Area == convectionFan2Area));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    onOff,
    targetTemperature,
    setBackTemperature,
    operatingMode,
    heatingTimesActiveForComfort,
    heatingPower,
    roomPowerRequest,
    convectionFan1Active,
    convectionFan1Level,
    convectionFan1Area,
    convectionFan2Active,
    convectionFan2Level,
    convectionFan2Area,
  );

  /// Create a copy of StoveControls
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoveControlsImplCopyWith<_$StoveControlsImpl> get copyWith =>
      __$$StoveControlsImplCopyWithImpl<_$StoveControlsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoveControlsImplToJson(this);
  }
}

abstract class _StoveControls extends StoveControls {
  const factory _StoveControls({
    required final bool onOff,
    required final String targetTemperature,
    required final double setBackTemperature,
    required final double operatingMode,
    required final bool heatingTimesActiveForComfort,
    required final int heatingPower,
    @JsonKey(name: 'RoomPowerRequest') required final int roomPowerRequest,
    required final bool convectionFan1Active,
    required final int convectionFan1Level,
    required final int convectionFan1Area,
    required final bool convectionFan2Active,
    required final int convectionFan2Level,
    required final int convectionFan2Area,
  }) = _$StoveControlsImpl;
  const _StoveControls._() : super._();

  factory _StoveControls.fromJson(Map<String, dynamic> json) =
      _$StoveControlsImpl.fromJson;

  @override
  bool get onOff;
  @override
  String get targetTemperature; // CRITICAL: Must be STRING!
  @override
  double get setBackTemperature;
  @override
  double get operatingMode;
  @override
  bool get heatingTimesActiveForComfort;
  @override
  int get heatingPower;
  @override
  @JsonKey(name: 'RoomPowerRequest')
  int get roomPowerRequest;
  @override
  bool get convectionFan1Active;
  @override
  int get convectionFan1Level;
  @override
  int get convectionFan1Area;
  @override
  bool get convectionFan2Active;
  @override
  int get convectionFan2Level;
  @override
  int get convectionFan2Area;

  /// Create a copy of StoveControls
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoveControlsImplCopyWith<_$StoveControlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
