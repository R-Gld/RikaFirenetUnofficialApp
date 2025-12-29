// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stove_features.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StoveFeatures _$StoveFeaturesFromJson(Map<String, dynamic> json) {
  return _StoveFeatures.fromJson(json);
}

/// @nodoc
mixin _$StoveFeatures {
  bool get multiAir1 =>
      throw _privateConstructorUsedError; // Convection fan 1 available
  bool get multiAir2 =>
      throw _privateConstructorUsedError; // Convection fan 2 available
  bool get insertionMotor =>
      throw _privateConstructorUsedError; // Log insertion motor present
  bool get airFlaps =>
      throw _privateConstructorUsedError; // Motorized air flaps present
  bool get logRuntime =>
      throw _privateConstructorUsedError; // Supports wood log burning
  bool get bakeMode => throw _privateConstructorUsedError;

  /// Serializes this StoveFeatures to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoveFeatures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoveFeaturesCopyWith<StoveFeatures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoveFeaturesCopyWith<$Res> {
  factory $StoveFeaturesCopyWith(
    StoveFeatures value,
    $Res Function(StoveFeatures) then,
  ) = _$StoveFeaturesCopyWithImpl<$Res, StoveFeatures>;
  @useResult
  $Res call({
    bool multiAir1,
    bool multiAir2,
    bool insertionMotor,
    bool airFlaps,
    bool logRuntime,
    bool bakeMode,
  });
}

