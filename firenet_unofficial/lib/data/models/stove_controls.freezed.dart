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
  int get revision => throw _privateConstructorUsedError;
  bool get onOff => throw _privateConstructorUsedError;
  int get operatingMode =>
      throw _privateConstructorUsedError; // 0=manual, 1=auto, 2=comfort
  int get heatingPower => throw _privateConstructorUsedError;
  String get targetTemperature =>
      throw _privateConstructorUsedError; // CRITICAL: Must be STRING! Range: "16" to "30"
  String get bakeTemperature =>
      throw _privateConstructorUsedError; // STRING, e.g., "180"
  bool get ecoMode =>
      throw _privateConstructorUsedError; // Heating times schedule (HHmmHHmm format or "00000000" for disabled)
  String get heatingTimeMon1 => throw _privateConstructorUsedError;
  String get heatingTimeMon2 => throw _privateConstructorUsedError;
  String get heatingTimeTue1 => throw _privateConstructorUsedError;
  String get heatingTimeTue2 => throw _privateConstructorUsedError;
  String get heatingTimeWed1 => throw _privateConstructorUsedError;
  String get heatingTimeWed2 => throw _privateConstructorUsedError;
  String get heatingTimeThu1 => throw _privateConstructorUsedError;
  String get heatingTimeThu2 => throw _privateConstructorUsedError;
  String get heatingTimeFri1 => throw _privateConstructorUsedError;
  String get heatingTimeFri2 => throw _privateConstructorUsedError;
  String get heatingTimeSat1 => throw _privateConstructorUsedError;
  String get heatingTimeSat2 => throw _privateConstructorUsedError;
  String get heatingTimeSun1 => throw _privateConstructorUsedError;
  String get heatingTimeSun2 => throw _privateConstructorUsedError;
  bool get heatingTimesActiveForComfort => throw _privateConstructorUsedError;
  String get setBackTemperature =>
      throw _privateConstructorUsedError; // STRING, Range: "14" to "30"
  // Convection fans
  bool get convectionFan1Active => throw _privateConstructorUsedError;
  int get convectionFan1Level => throw _privateConstructorUsedError; // 0-5
  int get convectionFan1Area =>
      throw _privateConstructorUsedError; // -30 to +30
  bool get convectionFan2Active => throw _privateConstructorUsedError;
  int get convectionFan2Level => throw _privateConstructorUsedError; // 0-5
  int get convectionFan2Area =>
      throw _privateConstructorUsedError; // -30 to +30
  // Frost protection
  bool get frostProtectionActive => throw _privateConstructorUsedError;
  String get frostProtectionTemperature =>
      throw _privateConstructorUsedError; // STRING, Range: "4" to "10"
  String get temperatureOffset =>
      throw _privateConstructorUsedError; // STRING, Range: "-3" to "+3"
  // ignore: invalid_annotation_target
  @JsonKey(name: 'RoomPowerRequest')
  int get roomPowerRequest => throw _privateConstructorUsedError; // 1-4
  // Debug fields
  int get debug0 => throw _privateConstructorUsedError;
  int get debug1 => throw _privateConstructorUsedError;
  int get debug2 => throw _privateConstructorUsedError;
  int get debug3 => throw _privateConstructorUsedError;
  int get debug4 => throw _privateConstructorUsedError;

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
    int revision,
    bool onOff,
    int operatingMode,
    int heatingPower,
    String targetTemperature,
    String bakeTemperature,
    bool ecoMode,
    String heatingTimeMon1,
    String heatingTimeMon2,
    String heatingTimeTue1,
    String heatingTimeTue2,
    String heatingTimeWed1,
    String heatingTimeWed2,
    String heatingTimeThu1,
    String heatingTimeThu2,
    String heatingTimeFri1,
    String heatingTimeFri2,
    String heatingTimeSat1,
    String heatingTimeSat2,
    String heatingTimeSun1,
    String heatingTimeSun2,
    bool heatingTimesActiveForComfort,
    String setBackTemperature,
    bool convectionFan1Active,
    int convectionFan1Level,
    int convectionFan1Area,
    bool convectionFan2Active,
    int convectionFan2Level,
    int convectionFan2Area,
    bool frostProtectionActive,
    String frostProtectionTemperature,
    String temperatureOffset,
    @JsonKey(name: 'RoomPowerRequest') int roomPowerRequest,
    int debug0,
    int debug1,
    int debug2,
    int debug3,
    int debug4,
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
    Object? revision = null,
    Object? onOff = null,
    Object? operatingMode = null,
    Object? heatingPower = null,
    Object? targetTemperature = null,
    Object? bakeTemperature = null,
    Object? ecoMode = null,
    Object? heatingTimeMon1 = null,
    Object? heatingTimeMon2 = null,
    Object? heatingTimeTue1 = null,
    Object? heatingTimeTue2 = null,
    Object? heatingTimeWed1 = null,
    Object? heatingTimeWed2 = null,
    Object? heatingTimeThu1 = null,
    Object? heatingTimeThu2 = null,
    Object? heatingTimeFri1 = null,
    Object? heatingTimeFri2 = null,
    Object? heatingTimeSat1 = null,
    Object? heatingTimeSat2 = null,
    Object? heatingTimeSun1 = null,
    Object? heatingTimeSun2 = null,
    Object? heatingTimesActiveForComfort = null,
    Object? setBackTemperature = null,
    Object? convectionFan1Active = null,
    Object? convectionFan1Level = null,
    Object? convectionFan1Area = null,
    Object? convectionFan2Active = null,
    Object? convectionFan2Level = null,
    Object? convectionFan2Area = null,
    Object? frostProtectionActive = null,
    Object? frostProtectionTemperature = null,
    Object? temperatureOffset = null,
    Object? roomPowerRequest = null,
    Object? debug0 = null,
    Object? debug1 = null,
    Object? debug2 = null,
    Object? debug3 = null,
    Object? debug4 = null,
  }) {
    return _then(
      _value.copyWith(
            revision: null == revision
                ? _value.revision
                : revision // ignore: cast_nullable_to_non_nullable
                      as int,
            onOff: null == onOff
                ? _value.onOff
                : onOff // ignore: cast_nullable_to_non_nullable
                      as bool,
            operatingMode: null == operatingMode
                ? _value.operatingMode
                : operatingMode // ignore: cast_nullable_to_non_nullable
                      as int,
            heatingPower: null == heatingPower
                ? _value.heatingPower
                : heatingPower // ignore: cast_nullable_to_non_nullable
                      as int,
            targetTemperature: null == targetTemperature
                ? _value.targetTemperature
                : targetTemperature // ignore: cast_nullable_to_non_nullable
                      as String,
            bakeTemperature: null == bakeTemperature
                ? _value.bakeTemperature
                : bakeTemperature // ignore: cast_nullable_to_non_nullable
                      as String,
            ecoMode: null == ecoMode
                ? _value.ecoMode
                : ecoMode // ignore: cast_nullable_to_non_nullable
                      as bool,
            heatingTimeMon1: null == heatingTimeMon1
                ? _value.heatingTimeMon1
                : heatingTimeMon1 // ignore: cast_nullable_to_non_nullable
                      as String,
            heatingTimeMon2: null == heatingTimeMon2
                ? _value.heatingTimeMon2
                : heatingTimeMon2 // ignore: cast_nullable_to_non_nullable
                      as String,
            heatingTimeTue1: null == heatingTimeTue1
                ? _value.heatingTimeTue1
                : heatingTimeTue1 // ignore: cast_nullable_to_non_nullable
                      as String,
            heatingTimeTue2: null == heatingTimeTue2
                ? _value.heatingTimeTue2
                : heatingTimeTue2 // ignore: cast_nullable_to_non_nullable
                      as String,
            heatingTimeWed1: null == heatingTimeWed1
                ? _value.heatingTimeWed1
                : heatingTimeWed1 // ignore: cast_nullable_to_non_nullable
                      as String,
            heatingTimeWed2: null == heatingTimeWed2
                ? _value.heatingTimeWed2
                : heatingTimeWed2 // ignore: cast_nullable_to_non_nullable
                      as String,
            heatingTimeThu1: null == heatingTimeThu1
                ? _value.heatingTimeThu1
                : heatingTimeThu1 // ignore: cast_nullable_to_non_nullable
                      as String,
            heatingTimeThu2: null == heatingTimeThu2
                ? _value.heatingTimeThu2
                : heatingTimeThu2 // ignore: cast_nullable_to_non_nullable
                      as String,
            heatingTimeFri1: null == heatingTimeFri1
                ? _value.heatingTimeFri1
                : heatingTimeFri1 // ignore: cast_nullable_to_non_nullable
                      as String,
            heatingTimeFri2: null == heatingTimeFri2
                ? _value.heatingTimeFri2
                : heatingTimeFri2 // ignore: cast_nullable_to_non_nullable
                      as String,
            heatingTimeSat1: null == heatingTimeSat1
                ? _value.heatingTimeSat1
                : heatingTimeSat1 // ignore: cast_nullable_to_non_nullable
                      as String,
            heatingTimeSat2: null == heatingTimeSat2
                ? _value.heatingTimeSat2
                : heatingTimeSat2 // ignore: cast_nullable_to_non_nullable
                      as String,
            heatingTimeSun1: null == heatingTimeSun1
                ? _value.heatingTimeSun1
                : heatingTimeSun1 // ignore: cast_nullable_to_non_nullable
                      as String,
            heatingTimeSun2: null == heatingTimeSun2
                ? _value.heatingTimeSun2
                : heatingTimeSun2 // ignore: cast_nullable_to_non_nullable
                      as String,
            heatingTimesActiveForComfort: null == heatingTimesActiveForComfort
                ? _value.heatingTimesActiveForComfort
                : heatingTimesActiveForComfort // ignore: cast_nullable_to_non_nullable
                      as bool,
            setBackTemperature: null == setBackTemperature
                ? _value.setBackTemperature
                : setBackTemperature // ignore: cast_nullable_to_non_nullable
                      as String,
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
            frostProtectionActive: null == frostProtectionActive
                ? _value.frostProtectionActive
                : frostProtectionActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            frostProtectionTemperature: null == frostProtectionTemperature
                ? _value.frostProtectionTemperature
                : frostProtectionTemperature // ignore: cast_nullable_to_non_nullable
                      as String,
            temperatureOffset: null == temperatureOffset
                ? _value.temperatureOffset
                : temperatureOffset // ignore: cast_nullable_to_non_nullable
                      as String,
            roomPowerRequest: null == roomPowerRequest
                ? _value.roomPowerRequest
                : roomPowerRequest // ignore: cast_nullable_to_non_nullable
                      as int,
            debug0: null == debug0
                ? _value.debug0
                : debug0 // ignore: cast_nullable_to_non_nullable
                      as int,
            debug1: null == debug1
                ? _value.debug1
                : debug1 // ignore: cast_nullable_to_non_nullable
                      as int,
            debug2: null == debug2
                ? _value.debug2
                : debug2 // ignore: cast_nullable_to_non_nullable
                      as int,
            debug3: null == debug3
                ? _value.debug3
                : debug3 // ignore: cast_nullable_to_non_nullable
                      as int,
            debug4: null == debug4
                ? _value.debug4
                : debug4 // ignore: cast_nullable_to_non_nullable
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
    int revision,
    bool onOff,
    int operatingMode,
    int heatingPower,
    String targetTemperature,
    String bakeTemperature,
    bool ecoMode,
    String heatingTimeMon1,
    String heatingTimeMon2,
    String heatingTimeTue1,
    String heatingTimeTue2,
    String heatingTimeWed1,
    String heatingTimeWed2,
    String heatingTimeThu1,
    String heatingTimeThu2,
    String heatingTimeFri1,
    String heatingTimeFri2,
    String heatingTimeSat1,
    String heatingTimeSat2,
    String heatingTimeSun1,
    String heatingTimeSun2,
    bool heatingTimesActiveForComfort,
    String setBackTemperature,
    bool convectionFan1Active,
    int convectionFan1Level,
    int convectionFan1Area,
    bool convectionFan2Active,
    int convectionFan2Level,
    int convectionFan2Area,
    bool frostProtectionActive,
    String frostProtectionTemperature,
    String temperatureOffset,
    @JsonKey(name: 'RoomPowerRequest') int roomPowerRequest,
    int debug0,
    int debug1,
    int debug2,
    int debug3,
    int debug4,
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
    Object? revision = null,
    Object? onOff = null,
    Object? operatingMode = null,
    Object? heatingPower = null,
    Object? targetTemperature = null,
    Object? bakeTemperature = null,
    Object? ecoMode = null,
    Object? heatingTimeMon1 = null,
    Object? heatingTimeMon2 = null,
    Object? heatingTimeTue1 = null,
    Object? heatingTimeTue2 = null,
    Object? heatingTimeWed1 = null,
    Object? heatingTimeWed2 = null,
    Object? heatingTimeThu1 = null,
    Object? heatingTimeThu2 = null,
    Object? heatingTimeFri1 = null,
    Object? heatingTimeFri2 = null,
    Object? heatingTimeSat1 = null,
    Object? heatingTimeSat2 = null,
    Object? heatingTimeSun1 = null,
    Object? heatingTimeSun2 = null,
    Object? heatingTimesActiveForComfort = null,
    Object? setBackTemperature = null,
    Object? convectionFan1Active = null,
    Object? convectionFan1Level = null,
    Object? convectionFan1Area = null,
    Object? convectionFan2Active = null,
    Object? convectionFan2Level = null,
    Object? convectionFan2Area = null,
    Object? frostProtectionActive = null,
    Object? frostProtectionTemperature = null,
    Object? temperatureOffset = null,
    Object? roomPowerRequest = null,
    Object? debug0 = null,
    Object? debug1 = null,
    Object? debug2 = null,
    Object? debug3 = null,
    Object? debug4 = null,
  }) {
    return _then(
      _$StoveControlsImpl(
        revision: null == revision
            ? _value.revision
            : revision // ignore: cast_nullable_to_non_nullable
                  as int,
        onOff: null == onOff
            ? _value.onOff
            : onOff // ignore: cast_nullable_to_non_nullable
                  as bool,
        operatingMode: null == operatingMode
            ? _value.operatingMode
            : operatingMode // ignore: cast_nullable_to_non_nullable
                  as int,
        heatingPower: null == heatingPower
            ? _value.heatingPower
            : heatingPower // ignore: cast_nullable_to_non_nullable
                  as int,
        targetTemperature: null == targetTemperature
            ? _value.targetTemperature
            : targetTemperature // ignore: cast_nullable_to_non_nullable
                  as String,
        bakeTemperature: null == bakeTemperature
            ? _value.bakeTemperature
            : bakeTemperature // ignore: cast_nullable_to_non_nullable
                  as String,
        ecoMode: null == ecoMode
            ? _value.ecoMode
            : ecoMode // ignore: cast_nullable_to_non_nullable
                  as bool,
        heatingTimeMon1: null == heatingTimeMon1
            ? _value.heatingTimeMon1
            : heatingTimeMon1 // ignore: cast_nullable_to_non_nullable
                  as String,
        heatingTimeMon2: null == heatingTimeMon2
            ? _value.heatingTimeMon2
            : heatingTimeMon2 // ignore: cast_nullable_to_non_nullable
                  as String,
        heatingTimeTue1: null == heatingTimeTue1
            ? _value.heatingTimeTue1
            : heatingTimeTue1 // ignore: cast_nullable_to_non_nullable
                  as String,
        heatingTimeTue2: null == heatingTimeTue2
            ? _value.heatingTimeTue2
            : heatingTimeTue2 // ignore: cast_nullable_to_non_nullable
                  as String,
        heatingTimeWed1: null == heatingTimeWed1
            ? _value.heatingTimeWed1
            : heatingTimeWed1 // ignore: cast_nullable_to_non_nullable
                  as String,
        heatingTimeWed2: null == heatingTimeWed2
            ? _value.heatingTimeWed2
            : heatingTimeWed2 // ignore: cast_nullable_to_non_nullable
                  as String,
        heatingTimeThu1: null == heatingTimeThu1
            ? _value.heatingTimeThu1
            : heatingTimeThu1 // ignore: cast_nullable_to_non_nullable
                  as String,
        heatingTimeThu2: null == heatingTimeThu2
            ? _value.heatingTimeThu2
            : heatingTimeThu2 // ignore: cast_nullable_to_non_nullable
                  as String,
        heatingTimeFri1: null == heatingTimeFri1
            ? _value.heatingTimeFri1
            : heatingTimeFri1 // ignore: cast_nullable_to_non_nullable
                  as String,
        heatingTimeFri2: null == heatingTimeFri2
            ? _value.heatingTimeFri2
            : heatingTimeFri2 // ignore: cast_nullable_to_non_nullable
                  as String,
        heatingTimeSat1: null == heatingTimeSat1
            ? _value.heatingTimeSat1
            : heatingTimeSat1 // ignore: cast_nullable_to_non_nullable
                  as String,
        heatingTimeSat2: null == heatingTimeSat2
            ? _value.heatingTimeSat2
            : heatingTimeSat2 // ignore: cast_nullable_to_non_nullable
                  as String,
        heatingTimeSun1: null == heatingTimeSun1
            ? _value.heatingTimeSun1
            : heatingTimeSun1 // ignore: cast_nullable_to_non_nullable
                  as String,
        heatingTimeSun2: null == heatingTimeSun2
            ? _value.heatingTimeSun2
            : heatingTimeSun2 // ignore: cast_nullable_to_non_nullable
                  as String,
        heatingTimesActiveForComfort: null == heatingTimesActiveForComfort
            ? _value.heatingTimesActiveForComfort
            : heatingTimesActiveForComfort // ignore: cast_nullable_to_non_nullable
                  as bool,
        setBackTemperature: null == setBackTemperature
            ? _value.setBackTemperature
            : setBackTemperature // ignore: cast_nullable_to_non_nullable
                  as String,
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
        frostProtectionActive: null == frostProtectionActive
            ? _value.frostProtectionActive
            : frostProtectionActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        frostProtectionTemperature: null == frostProtectionTemperature
            ? _value.frostProtectionTemperature
            : frostProtectionTemperature // ignore: cast_nullable_to_non_nullable
                  as String,
        temperatureOffset: null == temperatureOffset
            ? _value.temperatureOffset
            : temperatureOffset // ignore: cast_nullable_to_non_nullable
                  as String,
        roomPowerRequest: null == roomPowerRequest
            ? _value.roomPowerRequest
            : roomPowerRequest // ignore: cast_nullable_to_non_nullable
                  as int,
        debug0: null == debug0
            ? _value.debug0
            : debug0 // ignore: cast_nullable_to_non_nullable
                  as int,
        debug1: null == debug1
            ? _value.debug1
            : debug1 // ignore: cast_nullable_to_non_nullable
                  as int,
        debug2: null == debug2
            ? _value.debug2
            : debug2 // ignore: cast_nullable_to_non_nullable
                  as int,
        debug3: null == debug3
            ? _value.debug3
            : debug3 // ignore: cast_nullable_to_non_nullable
                  as int,
        debug4: null == debug4
            ? _value.debug4
            : debug4 // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StoveControlsImpl extends _StoveControls {
  const _$StoveControlsImpl({
    required this.revision,
    required this.onOff,
    required this.operatingMode,
    required this.heatingPower,
    required this.targetTemperature,
    required this.bakeTemperature,
    required this.ecoMode,
    required this.heatingTimeMon1,
    required this.heatingTimeMon2,
    required this.heatingTimeTue1,
    required this.heatingTimeTue2,
    required this.heatingTimeWed1,
    required this.heatingTimeWed2,
    required this.heatingTimeThu1,
    required this.heatingTimeThu2,
    required this.heatingTimeFri1,
    required this.heatingTimeFri2,
    required this.heatingTimeSat1,
    required this.heatingTimeSat2,
    required this.heatingTimeSun1,
    required this.heatingTimeSun2,
    required this.heatingTimesActiveForComfort,
    required this.setBackTemperature,
    required this.convectionFan1Active,
    required this.convectionFan1Level,
    required this.convectionFan1Area,
    required this.convectionFan2Active,
    required this.convectionFan2Level,
    required this.convectionFan2Area,
    required this.frostProtectionActive,
    required this.frostProtectionTemperature,
    required this.temperatureOffset,
    @JsonKey(name: 'RoomPowerRequest') required this.roomPowerRequest,
    required this.debug0,
    required this.debug1,
    required this.debug2,
    required this.debug3,
    required this.debug4,
  }) : super._();

  factory _$StoveControlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoveControlsImplFromJson(json);

  @override
  final int revision;
  @override
  final bool onOff;
  @override
  final int operatingMode;
  // 0=manual, 1=auto, 2=comfort
  @override
  final int heatingPower;
  @override
  final String targetTemperature;
  // CRITICAL: Must be STRING! Range: "16" to "30"
  @override
  final String bakeTemperature;
  // STRING, e.g., "180"
  @override
  final bool ecoMode;
  // Heating times schedule (HHmmHHmm format or "00000000" for disabled)
  @override
  final String heatingTimeMon1;
  @override
  final String heatingTimeMon2;
  @override
  final String heatingTimeTue1;
  @override
  final String heatingTimeTue2;
  @override
  final String heatingTimeWed1;
  @override
  final String heatingTimeWed2;
  @override
  final String heatingTimeThu1;
  @override
  final String heatingTimeThu2;
  @override
  final String heatingTimeFri1;
  @override
  final String heatingTimeFri2;
  @override
  final String heatingTimeSat1;
  @override
  final String heatingTimeSat2;
  @override
  final String heatingTimeSun1;
  @override
  final String heatingTimeSun2;
  @override
  final bool heatingTimesActiveForComfort;
  @override
  final String setBackTemperature;
  // STRING, Range: "14" to "30"
  // Convection fans
  @override
  final bool convectionFan1Active;
  @override
  final int convectionFan1Level;
  // 0-5
  @override
  final int convectionFan1Area;
  // -30 to +30
  @override
  final bool convectionFan2Active;
  @override
  final int convectionFan2Level;
  // 0-5
  @override
  final int convectionFan2Area;
  // -30 to +30
  // Frost protection
  @override
  final bool frostProtectionActive;
  @override
  final String frostProtectionTemperature;
  // STRING, Range: "4" to "10"
  @override
  final String temperatureOffset;
  // STRING, Range: "-3" to "+3"
  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'RoomPowerRequest')
  final int roomPowerRequest;
  // 1-4
  // Debug fields
  @override
  final int debug0;
  @override
  final int debug1;
  @override
  final int debug2;
  @override
  final int debug3;
  @override
  final int debug4;

  @override
  String toString() {
    return 'StoveControls(revision: $revision, onOff: $onOff, operatingMode: $operatingMode, heatingPower: $heatingPower, targetTemperature: $targetTemperature, bakeTemperature: $bakeTemperature, ecoMode: $ecoMode, heatingTimeMon1: $heatingTimeMon1, heatingTimeMon2: $heatingTimeMon2, heatingTimeTue1: $heatingTimeTue1, heatingTimeTue2: $heatingTimeTue2, heatingTimeWed1: $heatingTimeWed1, heatingTimeWed2: $heatingTimeWed2, heatingTimeThu1: $heatingTimeThu1, heatingTimeThu2: $heatingTimeThu2, heatingTimeFri1: $heatingTimeFri1, heatingTimeFri2: $heatingTimeFri2, heatingTimeSat1: $heatingTimeSat1, heatingTimeSat2: $heatingTimeSat2, heatingTimeSun1: $heatingTimeSun1, heatingTimeSun2: $heatingTimeSun2, heatingTimesActiveForComfort: $heatingTimesActiveForComfort, setBackTemperature: $setBackTemperature, convectionFan1Active: $convectionFan1Active, convectionFan1Level: $convectionFan1Level, convectionFan1Area: $convectionFan1Area, convectionFan2Active: $convectionFan2Active, convectionFan2Level: $convectionFan2Level, convectionFan2Area: $convectionFan2Area, frostProtectionActive: $frostProtectionActive, frostProtectionTemperature: $frostProtectionTemperature, temperatureOffset: $temperatureOffset, roomPowerRequest: $roomPowerRequest, debug0: $debug0, debug1: $debug1, debug2: $debug2, debug3: $debug3, debug4: $debug4)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoveControlsImpl &&
            (identical(other.revision, revision) ||
                other.revision == revision) &&
            (identical(other.onOff, onOff) || other.onOff == onOff) &&
            (identical(other.operatingMode, operatingMode) ||
                other.operatingMode == operatingMode) &&
            (identical(other.heatingPower, heatingPower) ||
                other.heatingPower == heatingPower) &&
            (identical(other.targetTemperature, targetTemperature) ||
                other.targetTemperature == targetTemperature) &&
            (identical(other.bakeTemperature, bakeTemperature) ||
                other.bakeTemperature == bakeTemperature) &&
            (identical(other.ecoMode, ecoMode) || other.ecoMode == ecoMode) &&
            (identical(other.heatingTimeMon1, heatingTimeMon1) ||
                other.heatingTimeMon1 == heatingTimeMon1) &&
            (identical(other.heatingTimeMon2, heatingTimeMon2) ||
                other.heatingTimeMon2 == heatingTimeMon2) &&
            (identical(other.heatingTimeTue1, heatingTimeTue1) ||
                other.heatingTimeTue1 == heatingTimeTue1) &&
            (identical(other.heatingTimeTue2, heatingTimeTue2) ||
                other.heatingTimeTue2 == heatingTimeTue2) &&
            (identical(other.heatingTimeWed1, heatingTimeWed1) ||
                other.heatingTimeWed1 == heatingTimeWed1) &&
            (identical(other.heatingTimeWed2, heatingTimeWed2) ||
                other.heatingTimeWed2 == heatingTimeWed2) &&
            (identical(other.heatingTimeThu1, heatingTimeThu1) ||
                other.heatingTimeThu1 == heatingTimeThu1) &&
            (identical(other.heatingTimeThu2, heatingTimeThu2) ||
                other.heatingTimeThu2 == heatingTimeThu2) &&
            (identical(other.heatingTimeFri1, heatingTimeFri1) ||
                other.heatingTimeFri1 == heatingTimeFri1) &&
            (identical(other.heatingTimeFri2, heatingTimeFri2) ||
                other.heatingTimeFri2 == heatingTimeFri2) &&
            (identical(other.heatingTimeSat1, heatingTimeSat1) ||
                other.heatingTimeSat1 == heatingTimeSat1) &&
            (identical(other.heatingTimeSat2, heatingTimeSat2) ||
                other.heatingTimeSat2 == heatingTimeSat2) &&
            (identical(other.heatingTimeSun1, heatingTimeSun1) ||
                other.heatingTimeSun1 == heatingTimeSun1) &&
            (identical(other.heatingTimeSun2, heatingTimeSun2) ||
                other.heatingTimeSun2 == heatingTimeSun2) &&
            (identical(
                  other.heatingTimesActiveForComfort,
                  heatingTimesActiveForComfort,
                ) ||
                other.heatingTimesActiveForComfort ==
                    heatingTimesActiveForComfort) &&
            (identical(other.setBackTemperature, setBackTemperature) ||
                other.setBackTemperature == setBackTemperature) &&
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
                other.convectionFan2Area == convectionFan2Area) &&
            (identical(other.frostProtectionActive, frostProtectionActive) ||
                other.frostProtectionActive == frostProtectionActive) &&
            (identical(
                  other.frostProtectionTemperature,
                  frostProtectionTemperature,
                ) ||
                other.frostProtectionTemperature ==
                    frostProtectionTemperature) &&
            (identical(other.temperatureOffset, temperatureOffset) ||
                other.temperatureOffset == temperatureOffset) &&
            (identical(other.roomPowerRequest, roomPowerRequest) ||
                other.roomPowerRequest == roomPowerRequest) &&
            (identical(other.debug0, debug0) || other.debug0 == debug0) &&
            (identical(other.debug1, debug1) || other.debug1 == debug1) &&
            (identical(other.debug2, debug2) || other.debug2 == debug2) &&
            (identical(other.debug3, debug3) || other.debug3 == debug3) &&
            (identical(other.debug4, debug4) || other.debug4 == debug4));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    revision,
    onOff,
    operatingMode,
    heatingPower,
    targetTemperature,
    bakeTemperature,
    ecoMode,
    heatingTimeMon1,
    heatingTimeMon2,
    heatingTimeTue1,
    heatingTimeTue2,
    heatingTimeWed1,
    heatingTimeWed2,
    heatingTimeThu1,
    heatingTimeThu2,
    heatingTimeFri1,
    heatingTimeFri2,
    heatingTimeSat1,
    heatingTimeSat2,
    heatingTimeSun1,
    heatingTimeSun2,
    heatingTimesActiveForComfort,
    setBackTemperature,
    convectionFan1Active,
    convectionFan1Level,
    convectionFan1Area,
    convectionFan2Active,
    convectionFan2Level,
    convectionFan2Area,
    frostProtectionActive,
    frostProtectionTemperature,
    temperatureOffset,
    roomPowerRequest,
    debug0,
    debug1,
    debug2,
    debug3,
    debug4,
  ]);

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
    required final int revision,
    required final bool onOff,
    required final int operatingMode,
    required final int heatingPower,
    required final String targetTemperature,
    required final String bakeTemperature,
    required final bool ecoMode,
    required final String heatingTimeMon1,
    required final String heatingTimeMon2,
    required final String heatingTimeTue1,
    required final String heatingTimeTue2,
    required final String heatingTimeWed1,
    required final String heatingTimeWed2,
    required final String heatingTimeThu1,
    required final String heatingTimeThu2,
    required final String heatingTimeFri1,
    required final String heatingTimeFri2,
    required final String heatingTimeSat1,
    required final String heatingTimeSat2,
    required final String heatingTimeSun1,
    required final String heatingTimeSun2,
    required final bool heatingTimesActiveForComfort,
    required final String setBackTemperature,
    required final bool convectionFan1Active,
    required final int convectionFan1Level,
    required final int convectionFan1Area,
    required final bool convectionFan2Active,
    required final int convectionFan2Level,
    required final int convectionFan2Area,
    required final bool frostProtectionActive,
    required final String frostProtectionTemperature,
    required final String temperatureOffset,
    @JsonKey(name: 'RoomPowerRequest') required final int roomPowerRequest,
    required final int debug0,
    required final int debug1,
    required final int debug2,
    required final int debug3,
    required final int debug4,
  }) = _$StoveControlsImpl;
  const _StoveControls._() : super._();

  factory _StoveControls.fromJson(Map<String, dynamic> json) =
      _$StoveControlsImpl.fromJson;

  @override
  int get revision;
  @override
  bool get onOff;
  @override
  int get operatingMode; // 0=manual, 1=auto, 2=comfort
  @override
  int get heatingPower;
  @override
  String get targetTemperature; // CRITICAL: Must be STRING! Range: "16" to "30"
  @override
  String get bakeTemperature; // STRING, e.g., "180"
  @override
  bool get ecoMode; // Heating times schedule (HHmmHHmm format or "00000000" for disabled)
  @override
  String get heatingTimeMon1;
  @override
  String get heatingTimeMon2;
  @override
  String get heatingTimeTue1;
  @override
  String get heatingTimeTue2;
  @override
  String get heatingTimeWed1;
  @override
  String get heatingTimeWed2;
  @override
  String get heatingTimeThu1;
  @override
  String get heatingTimeThu2;
  @override
  String get heatingTimeFri1;
  @override
  String get heatingTimeFri2;
  @override
  String get heatingTimeSat1;
  @override
  String get heatingTimeSat2;
  @override
  String get heatingTimeSun1;
  @override
  String get heatingTimeSun2;
  @override
  bool get heatingTimesActiveForComfort;
  @override
  String get setBackTemperature; // STRING, Range: "14" to "30"
  // Convection fans
  @override
  bool get convectionFan1Active;
  @override
  int get convectionFan1Level; // 0-5
  @override
  int get convectionFan1Area; // -30 to +30
  @override
  bool get convectionFan2Active;
  @override
  int get convectionFan2Level; // 0-5
  @override
  int get convectionFan2Area; // -30 to +30
  // Frost protection
  @override
  bool get frostProtectionActive;
  @override
  String get frostProtectionTemperature; // STRING, Range: "4" to "10"
  @override
  String get temperatureOffset; // STRING, Range: "-3" to "+3"
  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'RoomPowerRequest')
  int get roomPowerRequest; // 1-4
  // Debug fields
  @override
  int get debug0;
  @override
  int get debug1;
  @override
  int get debug2;
  @override
  int get debug3;
  @override
  int get debug4;

  /// Create a copy of StoveControls
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoveControlsImplCopyWith<_$StoveControlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
