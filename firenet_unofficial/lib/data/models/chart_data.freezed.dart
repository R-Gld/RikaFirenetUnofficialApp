// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chart_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TemperatureDataPoint _$TemperatureDataPointFromJson(Map<String, dynamic> json) {
  return _TemperatureDataPoint.fromJson(json);
}

/// @nodoc
mixin _$TemperatureDataPoint {
  DateTime get timestamp => throw _privateConstructorUsedError;
  double get roomTemperature => throw _privateConstructorUsedError;
  double get targetTemperature => throw _privateConstructorUsedError;
  int get flameTemperature => throw _privateConstructorUsedError;
  int get mainState => throw _privateConstructorUsedError;

  /// Serializes this TemperatureDataPoint to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TemperatureDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TemperatureDataPointCopyWith<TemperatureDataPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemperatureDataPointCopyWith<$Res> {
  factory $TemperatureDataPointCopyWith(
    TemperatureDataPoint value,
    $Res Function(TemperatureDataPoint) then,
  ) = _$TemperatureDataPointCopyWithImpl<$Res, TemperatureDataPoint>;
  @useResult
  $Res call({
    DateTime timestamp,
    double roomTemperature,
    double targetTemperature,
    int flameTemperature,
    int mainState,
  });
}

/// @nodoc
class _$TemperatureDataPointCopyWithImpl<
  $Res,
  $Val extends TemperatureDataPoint