/// @nodoc
class _$StoveFeaturesCopyWithImpl<$Res, $Val extends StoveFeatures>
    implements $StoveFeaturesCopyWith<$Res> {
  _$StoveFeaturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoveFeatures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? multiAir1 = null,
    Object? multiAir2 = null,
    Object? insertionMotor = null,
    Object? airFlaps = null,
    Object? logRuntime = null,
    Object? bakeMode = null,
  }) {
    return _then(
      _value.copyWith(
            multiAir1: null == multiAir1
                ? _value.multiAir1
                : multiAir1 // ignore: cast_nullable_to_non_nullable
                      as bool,
            multiAir2: null == multiAir2
                ? _value.multiAir2
                : multiAir2 // ignore: cast_nullable_to_non_nullable
                      as bool,
            insertionMotor: null == insertionMotor
                ? _value.insertionMotor
                : insertionMotor // ignore: cast_nullable_to_non_nullable
                      as bool,
            airFlaps: null == airFlaps
                ? _value.airFlaps
                : airFlaps // ignore: cast_nullable_to_non_nullable
                      as bool,
            logRuntime: null == logRuntime
                ? _value.logRuntime
                : logRuntime // ignore: cast_nullable_to_non_nullable
                      as bool,
            bakeMode: null == bakeMode
                ? _value.bakeMode
                : bakeMode // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StoveFeaturesImplCopyWith<$Res>
    implements $StoveFeaturesCopyWith<$Res> {
  factory _$$StoveFeaturesImplCopyWith(
    _$StoveFeaturesImpl value,
    $Res Function(_$StoveFeaturesImpl) then,
  ) = __$$StoveFeaturesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool multiAir1,
    bool multiAir2,
    bool insertionMotor,
    bool airFlaps,
    bool logRuntime,
    bool bakeMode,
  });
}

/// @nodoc
class __$$StoveFeaturesImplCopyWithImpl<$Res>
    extends _$StoveFeaturesCopyWithImpl<$Res, _$StoveFeaturesImpl>
    implements _$$StoveFeaturesImplCopyWith<$Res> {
  __$$StoveFeaturesImplCopyWithImpl(
    _$StoveFeaturesImpl _value,
    $Res Function(_$StoveFeaturesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StoveFeatures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? multiAir1 = null,
    Object? multiAir2 = null,
    Object? insertionMotor = null,
    Object? airFlaps = null,
    Object? logRuntime = null,
    Object? bakeMode = null,
  }) {
    return _then(
      _$StoveFeaturesImpl(
        multiAir1: null == multiAir1
            ? _value.multiAir1
            : multiAir1 // ignore: cast_nullable_to_non_nullable
                  as bool,
        multiAir2: null == multiAir2
            ? _value.multiAir2
            : multiAir2 // ignore: cast_nullable_to_non_nullable
                  as bool,
        insertionMotor: null == insertionMotor
            ? _value.insertionMotor
            : insertionMotor // ignore: cast_nullable_to_non_nullable
                  as bool,
        airFlaps: null == airFlaps
            ? _value.airFlaps
            : airFlaps // ignore: cast_nullable_to_non_nullable
                  as bool,
        logRuntime: null == logRuntime
            ? _value.logRuntime
            : logRuntime // ignore: cast_nullable_to_non_nullable
                  as bool,
        bakeMode: null == bakeMode
            ? _value.bakeMode
            : bakeMode // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StoveFeaturesImpl implements _StoveFeatures {
  const _$StoveFeaturesImpl({
    required this.multiAir1,
    required this.multiAir2,
    required this.insertionMotor,
    required this.airFlaps,
    required this.logRuntime,
    required this.bakeMode,
  });

  factory _$StoveFeaturesImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoveFeaturesImplFromJson(json);

  @override
  final bool multiAir1;
  // Convection fan 1 available
  @override
  final bool multiAir2;
  // Convection fan 2 available
  @override
  final bool insertionMotor;
  // Log insertion motor present
  @override
  final bool airFlaps;
  // Motorized air flaps present
  @override
  final bool logRuntime;
  // Supports wood log burning
  @override
  final bool bakeMode;

  @override
  String toString() {
    return 'StoveFeatures(multiAir1: $multiAir1, multiAir2: $multiAir2, insertionMotor: $insertionMotor, airFlaps: $airFlaps, logRuntime: $logRuntime, bakeMode: $bakeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoveFeaturesImpl &&
            (identical(other.multiAir1, multiAir1) ||
                other.multiAir1 == multiAir1) &&
            (identical(other.multiAir2, multiAir2) ||
                other.multiAir2 == multiAir2) &&
            (identical(other.insertionMotor, insertionMotor) ||
                other.insertionMotor == insertionMotor) &&
            (identical(other.airFlaps, airFlaps) ||
                other.airFlaps == airFlaps) &&
            (identical(other.logRuntime, logRuntime) ||
                other.logRuntime == logRuntime) &&
            (identical(other.bakeMode, bakeMode) ||
                other.bakeMode == bakeMode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    multiAir1,
    multiAir2,
    insertionMotor,
    airFlaps,
    logRuntime,
    bakeMode,
  );

  /// Create a copy of StoveFeatures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoveFeaturesImplCopyWith<_$StoveFeaturesImpl> get copyWith =>
      __$$StoveFeaturesImplCopyWithImpl<_$StoveFeaturesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoveFeaturesImplToJson(this);
  }
}

abstract class _StoveFeatures implements StoveFeatures {
  const factory _StoveFeatures({
    required final bool multiAir1,
    required final bool multiAir2,
    required final bool insertionMotor,
    required final bool airFlaps,
    required final bool logRuntime,
    required final bool bakeMode,
  }) = _$StoveFeaturesImpl;

  factory _StoveFeatures.fromJson(Map<String, dynamic> json) =
      _$StoveFeaturesImpl.fromJson;

  @override
  bool get multiAir1; // Convection fan 1 available
  @override
  bool get multiAir2; // Convection fan 2 available
  @override
  bool get insertionMotor; // Log insertion motor present
  @override
  bool get airFlaps; // Motorized air flaps present
  @override
  bool get logRuntime; // Supports wood log burning
  @override
  bool get bakeMode;

  /// Create a copy of StoveFeatures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoveFeaturesImplCopyWith<_$StoveFeaturesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
