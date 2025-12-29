// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stove_sensors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StoveSensors _$StoveSensorsFromJson(Map<String, dynamic> json) {
  return _StoveSensors.fromJson(json);
}

/// @nodoc
mixin _$StoveSensors {
  double get inputRoomTemperature => throw _privateConstructorUsedError;
  double get inputFlameTemperature => throw _privateConstructorUsedError;
  double get parameterFeedRateTotal => throw _privateConstructorUsedError;
  int get parameterRuntimePellets => throw _privateConstructorUsedError;
  int get statusMainState => throw _privateConstructorUsedError;
  int get statusSubState => throw _privateConstructorUsedError;
  bool get statusFrostStarted => throw _privateConstructorUsedError;

  /// Serializes this StoveSensors to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoveSensors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoveSensorsCopyWith<StoveSensors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoveSensorsCopyWith<$Res> {
  factory $StoveSensorsCopyWith(
    StoveSensors value,
    $Res Function(StoveSensors) then,
  ) = _$StoveSensorsCopyWithImpl<$Res, StoveSensors>;
  @useResult
  $Res call({
    double inputRoomTemperature,
    double inputFlameTemperature,
    double parameterFeedRateTotal,
    int parameterRuntimePellets,
    int statusMainState,
    int statusSubState,
    bool statusFrostStarted,
  });
}

