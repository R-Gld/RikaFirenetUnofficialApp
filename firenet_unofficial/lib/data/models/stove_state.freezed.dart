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

StoveState _$StoveStateFromJson(Map<String, dynamic> json) {
  return _StoveState.fromJson(json);
}

/// @nodoc
mixin _$StoveState {
  StoveControls get controls => throw _privateConstructorUsedError;
  StoveSensors get sensors => throw _privateConstructorUsedError;
  DateTime? get lastUpdated => throw _privateConstructorUsedError;

  /// Serializes this StoveState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoveState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoveStateCopyWith<StoveState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoveStateCopyWith<$Res> {
  factory $StoveStateCopyWith(
    StoveState value,
    $Res Function(StoveState) then,
  ) = _$StoveStateCopyWithImpl<$Res, StoveState>;
  @useResult
  $Res call({
    StoveControls controls,
    StoveSensors sensors,
    DateTime? lastUpdated,
  });

  $StoveControlsCopyWith<$Res> get controls;
  $StoveSensorsCopyWith<$Res> get sensors;
}

/// @nodoc
class _$StoveStateCopyWithImpl<$Res, $Val extends StoveState>
    implements $StoveStateCopyWith<$Res> {
  _$StoveStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoveState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controls = null,
    Object? sensors = null,
    Object? lastUpdated = freezed,
  }) {
    return _then(
      _value.copyWith(
            controls: null == controls
                ? _value.controls
                : controls // ignore: cast_nullable_to_non_nullable
                      as StoveControls,
            sensors: null == sensors
                ? _value.sensors
                : sensors // ignore: cast_nullable_to_non_nullable
                      as StoveSensors,
            lastUpdated: freezed == lastUpdated
                ? _value.lastUpdated
                : lastUpdated // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }

  /// Create a copy of StoveState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoveControlsCopyWith<$Res> get controls {
    return $StoveControlsCopyWith<$Res>(_value.controls, (value) {
      return _then(_value.copyWith(controls: value) as $Val);
    });
  }

  /// Create a copy of StoveState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoveSensorsCopyWith<$Res> get sensors {
    return $StoveSensorsCopyWith<$Res>(_value.sensors, (value) {
      return _then(_value.copyWith(sensors: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoveStateImplCopyWith<$Res>
    implements $StoveStateCopyWith<$Res> {
  factory _$$StoveStateImplCopyWith(
    _$StoveStateImpl value,
    $Res Function(_$StoveStateImpl) then,
  ) = __$$StoveStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    StoveControls controls,
    StoveSensors sensors,
    DateTime? lastUpdated,
  });

  @override
  $StoveControlsCopyWith<$Res> get controls;
  @override
  $StoveSensorsCopyWith<$Res> get sensors;
}

/// @nodoc
class __$$StoveStateImplCopyWithImpl<$Res>
    extends _$StoveStateCopyWithImpl<$Res, _$StoveStateImpl>
    implements _$$StoveStateImplCopyWith<$Res> {
  __$$StoveStateImplCopyWithImpl(
    _$StoveStateImpl _value,
    $Res Function(_$StoveStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StoveState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controls = null,
    Object? sensors = null,
    Object? lastUpdated = freezed,
  }) {
    return _then(
      _$StoveStateImpl(
        controls: null == controls
            ? _value.controls
            : controls // ignore: cast_nullable_to_non_nullable
                  as StoveControls,
        sensors: null == sensors
            ? _value.sensors
            : sensors // ignore: cast_nullable_to_non_nullable
                  as StoveSensors,
        lastUpdated: freezed == lastUpdated
            ? _value.lastUpdated
            : lastUpdated // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StoveStateImpl extends _StoveState {
  const _$StoveStateImpl({
    required this.controls,
    required this.sensors,
    this.lastUpdated,
  }) : super._();

  factory _$StoveStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoveStateImplFromJson(json);

  @override
  final StoveControls controls;
  @override
  final StoveSensors sensors;
  @override
  final DateTime? lastUpdated;

  @override
  String toString() {
    return 'StoveState(controls: $controls, sensors: $sensors, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoveStateImpl &&
            (identical(other.controls, controls) ||
                other.controls == controls) &&
            (identical(other.sensors, sensors) || other.sensors == sensors) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, controls, sensors, lastUpdated);

  /// Create a copy of StoveState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoveStateImplCopyWith<_$StoveStateImpl> get copyWith =>
      __$$StoveStateImplCopyWithImpl<_$StoveStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoveStateImplToJson(this);
  }
}

abstract class _StoveState extends StoveState {
  const factory _StoveState({
    required final StoveControls controls,
    required final StoveSensors sensors,
    final DateTime? lastUpdated,
  }) = _$StoveStateImpl;
  const _StoveState._() : super._();

  factory _StoveState.fromJson(Map<String, dynamic> json) =
      _$StoveStateImpl.fromJson;

  @override
  StoveControls get controls;
  @override
  StoveSensors get sensors;
  @override
  DateTime? get lastUpdated;

  /// Create a copy of StoveState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoveStateImplCopyWith<_$StoveStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