>
    implements $TemperatureDataPointCopyWith<$Res> {
  _$TemperatureDataPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TemperatureDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? roomTemperature = null,
    Object? targetTemperature = null,
    Object? flameTemperature = null,
    Object? mainState = null,
  }) {
    return _then(
      _value.copyWith(
            timestamp: null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            roomTemperature: null == roomTemperature
                ? _value.roomTemperature
                : roomTemperature // ignore: cast_nullable_to_non_nullable
                      as double,
            targetTemperature: null == targetTemperature
                ? _value.targetTemperature
                : targetTemperature // ignore: cast_nullable_to_non_nullable
                      as double,
            flameTemperature: null == flameTemperature
                ? _value.flameTemperature
                : flameTemperature // ignore: cast_nullable_to_non_nullable
                      as int,
            mainState: null == mainState
                ? _value.mainState
                : mainState // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TemperatureDataPointImplCopyWith<$Res>
    implements $TemperatureDataPointCopyWith<$Res> {
  factory _$$TemperatureDataPointImplCopyWith(
    _$TemperatureDataPointImpl value,
    $Res Function(_$TemperatureDataPointImpl) then,
  ) = __$$TemperatureDataPointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DateTime timestamp,
    double roomTemperature,
    double targetTemperature,
    int flameTemperature,
    int mainState,
  });
}

/// @nodoc
class __$$TemperatureDataPointImplCopyWithImpl<$Res>
    extends _$TemperatureDataPointCopyWithImpl<$Res, _$TemperatureDataPointImpl>
    implements _$$TemperatureDataPointImplCopyWith<$Res> {
  __$$TemperatureDataPointImplCopyWithImpl(
    _$TemperatureDataPointImpl _value,
    $Res Function(_$TemperatureDataPointImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TemperatureDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? roomTemperature = null,
    Object? targetTemperature = null,
    Object? flameTemperature = null,
    Object? mainState = null,
  }) {
    return _then(
      _$TemperatureDataPointImpl(
        timestamp: null == timestamp
            ? _value.timestamp
            : timestamp // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        roomTemperature: null == roomTemperature
            ? _value.roomTemperature
            : roomTemperature // ignore: cast_nullable_to_non_nullable
                  as double,
        targetTemperature: null == targetTemperature
            ? _value.targetTemperature
            : targetTemperature // ignore: cast_nullable_to_non_nullable
                  as double,
        flameTemperature: null == flameTemperature
            ? _value.flameTemperature
            : flameTemperature // ignore: cast_nullable_to_non_nullable
                  as int,
        mainState: null == mainState
            ? _value.mainState
            : mainState // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TemperatureDataPointImpl implements _TemperatureDataPoint {
  const _$TemperatureDataPointImpl({
    required this.timestamp,
    required this.roomTemperature,
    required this.targetTemperature,
    required this.flameTemperature,
    required this.mainState,
  });

  factory _$TemperatureDataPointImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemperatureDataPointImplFromJson(json);

  @override
  final DateTime timestamp;
  @override
  final double roomTemperature;
  @override
  final double targetTemperature;
  @override
  final int flameTemperature;
  @override
  final int mainState;

  @override
  String toString() {
    return 'TemperatureDataPoint(timestamp: $timestamp, roomTemperature: $roomTemperature, targetTemperature: $targetTemperature, flameTemperature: $flameTemperature, mainState: $mainState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemperatureDataPointImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.roomTemperature, roomTemperature) ||
                other.roomTemperature == roomTemperature) &&
            (identical(other.targetTemperature, targetTemperature) ||
                other.targetTemperature == targetTemperature) &&
            (identical(other.flameTemperature, flameTemperature) ||
                other.flameTemperature == flameTemperature) &&
            (identical(other.mainState, mainState) ||
                other.mainState == mainState));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    timestamp,
    roomTemperature,
    targetTemperature,
    flameTemperature,
    mainState,
  );

  /// Create a copy of TemperatureDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TemperatureDataPointImplCopyWith<_$TemperatureDataPointImpl>
  get copyWith =>
      __$$TemperatureDataPointImplCopyWithImpl<_$TemperatureDataPointImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TemperatureDataPointImplToJson(this);
  }
}

abstract class _TemperatureDataPoint implements TemperatureDataPoint {
  const factory _TemperatureDataPoint({
    required final DateTime timestamp,
    required final double roomTemperature,
    required final double targetTemperature,
    required final int flameTemperature,
    required final int mainState,
  }) = _$TemperatureDataPointImpl;

  factory _TemperatureDataPoint.fromJson(Map<String, dynamic> json) =
      _$TemperatureDataPointImpl.fromJson;

  @override
  DateTime get timestamp;
  @override
  double get roomTemperature;
  @override
  double get targetTemperature;
  @override
  int get flameTemperature;
  @override
  int get mainState;

  /// Create a copy of TemperatureDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TemperatureDataPointImplCopyWith<_$TemperatureDataPointImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ConsumptionDataPoint _$ConsumptionDataPointFromJson(Map<String, dynamic> json) {
  return _ConsumptionDataPoint.fromJson(json);
}

/// @nodoc
mixin _$ConsumptionDataPoint {
  DateTime get date => throw _privateConstructorUsedError;
  double get pelletConsumptionKg => throw _privateConstructorUsedError;
  int get runtimeMinutes => throw _privateConstructorUsedError;
  int get ignitionCount => throw _privateConstructorUsedError;

  /// Serializes this ConsumptionDataPoint to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsumptionDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsumptionDataPointCopyWith<ConsumptionDataPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsumptionDataPointCopyWith<$Res> {
  factory $ConsumptionDataPointCopyWith(
    ConsumptionDataPoint value,
    $Res Function(ConsumptionDataPoint) then,
  ) = _$ConsumptionDataPointCopyWithImpl<$Res, ConsumptionDataPoint>;
  @useResult
  $Res call({
    DateTime date,
    double pelletConsumptionKg,
    int runtimeMinutes,
    int ignitionCount,
  });
}

/// @nodoc
class _$ConsumptionDataPointCopyWithImpl<
  $Res,
  $Val extends ConsumptionDataPoint
>
    implements $ConsumptionDataPointCopyWith<$Res> {
  _$ConsumptionDataPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsumptionDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? pelletConsumptionKg = null,
    Object? runtimeMinutes = null,
    Object? ignitionCount = null,
  }) {
    return _then(
      _value.copyWith(
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            pelletConsumptionKg: null == pelletConsumptionKg
                ? _value.pelletConsumptionKg
                : pelletConsumptionKg // ignore: cast_nullable_to_non_nullable
                      as double,
            runtimeMinutes: null == runtimeMinutes
                ? _value.runtimeMinutes
                : runtimeMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
            ignitionCount: null == ignitionCount
                ? _value.ignitionCount
                : ignitionCount // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ConsumptionDataPointImplCopyWith<$Res>
    implements $ConsumptionDataPointCopyWith<$Res> {
  factory _$$ConsumptionDataPointImplCopyWith(
    _$ConsumptionDataPointImpl value,
    $Res Function(_$ConsumptionDataPointImpl) then,
  ) = __$$ConsumptionDataPointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DateTime date,
    double pelletConsumptionKg,
    int runtimeMinutes,
    int ignitionCount,
  });
}

/// @nodoc
class __$$ConsumptionDataPointImplCopyWithImpl<$Res>
    extends _$ConsumptionDataPointCopyWithImpl<$Res, _$ConsumptionDataPointImpl>
    implements _$$ConsumptionDataPointImplCopyWith<$Res> {
  __$$ConsumptionDataPointImplCopyWithImpl(
    _$ConsumptionDataPointImpl _value,
    $Res Function(_$ConsumptionDataPointImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConsumptionDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? pelletConsumptionKg = null,
    Object? runtimeMinutes = null,
    Object? ignitionCount = null,
  }) {
    return _then(
      _$ConsumptionDataPointImpl(
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        pelletConsumptionKg: null == pelletConsumptionKg
            ? _value.pelletConsumptionKg
            : pelletConsumptionKg // ignore: cast_nullable_to_non_nullable
                  as double,
        runtimeMinutes: null == runtimeMinutes
            ? _value.runtimeMinutes
            : runtimeMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
        ignitionCount: null == ignitionCount
            ? _value.ignitionCount
            : ignitionCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsumptionDataPointImpl implements _ConsumptionDataPoint {
  const _$ConsumptionDataPointImpl({
    required this.date,
    required this.pelletConsumptionKg,
    required this.runtimeMinutes,
    required this.ignitionCount,
  });

  factory _$ConsumptionDataPointImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsumptionDataPointImplFromJson(json);

  @override
  final DateTime date;
  @override
  final double pelletConsumptionKg;
  @override
  final int runtimeMinutes;
  @override
  final int ignitionCount;

  @override
  String toString() {
    return 'ConsumptionDataPoint(date: $date, pelletConsumptionKg: $pelletConsumptionKg, runtimeMinutes: $runtimeMinutes, ignitionCount: $ignitionCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsumptionDataPointImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.pelletConsumptionKg, pelletConsumptionKg) ||
                other.pelletConsumptionKg == pelletConsumptionKg) &&
            (identical(other.runtimeMinutes, runtimeMinutes) ||
                other.runtimeMinutes == runtimeMinutes) &&
            (identical(other.ignitionCount, ignitionCount) ||
                other.ignitionCount == ignitionCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    date,
    pelletConsumptionKg,
    runtimeMinutes,
    ignitionCount,
  );

  /// Create a copy of ConsumptionDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsumptionDataPointImplCopyWith<_$ConsumptionDataPointImpl>
  get copyWith =>
      __$$ConsumptionDataPointImplCopyWithImpl<_$ConsumptionDataPointImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsumptionDataPointImplToJson(this);
  }
}

abstract class _ConsumptionDataPoint implements ConsumptionDataPoint {
  const factory _ConsumptionDataPoint({
    required final DateTime date,
    required final double pelletConsumptionKg,
    required final int runtimeMinutes,
    required final int ignitionCount,
  }) = _$ConsumptionDataPointImpl;

  factory _ConsumptionDataPoint.fromJson(Map<String, dynamic> json) =
      _$ConsumptionDataPointImpl.fromJson;

  @override
  DateTime get date;
  @override
  double get pelletConsumptionKg;
  @override
  int get runtimeMinutes;
  @override
  int get ignitionCount;

  /// Create a copy of ConsumptionDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsumptionDataPointImplCopyWith<_$ConsumptionDataPointImpl>
  get copyWith => throw _privateConstructorUsedError;
}

StateTransitionDataPoint _$StateTransitionDataPointFromJson(
  Map<String, dynamic> json,
) {
  return _StateTransitionDataPoint.fromJson(json);
}

/// @nodoc
mixin _$StateTransitionDataPoint {
  DateTime get timestamp => throw _privateConstructorUsedError;
  int get fromState => throw _privateConstructorUsedError;
  int get toState => throw _privateConstructorUsedError;
  int get durationSeconds => throw _privateConstructorUsedError;

  /// Serializes this StateTransitionDataPoint to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StateTransitionDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StateTransitionDataPointCopyWith<StateTransitionDataPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateTransitionDataPointCopyWith<$Res> {
  factory $StateTransitionDataPointCopyWith(
    StateTransitionDataPoint value,
    $Res Function(StateTransitionDataPoint) then,
  ) = _$StateTransitionDataPointCopyWithImpl<$Res, StateTransitionDataPoint>;
  @useResult
  $Res call({
    DateTime timestamp,
    int fromState,
    int toState,
    int durationSeconds,
  });
}

/// @nodoc
class _$StateTransitionDataPointCopyWithImpl<
  $Res,
  $Val extends StateTransitionDataPoint
>
    implements $StateTransitionDataPointCopyWith<$Res> {
  _$StateTransitionDataPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StateTransitionDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? fromState = null,
    Object? toState = null,
    Object? durationSeconds = null,
  }) {
    return _then(
      _value.copyWith(
            timestamp: null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            fromState: null == fromState
                ? _value.fromState
                : fromState // ignore: cast_nullable_to_non_nullable
                      as int,
            toState: null == toState
                ? _value.toState
                : toState // ignore: cast_nullable_to_non_nullable
                      as int,
            durationSeconds: null == durationSeconds
                ? _value.durationSeconds
                : durationSeconds // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StateTransitionDataPointImplCopyWith<$Res>
    implements $StateTransitionDataPointCopyWith<$Res> {
  factory _$$StateTransitionDataPointImplCopyWith(
    _$StateTransitionDataPointImpl value,
    $Res Function(_$StateTransitionDataPointImpl) then,
  ) = __$$StateTransitionDataPointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DateTime timestamp,
    int fromState,
    int toState,
    int durationSeconds,
  });
}

/// @nodoc
class __$$StateTransitionDataPointImplCopyWithImpl<$Res>
    extends
        _$StateTransitionDataPointCopyWithImpl<
          $Res,
          _$StateTransitionDataPointImpl
        >
    implements _$$StateTransitionDataPointImplCopyWith<$Res> {
  __$$StateTransitionDataPointImplCopyWithImpl(
    _$StateTransitionDataPointImpl _value,
    $Res Function(_$StateTransitionDataPointImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StateTransitionDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? fromState = null,
    Object? toState = null,
    Object? durationSeconds = null,
  }) {
    return _then(
      _$StateTransitionDataPointImpl(
        timestamp: null == timestamp
            ? _value.timestamp
            : timestamp // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        fromState: null == fromState
            ? _value.fromState
            : fromState // ignore: cast_nullable_to_non_nullable
                  as int,
        toState: null == toState
            ? _value.toState
            : toState // ignore: cast_nullable_to_non_nullable
                  as int,
        durationSeconds: null == durationSeconds
            ? _value.durationSeconds
            : durationSeconds // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StateTransitionDataPointImpl implements _StateTransitionDataPoint {
  const _$StateTransitionDataPointImpl({
    required this.timestamp,
    required this.fromState,
    required this.toState,
    required this.durationSeconds,
  });

  factory _$StateTransitionDataPointImpl.fromJson(Map<String, dynamic> json) =>
      _$$StateTransitionDataPointImplFromJson(json);

  @override
  final DateTime timestamp;
  @override
  final int fromState;
  @override
  final int toState;
  @override
  final int durationSeconds;

  @override
  String toString() {
    return 'StateTransitionDataPoint(timestamp: $timestamp, fromState: $fromState, toState: $toState, durationSeconds: $durationSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateTransitionDataPointImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.fromState, fromState) ||
                other.fromState == fromState) &&
            (identical(other.toState, toState) || other.toState == toState) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, timestamp, fromState, toState, durationSeconds);

  /// Create a copy of StateTransitionDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StateTransitionDataPointImplCopyWith<_$StateTransitionDataPointImpl>
  get copyWith =>
      __$$StateTransitionDataPointImplCopyWithImpl<
        _$StateTransitionDataPointImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StateTransitionDataPointImplToJson(this);
  }
}

abstract class _StateTransitionDataPoint implements StateTransitionDataPoint {
  const factory _StateTransitionDataPoint({
    required final DateTime timestamp,
    required final int fromState,
    required final int toState,
    required final int durationSeconds,
  }) = _$StateTransitionDataPointImpl;

  factory _StateTransitionDataPoint.fromJson(Map<String, dynamic> json) =
      _$StateTransitionDataPointImpl.fromJson;

  @override
  DateTime get timestamp;
  @override
  int get fromState;
  @override
  int get toState;
  @override
  int get durationSeconds;

  /// Create a copy of StateTransitionDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StateTransitionDataPointImplCopyWith<_$StateTransitionDataPointImpl>
  get copyWith => throw _privateConstructorUsedError;
}