/// @nodoc
class _$StoveSensorsCopyWithImpl<$Res, $Val extends StoveSensors>
    implements $StoveSensorsCopyWith<$Res> {
  _$StoveSensorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoveSensors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputRoomTemperature = null,
    Object? inputFlameTemperature = null,
    Object? parameterFeedRateTotal = null,
    Object? parameterRuntimePellets = null,
    Object? statusMainState = null,
    Object? statusSubState = null,
    Object? statusFrostStarted = null,
  }) {
    return _then(
      _value.copyWith(
            inputRoomTemperature: null == inputRoomTemperature
                ? _value.inputRoomTemperature
                : inputRoomTemperature // ignore: cast_nullable_to_non_nullable
                      as double,
            inputFlameTemperature: null == inputFlameTemperature
                ? _value.inputFlameTemperature
                : inputFlameTemperature // ignore: cast_nullable_to_non_nullable
                      as double,
            parameterFeedRateTotal: null == parameterFeedRateTotal
                ? _value.parameterFeedRateTotal
                : parameterFeedRateTotal // ignore: cast_nullable_to_non_nullable
                      as double,
            parameterRuntimePellets: null == parameterRuntimePellets
                ? _value.parameterRuntimePellets
                : parameterRuntimePellets // ignore: cast_nullable_to_non_nullable
                      as int,
            statusMainState: null == statusMainState
                ? _value.statusMainState
                : statusMainState // ignore: cast_nullable_to_non_nullable
                      as int,
            statusSubState: null == statusSubState
                ? _value.statusSubState
                : statusSubState // ignore: cast_nullable_to_non_nullable
                      as int,
            statusFrostStarted: null == statusFrostStarted
                ? _value.statusFrostStarted
                : statusFrostStarted // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StoveSensorsImplCopyWith<$Res>
    implements $StoveSensorsCopyWith<$Res> {
  factory _$$StoveSensorsImplCopyWith(
    _$StoveSensorsImpl value,
    $Res Function(_$StoveSensorsImpl) then,
  ) = __$$StoveSensorsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double inputRoomTemperature,
    double inputFlameTemperature,
    double parameterFeedRateTotal,
    int parameterRuntimePellets,
    int statusMainState,
    int statusSubState,
    bool statusFrostStarted,
  });
}

/// @nodoc
class __$$StoveSensorsImplCopyWithImpl<$Res>
    extends _$StoveSensorsCopyWithImpl<$Res, _$StoveSensorsImpl>
    implements _$$StoveSensorsImplCopyWith<$Res> {
  __$$StoveSensorsImplCopyWithImpl(
    _$StoveSensorsImpl _value,
    $Res Function(_$StoveSensorsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StoveSensors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputRoomTemperature = null,
    Object? inputFlameTemperature = null,
    Object? parameterFeedRateTotal = null,
    Object? parameterRuntimePellets = null,
    Object? statusMainState = null,
    Object? statusSubState = null,
    Object? statusFrostStarted = null,
  }) {
    return _then(
      _$StoveSensorsImpl(
        inputRoomTemperature: null == inputRoomTemperature
            ? _value.inputRoomTemperature
            : inputRoomTemperature // ignore: cast_nullable_to_non_nullable
                  as double,
        inputFlameTemperature: null == inputFlameTemperature
            ? _value.inputFlameTemperature
            : inputFlameTemperature // ignore: cast_nullable_to_non_nullable
                  as double,
        parameterFeedRateTotal: null == parameterFeedRateTotal
            ? _value.parameterFeedRateTotal
            : parameterFeedRateTotal // ignore: cast_nullable_to_non_nullable
                  as double,
        parameterRuntimePellets: null == parameterRuntimePellets
            ? _value.parameterRuntimePellets
            : parameterRuntimePellets // ignore: cast_nullable_to_non_nullable
                  as int,
        statusMainState: null == statusMainState
            ? _value.statusMainState
            : statusMainState // ignore: cast_nullable_to_non_nullable
                  as int,
        statusSubState: null == statusSubState
            ? _value.statusSubState
            : statusSubState // ignore: cast_nullable_to_non_nullable
                  as int,
        statusFrostStarted: null == statusFrostStarted
            ? _value.statusFrostStarted
            : statusFrostStarted // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StoveSensorsImpl extends _StoveSensors {
  const _$StoveSensorsImpl({
    required this.inputRoomTemperature,
    required this.inputFlameTemperature,
    required this.parameterFeedRateTotal,
    required this.parameterRuntimePellets,
    required this.statusMainState,
    required this.statusSubState,
    required this.statusFrostStarted,
  }) : super._();

  factory _$StoveSensorsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoveSensorsImplFromJson(json);

  @override
  final double inputRoomTemperature;
  @override
  final double inputFlameTemperature;
  @override
  final double parameterFeedRateTotal;
  @override
  final int parameterRuntimePellets;
  @override
  final int statusMainState;
  @override
  final int statusSubState;
  @override
  final bool statusFrostStarted;

  @override
  String toString() {
    return 'StoveSensors(inputRoomTemperature: $inputRoomTemperature, inputFlameTemperature: $inputFlameTemperature, parameterFeedRateTotal: $parameterFeedRateTotal, parameterRuntimePellets: $parameterRuntimePellets, statusMainState: $statusMainState, statusSubState: $statusSubState, statusFrostStarted: $statusFrostStarted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoveSensorsImpl &&
            (identical(other.inputRoomTemperature, inputRoomTemperature) ||
                other.inputRoomTemperature == inputRoomTemperature) &&
            (identical(other.inputFlameTemperature, inputFlameTemperature) ||
                other.inputFlameTemperature == inputFlameTemperature) &&
            (identical(other.parameterFeedRateTotal, parameterFeedRateTotal) ||
                other.parameterFeedRateTotal == parameterFeedRateTotal) &&
            (identical(
                  other.parameterRuntimePellets,
                  parameterRuntimePellets,
                ) ||
                other.parameterRuntimePellets == parameterRuntimePellets) &&
            (identical(other.statusMainState, statusMainState) ||
                other.statusMainState == statusMainState) &&
            (identical(other.statusSubState, statusSubState) ||
                other.statusSubState == statusSubState) &&
            (identical(other.statusFrostStarted, statusFrostStarted) ||
                other.statusFrostStarted == statusFrostStarted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    inputRoomTemperature,
    inputFlameTemperature,
    parameterFeedRateTotal,
    parameterRuntimePellets,
    statusMainState,
    statusSubState,
    statusFrostStarted,
  );

  /// Create a copy of StoveSensors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoveSensorsImplCopyWith<_$StoveSensorsImpl> get copyWith =>
      __$$StoveSensorsImplCopyWithImpl<_$StoveSensorsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoveSensorsImplToJson(this);
  }
}

abstract class _StoveSensors extends StoveSensors {
  const factory _StoveSensors({
    required final double inputRoomTemperature,
    required final double inputFlameTemperature,
    required final double parameterFeedRateTotal,
    required final int parameterRuntimePellets,
    required final int statusMainState,
    required final int statusSubState,
    required final bool statusFrostStarted,
  }) = _$StoveSensorsImpl;
  const _StoveSensors._() : super._();

  factory _StoveSensors.fromJson(Map<String, dynamic> json) =
      _$StoveSensorsImpl.fromJson;

  @override
  double get inputRoomTemperature;
  @override
  double get inputFlameTemperature;
  @override
  double get parameterFeedRateTotal;
  @override
  int get parameterRuntimePellets;
  @override
  int get statusMainState;
  @override
  int get statusSubState;
  @override
  bool get statusFrostStarted;

  /// Create a copy of StoveSensors
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoveSensorsImplCopyWith<_$StoveSensorsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
