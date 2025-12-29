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
  // Temperature & Input Sensors
  String get inputRoomTemperature =>
      throw _privateConstructorUsedError; // °C as string
  int get inputFlameTemperature => throw _privateConstructorUsedError; // °C
  String get inputBakeTemperature =>
      throw _privateConstructorUsedError; // °C or "1024" (N/A)
  String get inputBoardTemperature => throw _privateConstructorUsedError; // °C
  int get inputCurrentStage => throw _privateConstructorUsedError; // 0-100
  int get inputTargetStagePID => throw _privateConstructorUsedError; // 0-100
  int get inputCurrentStagePID => throw _privateConstructorUsedError; // 0-100
  // Status & Error Codes
  int get statusMainState => throw _privateConstructorUsedError;
  int get statusSubState => throw _privateConstructorUsedError;
  int get statusError => throw _privateConstructorUsedError; // 0 = no error
  int get statusSubError => throw _privateConstructorUsedError;
  int get statusWarning => throw _privateConstructorUsedError; // 0 = no warning
  int get statusService => throw _privateConstructorUsedError;
  int get statusWifiStrength =>
      throw _privateConstructorUsedError; // dBm, e.g., -69
  bool get statusFrostStarted => throw _privateConstructorUsedError;
  bool get statusHeatingTimesNotProgrammed =>
      throw _privateConstructorUsedError; // Motor & Fan Outputs
  int get outputDischargeMotor =>
      throw _privateConstructorUsedError; // Auger motor RPM
  int get outputDischargeCurrent =>
      throw _privateConstructorUsedError; // Auger motor current (mA)
  int get outputIDFan =>
      throw _privateConstructorUsedError; // Induced draft fan RPM
  int get outputIDFanTarget =>
      throw _privateConstructorUsedError; // Target fan RPM
  int get outputInsertionMotor =>
      throw _privateConstructorUsedError; // Insertion motor RPM
  int get outputInsertionCurrent =>
      throw _privateConstructorUsedError; // Insertion motor current (mA)
  int get outputAirFlaps =>
      throw _privateConstructorUsedError; // Air flap position 0-1000
  int get outputAirFlapsTargetPosition =>
      throw _privateConstructorUsedError; // Target flap position 0-1000
  // Digital Outputs/Inputs
  bool get outputBurnBackFlapMagnet => throw _privateConstructorUsedError;
  bool get outputGridMotor => throw _privateConstructorUsedError;
  bool get outputIgnition => throw _privateConstructorUsedError;
  bool get inputUpperTemperatureLimiter => throw _privateConstructorUsedError;
  bool get inputPressureSwitch => throw _privateConstructorUsedError;
  int get inputPressureSensor => throw _privateConstructorUsedError; // Pa
  bool get inputGridContact => throw _privateConstructorUsedError;
  bool get inputDoor =>
      throw _privateConstructorUsedError; // true=closed, false=open
  bool get inputCover =>
      throw _privateConstructorUsedError; // true=closed, false=open
  bool get inputExternalRequest => throw _privateConstructorUsedError;
  bool get inputBurnBackFlapSwitch => throw _privateConstructorUsedError;
  bool get inputFlueGasFlapSwitch =>
      throw _privateConstructorUsedError; // System Parameters
  bool get parameterEcoModePossible => throw _privateConstructorUsedError;
  int get parameterFabricationNumber => throw _privateConstructorUsedError;
  int get parameterStoveTypeNumber => throw _privateConstructorUsedError;
  int get parameterLanguageNumber => throw _privateConstructorUsedError;
  int get parameterVersionMainBoard => throw _privateConstructorUsedError;
  int get parameterVersionTFT => throw _privateConstructorUsedError;
  int get parameterVersionWiFi => throw _privateConstructorUsedError;
  int get parameterVersionMainBoardBootLoader =>
      throw _privateConstructorUsedError;
  int get parameterVersionTFTBootLoader => throw _privateConstructorUsedError;
  int get parameterVersionWiFiBootLoader => throw _privateConstructorUsedError;
  int get parameterVersionMainBoardSub => throw _privateConstructorUsedError;
  int get parameterVersionTFTSub => throw _privateConstructorUsedError;
  int get parameterVersionWiFiSub =>
      throw _privateConstructorUsedError; // Runtime & Consumption Statistics
  int get parameterRuntimePellets =>
      throw _privateConstructorUsedError; // hours
  int get parameterRuntimeLogs => throw _privateConstructorUsedError; // hours
  int get parameterFeedRateTotal => throw _privateConstructorUsedError; // kg
  int get parameterFeedRateService =>
      throw _privateConstructorUsedError; // kg since last service
  int get parameterServiceCountdownKg =>
      throw _privateConstructorUsedError; // kg until service due
  int get parameterServiceCountdownTime =>
      throw _privateConstructorUsedError; // hours until service due
  int get parameterIgnitionCount => throw _privateConstructorUsedError;
  int get parameterOnOffCycleCount =>
      throw _privateConstructorUsedError; // Calibration & Tuning
  int get parameterFlameSensorOffset => throw _privateConstructorUsedError;
  int get parameterPressureSensorOffset => throw _privateConstructorUsedError;
  int get parameterSpiralMotorsTuning => throw _privateConstructorUsedError;
  int get parameterIDFanTuning => throw _privateConstructorUsedError;
  int get parameterCleanIntervalBig => throw _privateConstructorUsedError; // kg
  int get parameterKgTillCleaning =>
      throw _privateConstructorUsedError; // Error History (counts 0-19)
  int get parameterErrorCount0 => throw _privateConstructorUsedError;
  int get parameterErrorCount1 => throw _privateConstructorUsedError;
  int get parameterErrorCount2 => throw _privateConstructorUsedError;
  int get parameterErrorCount3 => throw _privateConstructorUsedError;
  int get parameterErrorCount4 => throw _privateConstructorUsedError;
  int get parameterErrorCount5 => throw _privateConstructorUsedError;
  int get parameterErrorCount6 => throw _privateConstructorUsedError;
  int get parameterErrorCount7 => throw _privateConstructorUsedError;
  int get parameterErrorCount8 => throw _privateConstructorUsedError;
  int get parameterErrorCount9 => throw _privateConstructorUsedError;
  int get parameterErrorCount10 => throw _privateConstructorUsedError;
  int get parameterErrorCount11 => throw _privateConstructorUsedError;
  int get parameterErrorCount12 => throw _privateConstructorUsedError;
  int get parameterErrorCount13 => throw _privateConstructorUsedError;
  int get parameterErrorCount14 => throw _privateConstructorUsedError;
  int get parameterErrorCount15 => throw _privateConstructorUsedError;
  int get parameterErrorCount16 => throw _privateConstructorUsedError;
  int get parameterErrorCount17 => throw _privateConstructorUsedError;
  int get parameterErrorCount18 => throw _privateConstructorUsedError;
  int get parameterErrorCount19 =>
      throw _privateConstructorUsedError; // Debug Fields
  int get parameterDebug0 => throw _privateConstructorUsedError;
  int get parameterDebug1 => throw _privateConstructorUsedError;
  int get parameterDebug2 => throw _privateConstructorUsedError;
  int get parameterDebug3 => throw _privateConstructorUsedError;
  int get parameterDebug4 => throw _privateConstructorUsedError;

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
    String inputRoomTemperature,
    int inputFlameTemperature,
    String inputBakeTemperature,
    String inputBoardTemperature,
    int inputCurrentStage,
    int inputTargetStagePID,
    int inputCurrentStagePID,
    int statusMainState,
    int statusSubState,
    int statusError,
    int statusSubError,
    int statusWarning,
    int statusService,
    int statusWifiStrength,
    bool statusFrostStarted,
    bool statusHeatingTimesNotProgrammed,
    int outputDischargeMotor,
    int outputDischargeCurrent,
    int outputIDFan,
    int outputIDFanTarget,
    int outputInsertionMotor,
    int outputInsertionCurrent,
    int outputAirFlaps,
    int outputAirFlapsTargetPosition,
    bool outputBurnBackFlapMagnet,
    bool outputGridMotor,
    bool outputIgnition,
    bool inputUpperTemperatureLimiter,
    bool inputPressureSwitch,
    int inputPressureSensor,
    bool inputGridContact,
    bool inputDoor,
    bool inputCover,
    bool inputExternalRequest,
    bool inputBurnBackFlapSwitch,
    bool inputFlueGasFlapSwitch,
    bool parameterEcoModePossible,
    int parameterFabricationNumber,
    int parameterStoveTypeNumber,
    int parameterLanguageNumber,
    int parameterVersionMainBoard,
    int parameterVersionTFT,
    int parameterVersionWiFi,
    int parameterVersionMainBoardBootLoader,
    int parameterVersionTFTBootLoader,
    int parameterVersionWiFiBootLoader,
    int parameterVersionMainBoardSub,
    int parameterVersionTFTSub,
    int parameterVersionWiFiSub,
    int parameterRuntimePellets,
    int parameterRuntimeLogs,
    int parameterFeedRateTotal,
    int parameterFeedRateService,
    int parameterServiceCountdownKg,
    int parameterServiceCountdownTime,
    int parameterIgnitionCount,
    int parameterOnOffCycleCount,
    int parameterFlameSensorOffset,
    int parameterPressureSensorOffset,
    int parameterSpiralMotorsTuning,
    int parameterIDFanTuning,
    int parameterCleanIntervalBig,
    int parameterKgTillCleaning,
    int parameterErrorCount0,
    int parameterErrorCount1,
    int parameterErrorCount2,
    int parameterErrorCount3,
    int parameterErrorCount4,
    int parameterErrorCount5,
    int parameterErrorCount6,
    int parameterErrorCount7,
    int parameterErrorCount8,
    int parameterErrorCount9,
    int parameterErrorCount10,
    int parameterErrorCount11,
    int parameterErrorCount12,
    int parameterErrorCount13,
    int parameterErrorCount14,
    int parameterErrorCount15,
    int parameterErrorCount16,
    int parameterErrorCount17,
    int parameterErrorCount18,
    int parameterErrorCount19,
    int parameterDebug0,
    int parameterDebug1,
    int parameterDebug2,
    int parameterDebug3,
    int parameterDebug4,
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
    Object? inputBakeTemperature = null,
    Object? inputBoardTemperature = null,
    Object? inputCurrentStage = null,
    Object? inputTargetStagePID = null,
    Object? inputCurrentStagePID = null,
    Object? statusMainState = null,
    Object? statusSubState = null,
    Object? statusError = null,
    Object? statusSubError = null,
    Object? statusWarning = null,
    Object? statusService = null,
    Object? statusWifiStrength = null,
    Object? statusFrostStarted = null,
    Object? statusHeatingTimesNotProgrammed = null,
    Object? outputDischargeMotor = null,
    Object? outputDischargeCurrent = null,
    Object? outputIDFan = null,
    Object? outputIDFanTarget = null,
    Object? outputInsertionMotor = null,
    Object? outputInsertionCurrent = null,
    Object? outputAirFlaps = null,
    Object? outputAirFlapsTargetPosition = null,
    Object? outputBurnBackFlapMagnet = null,
    Object? outputGridMotor = null,
    Object? outputIgnition = null,
    Object? inputUpperTemperatureLimiter = null,
    Object? inputPressureSwitch = null,
    Object? inputPressureSensor = null,
    Object? inputGridContact = null,
    Object? inputDoor = null,
    Object? inputCover = null,
    Object? inputExternalRequest = null,
    Object? inputBurnBackFlapSwitch = null,
    Object? inputFlueGasFlapSwitch = null,
    Object? parameterEcoModePossible = null,
    Object? parameterFabricationNumber = null,
    Object? parameterStoveTypeNumber = null,
    Object? parameterLanguageNumber = null,
    Object? parameterVersionMainBoard = null,
    Object? parameterVersionTFT = null,
    Object? parameterVersionWiFi = null,
    Object? parameterVersionMainBoardBootLoader = null,
    Object? parameterVersionTFTBootLoader = null,
    Object? parameterVersionWiFiBootLoader = null,
    Object? parameterVersionMainBoardSub = null,
    Object? parameterVersionTFTSub = null,
    Object? parameterVersionWiFiSub = null,
    Object? parameterRuntimePellets = null,
    Object? parameterRuntimeLogs = null,
    Object? parameterFeedRateTotal = null,
    Object? parameterFeedRateService = null,
    Object? parameterServiceCountdownKg = null,
    Object? parameterServiceCountdownTime = null,
    Object? parameterIgnitionCount = null,
    Object? parameterOnOffCycleCount = null,
    Object? parameterFlameSensorOffset = null,
    Object? parameterPressureSensorOffset = null,
    Object? parameterSpiralMotorsTuning = null,
    Object? parameterIDFanTuning = null,
    Object? parameterCleanIntervalBig = null,
    Object? parameterKgTillCleaning = null,
    Object? parameterErrorCount0 = null,
    Object? parameterErrorCount1 = null,
    Object? parameterErrorCount2 = null,
    Object? parameterErrorCount3 = null,
    Object? parameterErrorCount4 = null,
    Object? parameterErrorCount5 = null,
    Object? parameterErrorCount6 = null,
    Object? parameterErrorCount7 = null,
    Object? parameterErrorCount8 = null,
    Object? parameterErrorCount9 = null,
    Object? parameterErrorCount10 = null,
    Object? parameterErrorCount11 = null,
    Object? parameterErrorCount12 = null,
    Object? parameterErrorCount13 = null,
    Object? parameterErrorCount14 = null,
    Object? parameterErrorCount15 = null,
    Object? parameterErrorCount16 = null,
    Object? parameterErrorCount17 = null,
    Object? parameterErrorCount18 = null,
    Object? parameterErrorCount19 = null,
    Object? parameterDebug0 = null,
    Object? parameterDebug1 = null,
    Object? parameterDebug2 = null,
    Object? parameterDebug3 = null,
    Object? parameterDebug4 = null,
  }) {
    return _then(
      _value.copyWith(
            inputRoomTemperature: null == inputRoomTemperature
                ? _value.inputRoomTemperature
                : inputRoomTemperature // ignore: cast_nullable_to_non_nullable
                      as String,
            inputFlameTemperature: null == inputFlameTemperature
                ? _value.inputFlameTemperature
                : inputFlameTemperature // ignore: cast_nullable_to_non_nullable
                      as int,
            inputBakeTemperature: null == inputBakeTemperature
                ? _value.inputBakeTemperature
                : inputBakeTemperature // ignore: cast_nullable_to_non_nullable
                      as String,
            inputBoardTemperature: null == inputBoardTemperature
                ? _value.inputBoardTemperature
                : inputBoardTemperature // ignore: cast_nullable_to_non_nullable
                      as String,
            inputCurrentStage: null == inputCurrentStage
                ? _value.inputCurrentStage
                : inputCurrentStage // ignore: cast_nullable_to_non_nullable
                      as int,
            inputTargetStagePID: null == inputTargetStagePID
                ? _value.inputTargetStagePID
                : inputTargetStagePID // ignore: cast_nullable_to_non_nullable
                      as int,
            inputCurrentStagePID: null == inputCurrentStagePID
                ? _value.inputCurrentStagePID
                : inputCurrentStagePID // ignore: cast_nullable_to_non_nullable
                      as int,
            statusMainState: null == statusMainState
                ? _value.statusMainState
                : statusMainState // ignore: cast_nullable_to_non_nullable
                      as int,
            statusSubState: null == statusSubState
                ? _value.statusSubState
                : statusSubState // ignore: cast_nullable_to_non_nullable
                      as int,
            statusError: null == statusError
                ? _value.statusError
                : statusError // ignore: cast_nullable_to_non_nullable
                      as int,
            statusSubError: null == statusSubError
                ? _value.statusSubError
                : statusSubError // ignore: cast_nullable_to_non_nullable
                      as int,
            statusWarning: null == statusWarning
                ? _value.statusWarning
                : statusWarning // ignore: cast_nullable_to_non_nullable
                      as int,
            statusService: null == statusService
                ? _value.statusService
                : statusService // ignore: cast_nullable_to_non_nullable
                      as int,
            statusWifiStrength: null == statusWifiStrength
                ? _value.statusWifiStrength
                : statusWifiStrength // ignore: cast_nullable_to_non_nullable
                      as int,
            statusFrostStarted: null == statusFrostStarted
                ? _value.statusFrostStarted
                : statusFrostStarted // ignore: cast_nullable_to_non_nullable
                      as bool,
            statusHeatingTimesNotProgrammed:
                null == statusHeatingTimesNotProgrammed
                ? _value.statusHeatingTimesNotProgrammed
                : statusHeatingTimesNotProgrammed // ignore: cast_nullable_to_non_nullable
                      as bool,
            outputDischargeMotor: null == outputDischargeMotor
                ? _value.outputDischargeMotor
                : outputDischargeMotor // ignore: cast_nullable_to_non_nullable
                      as int,
            outputDischargeCurrent: null == outputDischargeCurrent
                ? _value.outputDischargeCurrent
                : outputDischargeCurrent // ignore: cast_nullable_to_non_nullable
                      as int,
            outputIDFan: null == outputIDFan
                ? _value.outputIDFan
                : outputIDFan // ignore: cast_nullable_to_non_nullable
                      as int,
            outputIDFanTarget: null == outputIDFanTarget
                ? _value.outputIDFanTarget
                : outputIDFanTarget // ignore: cast_nullable_to_non_nullable
                      as int,
            outputInsertionMotor: null == outputInsertionMotor
                ? _value.outputInsertionMotor
                : outputInsertionMotor // ignore: cast_nullable_to_non_nullable
                      as int,
            outputInsertionCurrent: null == outputInsertionCurrent
                ? _value.outputInsertionCurrent
                : outputInsertionCurrent // ignore: cast_nullable_to_non_nullable
                      as int,
            outputAirFlaps: null == outputAirFlaps
                ? _value.outputAirFlaps
                : outputAirFlaps // ignore: cast_nullable_to_non_nullable
                      as int,
            outputAirFlapsTargetPosition: null == outputAirFlapsTargetPosition
                ? _value.outputAirFlapsTargetPosition
                : outputAirFlapsTargetPosition // ignore: cast_nullable_to_non_nullable
                      as int,
            outputBurnBackFlapMagnet: null == outputBurnBackFlapMagnet
                ? _value.outputBurnBackFlapMagnet
                : outputBurnBackFlapMagnet // ignore: cast_nullable_to_non_nullable
                      as bool,
            outputGridMotor: null == outputGridMotor
                ? _value.outputGridMotor
                : outputGridMotor // ignore: cast_nullable_to_non_nullable
                      as bool,
            outputIgnition: null == outputIgnition
                ? _value.outputIgnition
                : outputIgnition // ignore: cast_nullable_to_non_nullable
                      as bool,
            inputUpperTemperatureLimiter: null == inputUpperTemperatureLimiter
                ? _value.inputUpperTemperatureLimiter
                : inputUpperTemperatureLimiter // ignore: cast_nullable_to_non_nullable
                      as bool,
            inputPressureSwitch: null == inputPressureSwitch
                ? _value.inputPressureSwitch
                : inputPressureSwitch // ignore: cast_nullable_to_non_nullable
                      as bool,
            inputPressureSensor: null == inputPressureSensor
                ? _value.inputPressureSensor
                : inputPressureSensor // ignore: cast_nullable_to_non_nullable
                      as int,
            inputGridContact: null == inputGridContact
                ? _value.inputGridContact
                : inputGridContact // ignore: cast_nullable_to_non_nullable
                      as bool,
            inputDoor: null == inputDoor
                ? _value.inputDoor
                : inputDoor // ignore: cast_nullable_to_non_nullable
                      as bool,
            inputCover: null == inputCover
                ? _value.inputCover
                : inputCover // ignore: cast_nullable_to_non_nullable
                      as bool,
            inputExternalRequest: null == inputExternalRequest
                ? _value.inputExternalRequest
                : inputExternalRequest // ignore: cast_nullable_to_non_nullable
                      as bool,
            inputBurnBackFlapSwitch: null == inputBurnBackFlapSwitch
                ? _value.inputBurnBackFlapSwitch
                : inputBurnBackFlapSwitch // ignore: cast_nullable_to_non_nullable
                      as bool,
            inputFlueGasFlapSwitch: null == inputFlueGasFlapSwitch
                ? _value.inputFlueGasFlapSwitch
                : inputFlueGasFlapSwitch // ignore: cast_nullable_to_non_nullable
                      as bool,
            parameterEcoModePossible: null == parameterEcoModePossible
                ? _value.parameterEcoModePossible
                : parameterEcoModePossible // ignore: cast_nullable_to_non_nullable
                      as bool,
            parameterFabricationNumber: null == parameterFabricationNumber
                ? _value.parameterFabricationNumber
                : parameterFabricationNumber // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterStoveTypeNumber: null == parameterStoveTypeNumber
                ? _value.parameterStoveTypeNumber
                : parameterStoveTypeNumber // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterLanguageNumber: null == parameterLanguageNumber
                ? _value.parameterLanguageNumber
                : parameterLanguageNumber // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterVersionMainBoard: null == parameterVersionMainBoard
                ? _value.parameterVersionMainBoard
                : parameterVersionMainBoard // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterVersionTFT: null == parameterVersionTFT
                ? _value.parameterVersionTFT
                : parameterVersionTFT // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterVersionWiFi: null == parameterVersionWiFi
                ? _value.parameterVersionWiFi
                : parameterVersionWiFi // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterVersionMainBoardBootLoader:
                null == parameterVersionMainBoardBootLoader
                ? _value.parameterVersionMainBoardBootLoader
                : parameterVersionMainBoardBootLoader // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterVersionTFTBootLoader: null == parameterVersionTFTBootLoader
                ? _value.parameterVersionTFTBootLoader
                : parameterVersionTFTBootLoader // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterVersionWiFiBootLoader:
                null == parameterVersionWiFiBootLoader
                ? _value.parameterVersionWiFiBootLoader
                : parameterVersionWiFiBootLoader // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterVersionMainBoardSub: null == parameterVersionMainBoardSub
                ? _value.parameterVersionMainBoardSub
                : parameterVersionMainBoardSub // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterVersionTFTSub: null == parameterVersionTFTSub
                ? _value.parameterVersionTFTSub
                : parameterVersionTFTSub // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterVersionWiFiSub: null == parameterVersionWiFiSub
                ? _value.parameterVersionWiFiSub
                : parameterVersionWiFiSub // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterRuntimePellets: null == parameterRuntimePellets
                ? _value.parameterRuntimePellets
                : parameterRuntimePellets // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterRuntimeLogs: null == parameterRuntimeLogs
                ? _value.parameterRuntimeLogs
                : parameterRuntimeLogs // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterFeedRateTotal: null == parameterFeedRateTotal
                ? _value.parameterFeedRateTotal
                : parameterFeedRateTotal // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterFeedRateService: null == parameterFeedRateService
                ? _value.parameterFeedRateService
                : parameterFeedRateService // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterServiceCountdownKg: null == parameterServiceCountdownKg
                ? _value.parameterServiceCountdownKg
                : parameterServiceCountdownKg // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterServiceCountdownTime: null == parameterServiceCountdownTime
                ? _value.parameterServiceCountdownTime
                : parameterServiceCountdownTime // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterIgnitionCount: null == parameterIgnitionCount
                ? _value.parameterIgnitionCount
                : parameterIgnitionCount // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterOnOffCycleCount: null == parameterOnOffCycleCount
                ? _value.parameterOnOffCycleCount
                : parameterOnOffCycleCount // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterFlameSensorOffset: null == parameterFlameSensorOffset
                ? _value.parameterFlameSensorOffset
                : parameterFlameSensorOffset // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterPressureSensorOffset: null == parameterPressureSensorOffset
                ? _value.parameterPressureSensorOffset
                : parameterPressureSensorOffset // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterSpiralMotorsTuning: null == parameterSpiralMotorsTuning
                ? _value.parameterSpiralMotorsTuning
                : parameterSpiralMotorsTuning // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterIDFanTuning: null == parameterIDFanTuning
                ? _value.parameterIDFanTuning
                : parameterIDFanTuning // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterCleanIntervalBig: null == parameterCleanIntervalBig
                ? _value.parameterCleanIntervalBig
                : parameterCleanIntervalBig // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterKgTillCleaning: null == parameterKgTillCleaning
                ? _value.parameterKgTillCleaning
                : parameterKgTillCleaning // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterErrorCount0: null == parameterErrorCount0
                ? _value.parameterErrorCount0
                : parameterErrorCount0 // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterErrorCount1: null == parameterErrorCount1
                ? _value.parameterErrorCount1
                : parameterErrorCount1 // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterErrorCount2: null == parameterErrorCount2
                ? _value.parameterErrorCount2
                : parameterErrorCount2 // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterErrorCount3: null == parameterErrorCount3
                ? _value.parameterErrorCount3
                : parameterErrorCount3 // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterErrorCount4: null == parameterErrorCount4
                ? _value.parameterErrorCount4
                : parameterErrorCount4 // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterErrorCount5: null == parameterErrorCount5
                ? _value.parameterErrorCount5
                : parameterErrorCount5 // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterErrorCount6: null == parameterErrorCount6
                ? _value.parameterErrorCount6
                : parameterErrorCount6 // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterErrorCount7: null == parameterErrorCount7
                ? _value.parameterErrorCount7
                : parameterErrorCount7 // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterErrorCount8: null == parameterErrorCount8
                ? _value.parameterErrorCount8
                : parameterErrorCount8 // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterErrorCount9: null == parameterErrorCount9
                ? _value.parameterErrorCount9
                : parameterErrorCount9 // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterErrorCount10: null == parameterErrorCount10
                ? _value.parameterErrorCount10
                : parameterErrorCount10 // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterErrorCount11: null == parameterErrorCount11
                ? _value.parameterErrorCount11
                : parameterErrorCount11 // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterErrorCount12: null == parameterErrorCount12
                ? _value.parameterErrorCount12
                : parameterErrorCount12 // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterErrorCount13: null == parameterErrorCount13
                ? _value.parameterErrorCount13
                : parameterErrorCount13 // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterErrorCount14: null == parameterErrorCount14
                ? _value.parameterErrorCount14
                : parameterErrorCount14 // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterErrorCount15: null == parameterErrorCount15
                ? _value.parameterErrorCount15
                : parameterErrorCount15 // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterErrorCount16: null == parameterErrorCount16
                ? _value.parameterErrorCount16
                : parameterErrorCount16 // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterErrorCount17: null == parameterErrorCount17
                ? _value.parameterErrorCount17
                : parameterErrorCount17 // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterErrorCount18: null == parameterErrorCount18
                ? _value.parameterErrorCount18
                : parameterErrorCount18 // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterErrorCount19: null == parameterErrorCount19
                ? _value.parameterErrorCount19
                : parameterErrorCount19 // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterDebug0: null == parameterDebug0
                ? _value.parameterDebug0
                : parameterDebug0 // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterDebug1: null == parameterDebug1
                ? _value.parameterDebug1
                : parameterDebug1 // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterDebug2: null == parameterDebug2
                ? _value.parameterDebug2
                : parameterDebug2 // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterDebug3: null == parameterDebug3
                ? _value.parameterDebug3
                : parameterDebug3 // ignore: cast_nullable_to_non_nullable
                      as int,
            parameterDebug4: null == parameterDebug4
                ? _value.parameterDebug4
                : parameterDebug4 // ignore: cast_nullable_to_non_nullable
                      as int,
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
    String inputRoomTemperature,
    int inputFlameTemperature,
    String inputBakeTemperature,
    String inputBoardTemperature,
    int inputCurrentStage,
    int inputTargetStagePID,
    int inputCurrentStagePID,
    int statusMainState,
    int statusSubState,
    int statusError,
    int statusSubError,
    int statusWarning,
    int statusService,
    int statusWifiStrength,
    bool statusFrostStarted,
    bool statusHeatingTimesNotProgrammed,
    int outputDischargeMotor,
    int outputDischargeCurrent,
    int outputIDFan,
    int outputIDFanTarget,
    int outputInsertionMotor,
    int outputInsertionCurrent,
    int outputAirFlaps,
    int outputAirFlapsTargetPosition,
    bool outputBurnBackFlapMagnet,
    bool outputGridMotor,
    bool outputIgnition,
    bool inputUpperTemperatureLimiter,
    bool inputPressureSwitch,
    int inputPressureSensor,
    bool inputGridContact,
    bool inputDoor,
    bool inputCover,
    bool inputExternalRequest,
    bool inputBurnBackFlapSwitch,
    bool inputFlueGasFlapSwitch,
    bool parameterEcoModePossible,
    int parameterFabricationNumber,
    int parameterStoveTypeNumber,
    int parameterLanguageNumber,
    int parameterVersionMainBoard,
    int parameterVersionTFT,
    int parameterVersionWiFi,
    int parameterVersionMainBoardBootLoader,
    int parameterVersionTFTBootLoader,
    int parameterVersionWiFiBootLoader,
    int parameterVersionMainBoardSub,
    int parameterVersionTFTSub,
    int parameterVersionWiFiSub,
    int parameterRuntimePellets,
    int parameterRuntimeLogs,
    int parameterFeedRateTotal,
    int parameterFeedRateService,
    int parameterServiceCountdownKg,
    int parameterServiceCountdownTime,
    int parameterIgnitionCount,
    int parameterOnOffCycleCount,
    int parameterFlameSensorOffset,
    int parameterPressureSensorOffset,
    int parameterSpiralMotorsTuning,
    int parameterIDFanTuning,
    int parameterCleanIntervalBig,
    int parameterKgTillCleaning,
    int parameterErrorCount0,
    int parameterErrorCount1,
    int parameterErrorCount2,
    int parameterErrorCount3,
    int parameterErrorCount4,
    int parameterErrorCount5,
    int parameterErrorCount6,
    int parameterErrorCount7,
    int parameterErrorCount8,
    int parameterErrorCount9,
    int parameterErrorCount10,
    int parameterErrorCount11,
    int parameterErrorCount12,
    int parameterErrorCount13,
    int parameterErrorCount14,
    int parameterErrorCount15,
    int parameterErrorCount16,
    int parameterErrorCount17,
    int parameterErrorCount18,
    int parameterErrorCount19,
    int parameterDebug0,
    int parameterDebug1,
    int parameterDebug2,
    int parameterDebug3,
    int parameterDebug4,
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
    Object? inputBakeTemperature = null,
    Object? inputBoardTemperature = null,
    Object? inputCurrentStage = null,
    Object? inputTargetStagePID = null,
    Object? inputCurrentStagePID = null,
    Object? statusMainState = null,
    Object? statusSubState = null,
    Object? statusError = null,
    Object? statusSubError = null,
    Object? statusWarning = null,
    Object? statusService = null,
    Object? statusWifiStrength = null,
    Object? statusFrostStarted = null,
    Object? statusHeatingTimesNotProgrammed = null,
    Object? outputDischargeMotor = null,
    Object? outputDischargeCurrent = null,
    Object? outputIDFan = null,
    Object? outputIDFanTarget = null,
    Object? outputInsertionMotor = null,
    Object? outputInsertionCurrent = null,
    Object? outputAirFlaps = null,
    Object? outputAirFlapsTargetPosition = null,
    Object? outputBurnBackFlapMagnet = null,
    Object? outputGridMotor = null,
    Object? outputIgnition = null,
    Object? inputUpperTemperatureLimiter = null,
    Object? inputPressureSwitch = null,
    Object? inputPressureSensor = null,
    Object? inputGridContact = null,
    Object? inputDoor = null,
    Object? inputCover = null,
    Object? inputExternalRequest = null,
    Object? inputBurnBackFlapSwitch = null,
    Object? inputFlueGasFlapSwitch = null,
    Object? parameterEcoModePossible = null,
    Object? parameterFabricationNumber = null,
    Object? parameterStoveTypeNumber = null,
    Object? parameterLanguageNumber = null,
    Object? parameterVersionMainBoard = null,
    Object? parameterVersionTFT = null,
    Object? parameterVersionWiFi = null,
    Object? parameterVersionMainBoardBootLoader = null,
    Object? parameterVersionTFTBootLoader = null,
    Object? parameterVersionWiFiBootLoader = null,
    Object? parameterVersionMainBoardSub = null,
    Object? parameterVersionTFTSub = null,
    Object? parameterVersionWiFiSub = null,
    Object? parameterRuntimePellets = null,
    Object? parameterRuntimeLogs = null,
    Object? parameterFeedRateTotal = null,
    Object? parameterFeedRateService = null,
    Object? parameterServiceCountdownKg = null,
    Object? parameterServiceCountdownTime = null,
    Object? parameterIgnitionCount = null,
    Object? parameterOnOffCycleCount = null,
    Object? parameterFlameSensorOffset = null,
    Object? parameterPressureSensorOffset = null,
    Object? parameterSpiralMotorsTuning = null,
    Object? parameterIDFanTuning = null,
    Object? parameterCleanIntervalBig = null,
    Object? parameterKgTillCleaning = null,
    Object? parameterErrorCount0 = null,
    Object? parameterErrorCount1 = null,
    Object? parameterErrorCount2 = null,
    Object? parameterErrorCount3 = null,
    Object? parameterErrorCount4 = null,
    Object? parameterErrorCount5 = null,
    Object? parameterErrorCount6 = null,
    Object? parameterErrorCount7 = null,
    Object? parameterErrorCount8 = null,
    Object? parameterErrorCount9 = null,
    Object? parameterErrorCount10 = null,
    Object? parameterErrorCount11 = null,
    Object? parameterErrorCount12 = null,
    Object? parameterErrorCount13 = null,
    Object? parameterErrorCount14 = null,
    Object? parameterErrorCount15 = null,
    Object? parameterErrorCount16 = null,
    Object? parameterErrorCount17 = null,
    Object? parameterErrorCount18 = null,
    Object? parameterErrorCount19 = null,
    Object? parameterDebug0 = null,
    Object? parameterDebug1 = null,
    Object? parameterDebug2 = null,
    Object? parameterDebug3 = null,
    Object? parameterDebug4 = null,
  }) {
    return _then(
      _$StoveSensorsImpl(
        inputRoomTemperature: null == inputRoomTemperature
            ? _value.inputRoomTemperature
            : inputRoomTemperature // ignore: cast_nullable_to_non_nullable
                  as String,
        inputFlameTemperature: null == inputFlameTemperature
            ? _value.inputFlameTemperature
            : inputFlameTemperature // ignore: cast_nullable_to_non_nullable
                  as int,
        inputBakeTemperature: null == inputBakeTemperature
            ? _value.inputBakeTemperature
            : inputBakeTemperature // ignore: cast_nullable_to_non_nullable
                  as String,
        inputBoardTemperature: null == inputBoardTemperature
            ? _value.inputBoardTemperature
            : inputBoardTemperature // ignore: cast_nullable_to_non_nullable
                  as String,
        inputCurrentStage: null == inputCurrentStage
            ? _value.inputCurrentStage
            : inputCurrentStage // ignore: cast_nullable_to_non_nullable
                  as int,
        inputTargetStagePID: null == inputTargetStagePID
            ? _value.inputTargetStagePID
            : inputTargetStagePID // ignore: cast_nullable_to_non_nullable
                  as int,
        inputCurrentStagePID: null == inputCurrentStagePID
            ? _value.inputCurrentStagePID
            : inputCurrentStagePID // ignore: cast_nullable_to_non_nullable
                  as int,
        statusMainState: null == statusMainState
            ? _value.statusMainState
            : statusMainState // ignore: cast_nullable_to_non_nullable
                  as int,
        statusSubState: null == statusSubState
            ? _value.statusSubState
            : statusSubState // ignore: cast_nullable_to_non_nullable
                  as int,
        statusError: null == statusError
            ? _value.statusError
            : statusError // ignore: cast_nullable_to_non_nullable
                  as int,
        statusSubError: null == statusSubError
            ? _value.statusSubError
            : statusSubError // ignore: cast_nullable_to_non_nullable
                  as int,
        statusWarning: null == statusWarning
            ? _value.statusWarning
            : statusWarning // ignore: cast_nullable_to_non_nullable
                  as int,
        statusService: null == statusService
            ? _value.statusService
            : statusService // ignore: cast_nullable_to_non_nullable
                  as int,
        statusWifiStrength: null == statusWifiStrength
            ? _value.statusWifiStrength
            : statusWifiStrength // ignore: cast_nullable_to_non_nullable
                  as int,
        statusFrostStarted: null == statusFrostStarted
            ? _value.statusFrostStarted
            : statusFrostStarted // ignore: cast_nullable_to_non_nullable
                  as bool,
        statusHeatingTimesNotProgrammed: null == statusHeatingTimesNotProgrammed
            ? _value.statusHeatingTimesNotProgrammed
            : statusHeatingTimesNotProgrammed // ignore: cast_nullable_to_non_nullable
                  as bool,
        outputDischargeMotor: null == outputDischargeMotor
            ? _value.outputDischargeMotor
            : outputDischargeMotor // ignore: cast_nullable_to_non_nullable
                  as int,
        outputDischargeCurrent: null == outputDischargeCurrent
            ? _value.outputDischargeCurrent
            : outputDischargeCurrent // ignore: cast_nullable_to_non_nullable
                  as int,
        outputIDFan: null == outputIDFan
            ? _value.outputIDFan
            : outputIDFan // ignore: cast_nullable_to_non_nullable
                  as int,
        outputIDFanTarget: null == outputIDFanTarget
            ? _value.outputIDFanTarget
            : outputIDFanTarget // ignore: cast_nullable_to_non_nullable
                  as int,
        outputInsertionMotor: null == outputInsertionMotor
            ? _value.outputInsertionMotor
            : outputInsertionMotor // ignore: cast_nullable_to_non_nullable
                  as int,
        outputInsertionCurrent: null == outputInsertionCurrent
            ? _value.outputInsertionCurrent
            : outputInsertionCurrent // ignore: cast_nullable_to_non_nullable
                  as int,
        outputAirFlaps: null == outputAirFlaps
            ? _value.outputAirFlaps
            : outputAirFlaps // ignore: cast_nullable_to_non_nullable
                  as int,
        outputAirFlapsTargetPosition: null == outputAirFlapsTargetPosition
            ? _value.outputAirFlapsTargetPosition
            : outputAirFlapsTargetPosition // ignore: cast_nullable_to_non_nullable
                  as int,
        outputBurnBackFlapMagnet: null == outputBurnBackFlapMagnet
            ? _value.outputBurnBackFlapMagnet
            : outputBurnBackFlapMagnet // ignore: cast_nullable_to_non_nullable
                  as bool,
        outputGridMotor: null == outputGridMotor
            ? _value.outputGridMotor
            : outputGridMotor // ignore: cast_nullable_to_non_nullable
                  as bool,
        outputIgnition: null == outputIgnition
            ? _value.outputIgnition
            : outputIgnition // ignore: cast_nullable_to_non_nullable
                  as bool,
        inputUpperTemperatureLimiter: null == inputUpperTemperatureLimiter
            ? _value.inputUpperTemperatureLimiter
            : inputUpperTemperatureLimiter // ignore: cast_nullable_to_non_nullable
                  as bool,
        inputPressureSwitch: null == inputPressureSwitch
            ? _value.inputPressureSwitch
            : inputPressureSwitch // ignore: cast_nullable_to_non_nullable
                  as bool,
        inputPressureSensor: null == inputPressureSensor
            ? _value.inputPressureSensor
            : inputPressureSensor // ignore: cast_nullable_to_non_nullable
                  as int,
        inputGridContact: null == inputGridContact
            ? _value.inputGridContact
            : inputGridContact // ignore: cast_nullable_to_non_nullable
                  as bool,
        inputDoor: null == inputDoor
            ? _value.inputDoor
            : inputDoor // ignore: cast_nullable_to_non_nullable
                  as bool,
        inputCover: null == inputCover
            ? _value.inputCover
            : inputCover // ignore: cast_nullable_to_non_nullable
                  as bool,
        inputExternalRequest: null == inputExternalRequest
            ? _value.inputExternalRequest
            : inputExternalRequest // ignore: cast_nullable_to_non_nullable
                  as bool,
        inputBurnBackFlapSwitch: null == inputBurnBackFlapSwitch
            ? _value.inputBurnBackFlapSwitch
            : inputBurnBackFlapSwitch // ignore: cast_nullable_to_non_nullable
                  as bool,
        inputFlueGasFlapSwitch: null == inputFlueGasFlapSwitch
            ? _value.inputFlueGasFlapSwitch
            : inputFlueGasFlapSwitch // ignore: cast_nullable_to_non_nullable
                  as bool,
        parameterEcoModePossible: null == parameterEcoModePossible
            ? _value.parameterEcoModePossible
            : parameterEcoModePossible // ignore: cast_nullable_to_non_nullable
                  as bool,
        parameterFabricationNumber: null == parameterFabricationNumber
            ? _value.parameterFabricationNumber
            : parameterFabricationNumber // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterStoveTypeNumber: null == parameterStoveTypeNumber
            ? _value.parameterStoveTypeNumber
            : parameterStoveTypeNumber // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterLanguageNumber: null == parameterLanguageNumber
            ? _value.parameterLanguageNumber
            : parameterLanguageNumber // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterVersionMainBoard: null == parameterVersionMainBoard
            ? _value.parameterVersionMainBoard
            : parameterVersionMainBoard // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterVersionTFT: null == parameterVersionTFT
            ? _value.parameterVersionTFT
            : parameterVersionTFT // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterVersionWiFi: null == parameterVersionWiFi
            ? _value.parameterVersionWiFi
            : parameterVersionWiFi // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterVersionMainBoardBootLoader:
            null == parameterVersionMainBoardBootLoader
            ? _value.parameterVersionMainBoardBootLoader
            : parameterVersionMainBoardBootLoader // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterVersionTFTBootLoader: null == parameterVersionTFTBootLoader
            ? _value.parameterVersionTFTBootLoader
            : parameterVersionTFTBootLoader // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterVersionWiFiBootLoader: null == parameterVersionWiFiBootLoader
            ? _value.parameterVersionWiFiBootLoader
            : parameterVersionWiFiBootLoader // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterVersionMainBoardSub: null == parameterVersionMainBoardSub
            ? _value.parameterVersionMainBoardSub
            : parameterVersionMainBoardSub // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterVersionTFTSub: null == parameterVersionTFTSub
            ? _value.parameterVersionTFTSub
            : parameterVersionTFTSub // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterVersionWiFiSub: null == parameterVersionWiFiSub
            ? _value.parameterVersionWiFiSub
            : parameterVersionWiFiSub // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterRuntimePellets: null == parameterRuntimePellets
            ? _value.parameterRuntimePellets
            : parameterRuntimePellets // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterRuntimeLogs: null == parameterRuntimeLogs
            ? _value.parameterRuntimeLogs
            : parameterRuntimeLogs // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterFeedRateTotal: null == parameterFeedRateTotal
            ? _value.parameterFeedRateTotal
            : parameterFeedRateTotal // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterFeedRateService: null == parameterFeedRateService
            ? _value.parameterFeedRateService
            : parameterFeedRateService // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterServiceCountdownKg: null == parameterServiceCountdownKg
            ? _value.parameterServiceCountdownKg
            : parameterServiceCountdownKg // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterServiceCountdownTime: null == parameterServiceCountdownTime
            ? _value.parameterServiceCountdownTime
            : parameterServiceCountdownTime // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterIgnitionCount: null == parameterIgnitionCount
            ? _value.parameterIgnitionCount
            : parameterIgnitionCount // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterOnOffCycleCount: null == parameterOnOffCycleCount
            ? _value.parameterOnOffCycleCount
            : parameterOnOffCycleCount // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterFlameSensorOffset: null == parameterFlameSensorOffset
            ? _value.parameterFlameSensorOffset
            : parameterFlameSensorOffset // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterPressureSensorOffset: null == parameterPressureSensorOffset
            ? _value.parameterPressureSensorOffset
            : parameterPressureSensorOffset // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterSpiralMotorsTuning: null == parameterSpiralMotorsTuning
            ? _value.parameterSpiralMotorsTuning
            : parameterSpiralMotorsTuning // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterIDFanTuning: null == parameterIDFanTuning
            ? _value.parameterIDFanTuning
            : parameterIDFanTuning // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterCleanIntervalBig: null == parameterCleanIntervalBig
            ? _value.parameterCleanIntervalBig
            : parameterCleanIntervalBig // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterKgTillCleaning: null == parameterKgTillCleaning
            ? _value.parameterKgTillCleaning
            : parameterKgTillCleaning // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterErrorCount0: null == parameterErrorCount0
            ? _value.parameterErrorCount0
            : parameterErrorCount0 // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterErrorCount1: null == parameterErrorCount1
            ? _value.parameterErrorCount1
            : parameterErrorCount1 // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterErrorCount2: null == parameterErrorCount2
            ? _value.parameterErrorCount2
            : parameterErrorCount2 // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterErrorCount3: null == parameterErrorCount3
            ? _value.parameterErrorCount3
            : parameterErrorCount3 // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterErrorCount4: null == parameterErrorCount4
            ? _value.parameterErrorCount4
            : parameterErrorCount4 // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterErrorCount5: null == parameterErrorCount5
            ? _value.parameterErrorCount5
            : parameterErrorCount5 // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterErrorCount6: null == parameterErrorCount6
            ? _value.parameterErrorCount6
            : parameterErrorCount6 // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterErrorCount7: null == parameterErrorCount7
            ? _value.parameterErrorCount7
            : parameterErrorCount7 // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterErrorCount8: null == parameterErrorCount8
            ? _value.parameterErrorCount8
            : parameterErrorCount8 // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterErrorCount9: null == parameterErrorCount9
            ? _value.parameterErrorCount9
            : parameterErrorCount9 // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterErrorCount10: null == parameterErrorCount10
            ? _value.parameterErrorCount10
            : parameterErrorCount10 // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterErrorCount11: null == parameterErrorCount11
            ? _value.parameterErrorCount11
            : parameterErrorCount11 // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterErrorCount12: null == parameterErrorCount12
            ? _value.parameterErrorCount12
            : parameterErrorCount12 // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterErrorCount13: null == parameterErrorCount13
            ? _value.parameterErrorCount13
            : parameterErrorCount13 // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterErrorCount14: null == parameterErrorCount14
            ? _value.parameterErrorCount14
            : parameterErrorCount14 // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterErrorCount15: null == parameterErrorCount15
            ? _value.parameterErrorCount15
            : parameterErrorCount15 // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterErrorCount16: null == parameterErrorCount16
            ? _value.parameterErrorCount16
            : parameterErrorCount16 // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterErrorCount17: null == parameterErrorCount17
            ? _value.parameterErrorCount17
            : parameterErrorCount17 // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterErrorCount18: null == parameterErrorCount18
            ? _value.parameterErrorCount18
            : parameterErrorCount18 // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterErrorCount19: null == parameterErrorCount19
            ? _value.parameterErrorCount19
            : parameterErrorCount19 // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterDebug0: null == parameterDebug0
            ? _value.parameterDebug0
            : parameterDebug0 // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterDebug1: null == parameterDebug1
            ? _value.parameterDebug1
            : parameterDebug1 // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterDebug2: null == parameterDebug2
            ? _value.parameterDebug2
            : parameterDebug2 // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterDebug3: null == parameterDebug3
            ? _value.parameterDebug3
            : parameterDebug3 // ignore: cast_nullable_to_non_nullable
                  as int,
        parameterDebug4: null == parameterDebug4
            ? _value.parameterDebug4
            : parameterDebug4 // ignore: cast_nullable_to_non_nullable
                  as int,
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
    required this.inputBakeTemperature,
    required this.inputBoardTemperature,
    required this.inputCurrentStage,
    required this.inputTargetStagePID,
    required this.inputCurrentStagePID,
    required this.statusMainState,
    required this.statusSubState,
    required this.statusError,
    required this.statusSubError,
    required this.statusWarning,
    required this.statusService,
    required this.statusWifiStrength,
    required this.statusFrostStarted,
    required this.statusHeatingTimesNotProgrammed,
    required this.outputDischargeMotor,
    required this.outputDischargeCurrent,
    required this.outputIDFan,
    required this.outputIDFanTarget,
    required this.outputInsertionMotor,
    required this.outputInsertionCurrent,
    required this.outputAirFlaps,
    required this.outputAirFlapsTargetPosition,
    required this.outputBurnBackFlapMagnet,
    required this.outputGridMotor,
    required this.outputIgnition,
    required this.inputUpperTemperatureLimiter,
    required this.inputPressureSwitch,
    required this.inputPressureSensor,
    required this.inputGridContact,
    required this.inputDoor,
    required this.inputCover,
    required this.inputExternalRequest,
    required this.inputBurnBackFlapSwitch,
    required this.inputFlueGasFlapSwitch,
    required this.parameterEcoModePossible,
    required this.parameterFabricationNumber,
    required this.parameterStoveTypeNumber,
    required this.parameterLanguageNumber,
    required this.parameterVersionMainBoard,
    required this.parameterVersionTFT,
    required this.parameterVersionWiFi,
    required this.parameterVersionMainBoardBootLoader,
    required this.parameterVersionTFTBootLoader,
    required this.parameterVersionWiFiBootLoader,
    required this.parameterVersionMainBoardSub,
    required this.parameterVersionTFTSub,
    required this.parameterVersionWiFiSub,
    required this.parameterRuntimePellets,
    required this.parameterRuntimeLogs,
    required this.parameterFeedRateTotal,
    required this.parameterFeedRateService,
    required this.parameterServiceCountdownKg,
    required this.parameterServiceCountdownTime,
    required this.parameterIgnitionCount,
    required this.parameterOnOffCycleCount,
    required this.parameterFlameSensorOffset,
    required this.parameterPressureSensorOffset,
    required this.parameterSpiralMotorsTuning,
    required this.parameterIDFanTuning,
    required this.parameterCleanIntervalBig,
    required this.parameterKgTillCleaning,
    required this.parameterErrorCount0,
    required this.parameterErrorCount1,
    required this.parameterErrorCount2,
    required this.parameterErrorCount3,
    required this.parameterErrorCount4,
    required this.parameterErrorCount5,
    required this.parameterErrorCount6,
    required this.parameterErrorCount7,
    required this.parameterErrorCount8,
    required this.parameterErrorCount9,
    required this.parameterErrorCount10,
    required this.parameterErrorCount11,
    required this.parameterErrorCount12,
    required this.parameterErrorCount13,
    required this.parameterErrorCount14,
    required this.parameterErrorCount15,
    required this.parameterErrorCount16,
    required this.parameterErrorCount17,
    required this.parameterErrorCount18,
    required this.parameterErrorCount19,
    required this.parameterDebug0,
    required this.parameterDebug1,
    required this.parameterDebug2,
    required this.parameterDebug3,
    required this.parameterDebug4,
  }) : super._();

  factory _$StoveSensorsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoveSensorsImplFromJson(json);

  // Temperature & Input Sensors
  @override
  final String inputRoomTemperature;
  // °C as string
  @override
  final int inputFlameTemperature;
  // °C
  @override
  final String inputBakeTemperature;
  // °C or "1024" (N/A)
  @override
  final String inputBoardTemperature;
  // °C
  @override
  final int inputCurrentStage;
  // 0-100
  @override
  final int inputTargetStagePID;
  // 0-100
  @override
  final int inputCurrentStagePID;
  // 0-100
  // Status & Error Codes
  @override
  final int statusMainState;
  @override
  final int statusSubState;
  @override
  final int statusError;
  // 0 = no error
  @override
  final int statusSubError;
  @override
  final int statusWarning;
  // 0 = no warning
  @override
  final int statusService;
  @override
  final int statusWifiStrength;
  // dBm, e.g., -69
  @override
  final bool statusFrostStarted;
  @override
  final bool statusHeatingTimesNotProgrammed;
  // Motor & Fan Outputs
  @override
  final int outputDischargeMotor;
  // Auger motor RPM
  @override
  final int outputDischargeCurrent;
  // Auger motor current (mA)
  @override
  final int outputIDFan;
  // Induced draft fan RPM
  @override
  final int outputIDFanTarget;
  // Target fan RPM
  @override
  final int outputInsertionMotor;
  // Insertion motor RPM
  @override
  final int outputInsertionCurrent;
  // Insertion motor current (mA)
  @override
  final int outputAirFlaps;
  // Air flap position 0-1000
  @override
  final int outputAirFlapsTargetPosition;
  // Target flap position 0-1000
  // Digital Outputs/Inputs
  @override
  final bool outputBurnBackFlapMagnet;
  @override
  final bool outputGridMotor;
  @override
  final bool outputIgnition;
  @override
  final bool inputUpperTemperatureLimiter;
  @override
  final bool inputPressureSwitch;
  @override
  final int inputPressureSensor;
  // Pa
  @override
  final bool inputGridContact;
  @override
  final bool inputDoor;
  // true=closed, false=open
  @override
  final bool inputCover;
  // true=closed, false=open
  @override
  final bool inputExternalRequest;
  @override
  final bool inputBurnBackFlapSwitch;
  @override
  final bool inputFlueGasFlapSwitch;
  // System Parameters
  @override
  final bool parameterEcoModePossible;
  @override
  final int parameterFabricationNumber;
  @override
  final int parameterStoveTypeNumber;
  @override
  final int parameterLanguageNumber;
  @override
  final int parameterVersionMainBoard;
  @override
  final int parameterVersionTFT;
  @override
  final int parameterVersionWiFi;
  @override
  final int parameterVersionMainBoardBootLoader;
  @override
  final int parameterVersionTFTBootLoader;
  @override
  final int parameterVersionWiFiBootLoader;
  @override
  final int parameterVersionMainBoardSub;
  @override
  final int parameterVersionTFTSub;
  @override
  final int parameterVersionWiFiSub;
  // Runtime & Consumption Statistics
  @override
  final int parameterRuntimePellets;
  // hours
  @override
  final int parameterRuntimeLogs;
  // hours
  @override
  final int parameterFeedRateTotal;
  // kg
  @override
  final int parameterFeedRateService;
  // kg since last service
  @override
  final int parameterServiceCountdownKg;
  // kg until service due
  @override
  final int parameterServiceCountdownTime;
  // hours until service due
  @override
  final int parameterIgnitionCount;
  @override
  final int parameterOnOffCycleCount;
  // Calibration & Tuning
  @override
  final int parameterFlameSensorOffset;
  @override
  final int parameterPressureSensorOffset;
  @override
  final int parameterSpiralMotorsTuning;
  @override
  final int parameterIDFanTuning;
  @override
  final int parameterCleanIntervalBig;
  // kg
  @override
  final int parameterKgTillCleaning;
  // Error History (counts 0-19)
  @override
  final int parameterErrorCount0;
  @override
  final int parameterErrorCount1;
  @override
  final int parameterErrorCount2;
  @override
  final int parameterErrorCount3;
  @override
  final int parameterErrorCount4;
  @override
  final int parameterErrorCount5;
  @override
  final int parameterErrorCount6;
  @override
  final int parameterErrorCount7;
  @override
  final int parameterErrorCount8;
  @override
  final int parameterErrorCount9;
  @override
  final int parameterErrorCount10;
  @override
  final int parameterErrorCount11;
  @override
  final int parameterErrorCount12;
  @override
  final int parameterErrorCount13;
  @override
  final int parameterErrorCount14;
  @override
  final int parameterErrorCount15;
  @override
  final int parameterErrorCount16;
  @override
  final int parameterErrorCount17;
  @override
  final int parameterErrorCount18;
  @override
  final int parameterErrorCount19;
  // Debug Fields
  @override
  final int parameterDebug0;
  @override
  final int parameterDebug1;
  @override
  final int parameterDebug2;
  @override
  final int parameterDebug3;
  @override
  final int parameterDebug4;

  @override
  String toString() {
    return 'StoveSensors(inputRoomTemperature: $inputRoomTemperature, inputFlameTemperature: $inputFlameTemperature, inputBakeTemperature: $inputBakeTemperature, inputBoardTemperature: $inputBoardTemperature, inputCurrentStage: $inputCurrentStage, inputTargetStagePID: $inputTargetStagePID, inputCurrentStagePID: $inputCurrentStagePID, statusMainState: $statusMainState, statusSubState: $statusSubState, statusError: $statusError, statusSubError: $statusSubError, statusWarning: $statusWarning, statusService: $statusService, statusWifiStrength: $statusWifiStrength, statusFrostStarted: $statusFrostStarted, statusHeatingTimesNotProgrammed: $statusHeatingTimesNotProgrammed, outputDischargeMotor: $outputDischargeMotor, outputDischargeCurrent: $outputDischargeCurrent, outputIDFan: $outputIDFan, outputIDFanTarget: $outputIDFanTarget, outputInsertionMotor: $outputInsertionMotor, outputInsertionCurrent: $outputInsertionCurrent, outputAirFlaps: $outputAirFlaps, outputAirFlapsTargetPosition: $outputAirFlapsTargetPosition, outputBurnBackFlapMagnet: $outputBurnBackFlapMagnet, outputGridMotor: $outputGridMotor, outputIgnition: $outputIgnition, inputUpperTemperatureLimiter: $inputUpperTemperatureLimiter, inputPressureSwitch: $inputPressureSwitch, inputPressureSensor: $inputPressureSensor, inputGridContact: $inputGridContact, inputDoor: $inputDoor, inputCover: $inputCover, inputExternalRequest: $inputExternalRequest, inputBurnBackFlapSwitch: $inputBurnBackFlapSwitch, inputFlueGasFlapSwitch: $inputFlueGasFlapSwitch, parameterEcoModePossible: $parameterEcoModePossible, parameterFabricationNumber: $parameterFabricationNumber, parameterStoveTypeNumber: $parameterStoveTypeNumber, parameterLanguageNumber: $parameterLanguageNumber, parameterVersionMainBoard: $parameterVersionMainBoard, parameterVersionTFT: $parameterVersionTFT, parameterVersionWiFi: $parameterVersionWiFi, parameterVersionMainBoardBootLoader: $parameterVersionMainBoardBootLoader, parameterVersionTFTBootLoader: $parameterVersionTFTBootLoader, parameterVersionWiFiBootLoader: $parameterVersionWiFiBootLoader, parameterVersionMainBoardSub: $parameterVersionMainBoardSub, parameterVersionTFTSub: $parameterVersionTFTSub, parameterVersionWiFiSub: $parameterVersionWiFiSub, parameterRuntimePellets: $parameterRuntimePellets, parameterRuntimeLogs: $parameterRuntimeLogs, parameterFeedRateTotal: $parameterFeedRateTotal, parameterFeedRateService: $parameterFeedRateService, parameterServiceCountdownKg: $parameterServiceCountdownKg, parameterServiceCountdownTime: $parameterServiceCountdownTime, parameterIgnitionCount: $parameterIgnitionCount, parameterOnOffCycleCount: $parameterOnOffCycleCount, parameterFlameSensorOffset: $parameterFlameSensorOffset, parameterPressureSensorOffset: $parameterPressureSensorOffset, parameterSpiralMotorsTuning: $parameterSpiralMotorsTuning, parameterIDFanTuning: $parameterIDFanTuning, parameterCleanIntervalBig: $parameterCleanIntervalBig, parameterKgTillCleaning: $parameterKgTillCleaning, parameterErrorCount0: $parameterErrorCount0, parameterErrorCount1: $parameterErrorCount1, parameterErrorCount2: $parameterErrorCount2, parameterErrorCount3: $parameterErrorCount3, parameterErrorCount4: $parameterErrorCount4, parameterErrorCount5: $parameterErrorCount5, parameterErrorCount6: $parameterErrorCount6, parameterErrorCount7: $parameterErrorCount7, parameterErrorCount8: $parameterErrorCount8, parameterErrorCount9: $parameterErrorCount9, parameterErrorCount10: $parameterErrorCount10, parameterErrorCount11: $parameterErrorCount11, parameterErrorCount12: $parameterErrorCount12, parameterErrorCount13: $parameterErrorCount13, parameterErrorCount14: $parameterErrorCount14, parameterErrorCount15: $parameterErrorCount15, parameterErrorCount16: $parameterErrorCount16, parameterErrorCount17: $parameterErrorCount17, parameterErrorCount18: $parameterErrorCount18, parameterErrorCount19: $parameterErrorCount19, parameterDebug0: $parameterDebug0, parameterDebug1: $parameterDebug1, parameterDebug2: $parameterDebug2, parameterDebug3: $parameterDebug3, parameterDebug4: $parameterDebug4)';
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
            (identical(other.inputBakeTemperature, inputBakeTemperature) ||
                other.inputBakeTemperature == inputBakeTemperature) &&
            (identical(other.inputBoardTemperature, inputBoardTemperature) ||
                other.inputBoardTemperature == inputBoardTemperature) &&
            (identical(other.inputCurrentStage, inputCurrentStage) ||
                other.inputCurrentStage == inputCurrentStage) &&
            (identical(other.inputTargetStagePID, inputTargetStagePID) ||
                other.inputTargetStagePID == inputTargetStagePID) &&
            (identical(other.inputCurrentStagePID, inputCurrentStagePID) ||
                other.inputCurrentStagePID == inputCurrentStagePID) &&
            (identical(other.statusMainState, statusMainState) ||
                other.statusMainState == statusMainState) &&
            (identical(other.statusSubState, statusSubState) ||
                other.statusSubState == statusSubState) &&
            (identical(other.statusError, statusError) ||
                other.statusError == statusError) &&
            (identical(other.statusSubError, statusSubError) ||
                other.statusSubError == statusSubError) &&
            (identical(other.statusWarning, statusWarning) ||
                other.statusWarning == statusWarning) &&
            (identical(other.statusService, statusService) ||
                other.statusService == statusService) &&
            (identical(other.statusWifiStrength, statusWifiStrength) ||
                other.statusWifiStrength == statusWifiStrength) &&
            (identical(other.statusFrostStarted, statusFrostStarted) ||
                other.statusFrostStarted == statusFrostStarted) &&
            (identical(
                  other.statusHeatingTimesNotProgrammed,
                  statusHeatingTimesNotProgrammed,
                ) ||
                other.statusHeatingTimesNotProgrammed ==
                    statusHeatingTimesNotProgrammed) &&
            (identical(other.outputDischargeMotor, outputDischargeMotor) ||
                other.outputDischargeMotor == outputDischargeMotor) &&
            (identical(other.outputDischargeCurrent, outputDischargeCurrent) ||
                other.outputDischargeCurrent == outputDischargeCurrent) &&
            (identical(other.outputIDFan, outputIDFan) ||
                other.outputIDFan == outputIDFan) &&
            (identical(other.outputIDFanTarget, outputIDFanTarget) ||
                other.outputIDFanTarget == outputIDFanTarget) &&
            (identical(other.outputInsertionMotor, outputInsertionMotor) ||
                other.outputInsertionMotor == outputInsertionMotor) &&
            (identical(other.outputInsertionCurrent, outputInsertionCurrent) ||
                other.outputInsertionCurrent == outputInsertionCurrent) &&
            (identical(other.outputAirFlaps, outputAirFlaps) ||
                other.outputAirFlaps == outputAirFlaps) &&
            (identical(
                  other.outputAirFlapsTargetPosition,
                  outputAirFlapsTargetPosition,
                ) ||
                other.outputAirFlapsTargetPosition ==
                    outputAirFlapsTargetPosition) &&
            (identical(
                  other.outputBurnBackFlapMagnet,
                  outputBurnBackFlapMagnet,
                ) ||
                other.outputBurnBackFlapMagnet == outputBurnBackFlapMagnet) &&
            (identical(other.outputGridMotor, outputGridMotor) ||
                other.outputGridMotor == outputGridMotor) &&
            (identical(other.outputIgnition, outputIgnition) ||
                other.outputIgnition == outputIgnition) &&
            (identical(
                  other.inputUpperTemperatureLimiter,
                  inputUpperTemperatureLimiter,
                ) ||
                other.inputUpperTemperatureLimiter ==
                    inputUpperTemperatureLimiter) &&
            (identical(other.inputPressureSwitch, inputPressureSwitch) ||
                other.inputPressureSwitch == inputPressureSwitch) &&
            (identical(other.inputPressureSensor, inputPressureSensor) ||
                other.inputPressureSensor == inputPressureSensor) &&
            (identical(other.inputGridContact, inputGridContact) ||
                other.inputGridContact == inputGridContact) &&
            (identical(other.inputDoor, inputDoor) ||
                other.inputDoor == inputDoor) &&
            (identical(other.inputCover, inputCover) ||
                other.inputCover == inputCover) &&
            (identical(other.inputExternalRequest, inputExternalRequest) ||
                other.inputExternalRequest == inputExternalRequest) &&
            (identical(
                  other.inputBurnBackFlapSwitch,
                  inputBurnBackFlapSwitch,
                ) ||
                other.inputBurnBackFlapSwitch == inputBurnBackFlapSwitch) &&
            (identical(other.inputFlueGasFlapSwitch, inputFlueGasFlapSwitch) ||
                other.inputFlueGasFlapSwitch == inputFlueGasFlapSwitch) &&
            (identical(
                  other.parameterEcoModePossible,
                  parameterEcoModePossible,
                ) ||
                other.parameterEcoModePossible == parameterEcoModePossible) &&
            (identical(
                  other.parameterFabricationNumber,
                  parameterFabricationNumber,
                ) ||
                other.parameterFabricationNumber ==
                    parameterFabricationNumber) &&
            (identical(
                  other.parameterStoveTypeNumber,
                  parameterStoveTypeNumber,
                ) ||
                other.parameterStoveTypeNumber == parameterStoveTypeNumber) &&
            (identical(
                  other.parameterLanguageNumber,
                  parameterLanguageNumber,
                ) ||
                other.parameterLanguageNumber == parameterLanguageNumber) &&
            (identical(
                  other.parameterVersionMainBoard,
                  parameterVersionMainBoard,
                ) ||
                other.parameterVersionMainBoard == parameterVersionMainBoard) &&
            (identical(other.parameterVersionTFT, parameterVersionTFT) ||
                other.parameterVersionTFT == parameterVersionTFT) &&
            (identical(other.parameterVersionWiFi, parameterVersionWiFi) ||
                other.parameterVersionWiFi == parameterVersionWiFi) &&
            (identical(
                  other.parameterVersionMainBoardBootLoader,
                  parameterVersionMainBoardBootLoader,
                ) ||
                other.parameterVersionMainBoardBootLoader ==
                    parameterVersionMainBoardBootLoader) &&
            (identical(
                  other.parameterVersionTFTBootLoader,
                  parameterVersionTFTBootLoader,
                ) ||
                other.parameterVersionTFTBootLoader ==
                    parameterVersionTFTBootLoader) &&
            (identical(
                  other.parameterVersionWiFiBootLoader,
                  parameterVersionWiFiBootLoader,
                ) ||
                other.parameterVersionWiFiBootLoader ==
                    parameterVersionWiFiBootLoader) &&
            (identical(
                  other.parameterVersionMainBoardSub,
                  parameterVersionMainBoardSub,
                ) ||
                other.parameterVersionMainBoardSub ==
                    parameterVersionMainBoardSub) &&
            (identical(other.parameterVersionTFTSub, parameterVersionTFTSub) ||
                other.parameterVersionTFTSub == parameterVersionTFTSub) &&
            (identical(
                  other.parameterVersionWiFiSub,
                  parameterVersionWiFiSub,
                ) ||
                other.parameterVersionWiFiSub == parameterVersionWiFiSub) &&
            (identical(
                  other.parameterRuntimePellets,
                  parameterRuntimePellets,
                ) ||
                other.parameterRuntimePellets == parameterRuntimePellets) &&
            (identical(other.parameterRuntimeLogs, parameterRuntimeLogs) ||
                other.parameterRuntimeLogs == parameterRuntimeLogs) &&
            (identical(other.parameterFeedRateTotal, parameterFeedRateTotal) ||
                other.parameterFeedRateTotal == parameterFeedRateTotal) &&
            (identical(
                  other.parameterFeedRateService,
                  parameterFeedRateService,
                ) ||
                other.parameterFeedRateService == parameterFeedRateService) &&
            (identical(
                  other.parameterServiceCountdownKg,
                  parameterServiceCountdownKg,
                ) ||
                other.parameterServiceCountdownKg ==
                    parameterServiceCountdownKg) &&
            (identical(
                  other.parameterServiceCountdownTime,
                  parameterServiceCountdownTime,
                ) ||
                other.parameterServiceCountdownTime ==
                    parameterServiceCountdownTime) &&
            (identical(other.parameterIgnitionCount, parameterIgnitionCount) ||
                other.parameterIgnitionCount == parameterIgnitionCount) &&
            (identical(
                  other.parameterOnOffCycleCount,
                  parameterOnOffCycleCount,
                ) ||
                other.parameterOnOffCycleCount == parameterOnOffCycleCount) &&
            (identical(
                  other.parameterFlameSensorOffset,
                  parameterFlameSensorOffset,
                ) ||
                other.parameterFlameSensorOffset ==
                    parameterFlameSensorOffset) &&
            (identical(
                  other.parameterPressureSensorOffset,
                  parameterPressureSensorOffset,
                ) ||
                other.parameterPressureSensorOffset ==
                    parameterPressureSensorOffset) &&
            (identical(
                  other.parameterSpiralMotorsTuning,
                  parameterSpiralMotorsTuning,
                ) ||
                other.parameterSpiralMotorsTuning ==
                    parameterSpiralMotorsTuning) &&
            (identical(other.parameterIDFanTuning, parameterIDFanTuning) ||
                other.parameterIDFanTuning == parameterIDFanTuning) &&
            (identical(
                  other.parameterCleanIntervalBig,
                  parameterCleanIntervalBig,
                ) ||
                other.parameterCleanIntervalBig == parameterCleanIntervalBig) &&
            (identical(
                  other.parameterKgTillCleaning,
                  parameterKgTillCleaning,
                ) ||
                other.parameterKgTillCleaning == parameterKgTillCleaning) &&
            (identical(other.parameterErrorCount0, parameterErrorCount0) ||
                other.parameterErrorCount0 == parameterErrorCount0) &&
            (identical(other.parameterErrorCount1, parameterErrorCount1) ||
                other.parameterErrorCount1 == parameterErrorCount1) &&
            (identical(other.parameterErrorCount2, parameterErrorCount2) ||
                other.parameterErrorCount2 == parameterErrorCount2) &&
            (identical(other.parameterErrorCount3, parameterErrorCount3) ||
                other.parameterErrorCount3 == parameterErrorCount3) &&
            (identical(other.parameterErrorCount4, parameterErrorCount4) ||
                other.parameterErrorCount4 == parameterErrorCount4) &&
            (identical(other.parameterErrorCount5, parameterErrorCount5) ||
                other.parameterErrorCount5 == parameterErrorCount5) &&
            (identical(other.parameterErrorCount6, parameterErrorCount6) ||
                other.parameterErrorCount6 == parameterErrorCount6) &&
            (identical(other.parameterErrorCount7, parameterErrorCount7) ||
                other.parameterErrorCount7 == parameterErrorCount7) &&
            (identical(other.parameterErrorCount8, parameterErrorCount8) ||
                other.parameterErrorCount8 == parameterErrorCount8) &&
            (identical(other.parameterErrorCount9, parameterErrorCount9) ||
                other.parameterErrorCount9 == parameterErrorCount9) &&
            (identical(other.parameterErrorCount10, parameterErrorCount10) ||
                other.parameterErrorCount10 == parameterErrorCount10) &&
            (identical(other.parameterErrorCount11, parameterErrorCount11) ||
                other.parameterErrorCount11 == parameterErrorCount11) &&
            (identical(other.parameterErrorCount12, parameterErrorCount12) ||
                other.parameterErrorCount12 == parameterErrorCount12) &&
            (identical(other.parameterErrorCount13, parameterErrorCount13) ||
                other.parameterErrorCount13 == parameterErrorCount13) &&
            (identical(other.parameterErrorCount14, parameterErrorCount14) ||
                other.parameterErrorCount14 == parameterErrorCount14) &&
            (identical(other.parameterErrorCount15, parameterErrorCount15) ||
                other.parameterErrorCount15 == parameterErrorCount15) &&
            (identical(other.parameterErrorCount16, parameterErrorCount16) ||
                other.parameterErrorCount16 == parameterErrorCount16) &&
            (identical(other.parameterErrorCount17, parameterErrorCount17) ||
                other.parameterErrorCount17 == parameterErrorCount17) &&
            (identical(other.parameterErrorCount18, parameterErrorCount18) ||
                other.parameterErrorCount18 == parameterErrorCount18) &&
            (identical(other.parameterErrorCount19, parameterErrorCount19) ||
                other.parameterErrorCount19 == parameterErrorCount19) &&
            (identical(other.parameterDebug0, parameterDebug0) ||
                other.parameterDebug0 == parameterDebug0) &&
            (identical(other.parameterDebug1, parameterDebug1) ||
                other.parameterDebug1 == parameterDebug1) &&
            (identical(other.parameterDebug2, parameterDebug2) ||
                other.parameterDebug2 == parameterDebug2) &&
            (identical(other.parameterDebug3, parameterDebug3) ||
                other.parameterDebug3 == parameterDebug3) &&
            (identical(other.parameterDebug4, parameterDebug4) ||
                other.parameterDebug4 == parameterDebug4));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    inputRoomTemperature,
    inputFlameTemperature,
    inputBakeTemperature,
    inputBoardTemperature,
    inputCurrentStage,
    inputTargetStagePID,
    inputCurrentStagePID,
    statusMainState,
    statusSubState,
    statusError,
    statusSubError,
    statusWarning,
    statusService,
    statusWifiStrength,
    statusFrostStarted,
    statusHeatingTimesNotProgrammed,
    outputDischargeMotor,
    outputDischargeCurrent,
    outputIDFan,
    outputIDFanTarget,
    outputInsertionMotor,
    outputInsertionCurrent,
    outputAirFlaps,
    outputAirFlapsTargetPosition,
    outputBurnBackFlapMagnet,
    outputGridMotor,
    outputIgnition,
    inputUpperTemperatureLimiter,
    inputPressureSwitch,
    inputPressureSensor,
    inputGridContact,
    inputDoor,
    inputCover,
    inputExternalRequest,
    inputBurnBackFlapSwitch,
    inputFlueGasFlapSwitch,
    parameterEcoModePossible,
    parameterFabricationNumber,
    parameterStoveTypeNumber,
    parameterLanguageNumber,
    parameterVersionMainBoard,
    parameterVersionTFT,
    parameterVersionWiFi,
    parameterVersionMainBoardBootLoader,
    parameterVersionTFTBootLoader,
    parameterVersionWiFiBootLoader,
    parameterVersionMainBoardSub,
    parameterVersionTFTSub,
    parameterVersionWiFiSub,
    parameterRuntimePellets,
    parameterRuntimeLogs,
    parameterFeedRateTotal,
    parameterFeedRateService,
    parameterServiceCountdownKg,
    parameterServiceCountdownTime,
    parameterIgnitionCount,
    parameterOnOffCycleCount,
    parameterFlameSensorOffset,
    parameterPressureSensorOffset,
    parameterSpiralMotorsTuning,
    parameterIDFanTuning,
    parameterCleanIntervalBig,
    parameterKgTillCleaning,
    parameterErrorCount0,
    parameterErrorCount1,
    parameterErrorCount2,
    parameterErrorCount3,
    parameterErrorCount4,
    parameterErrorCount5,
    parameterErrorCount6,
    parameterErrorCount7,
    parameterErrorCount8,
    parameterErrorCount9,
    parameterErrorCount10,
    parameterErrorCount11,
    parameterErrorCount12,
    parameterErrorCount13,
    parameterErrorCount14,
    parameterErrorCount15,
    parameterErrorCount16,
    parameterErrorCount17,
    parameterErrorCount18,
    parameterErrorCount19,
    parameterDebug0,
    parameterDebug1,
    parameterDebug2,
    parameterDebug3,
    parameterDebug4,
  ]);

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
    required final String inputRoomTemperature,
    required final int inputFlameTemperature,
    required final String inputBakeTemperature,
    required final String inputBoardTemperature,
    required final int inputCurrentStage,
    required final int inputTargetStagePID,
    required final int inputCurrentStagePID,
    required final int statusMainState,
    required final int statusSubState,
    required final int statusError,
    required final int statusSubError,
    required final int statusWarning,
    required final int statusService,
    required final int statusWifiStrength,
    required final bool statusFrostStarted,
    required final bool statusHeatingTimesNotProgrammed,
    required final int outputDischargeMotor,
    required final int outputDischargeCurrent,
    required final int outputIDFan,
    required final int outputIDFanTarget,
    required final int outputInsertionMotor,
    required final int outputInsertionCurrent,
    required final int outputAirFlaps,
    required final int outputAirFlapsTargetPosition,
    required final bool outputBurnBackFlapMagnet,
    required final bool outputGridMotor,
    required final bool outputIgnition,
    required final bool inputUpperTemperatureLimiter,
    required final bool inputPressureSwitch,
    required final int inputPressureSensor,
    required final bool inputGridContact,
    required final bool inputDoor,
    required final bool inputCover,
    required final bool inputExternalRequest,
    required final bool inputBurnBackFlapSwitch,
    required final bool inputFlueGasFlapSwitch,
    required final bool parameterEcoModePossible,
    required final int parameterFabricationNumber,
    required final int parameterStoveTypeNumber,
    required final int parameterLanguageNumber,
    required final int parameterVersionMainBoard,
    required final int parameterVersionTFT,
    required final int parameterVersionWiFi,
    required final int parameterVersionMainBoardBootLoader,
    required final int parameterVersionTFTBootLoader,
    required final int parameterVersionWiFiBootLoader,
    required final int parameterVersionMainBoardSub,
    required final int parameterVersionTFTSub,
    required final int parameterVersionWiFiSub,
    required final int parameterRuntimePellets,
    required final int parameterRuntimeLogs,
    required final int parameterFeedRateTotal,
    required final int parameterFeedRateService,
    required final int parameterServiceCountdownKg,
    required final int parameterServiceCountdownTime,
    required final int parameterIgnitionCount,
    required final int parameterOnOffCycleCount,
    required final int parameterFlameSensorOffset,
    required final int parameterPressureSensorOffset,
    required final int parameterSpiralMotorsTuning,
    required final int parameterIDFanTuning,
    required final int parameterCleanIntervalBig,
    required final int parameterKgTillCleaning,
    required final int parameterErrorCount0,
    required final int parameterErrorCount1,
    required final int parameterErrorCount2,
    required final int parameterErrorCount3,
    required final int parameterErrorCount4,
    required final int parameterErrorCount5,
    required final int parameterErrorCount6,
    required final int parameterErrorCount7,
    required final int parameterErrorCount8,
    required final int parameterErrorCount9,
    required final int parameterErrorCount10,
    required final int parameterErrorCount11,
    required final int parameterErrorCount12,
    required final int parameterErrorCount13,
    required final int parameterErrorCount14,
    required final int parameterErrorCount15,
    required final int parameterErrorCount16,
    required final int parameterErrorCount17,
    required final int parameterErrorCount18,
    required final int parameterErrorCount19,
    required final int parameterDebug0,
    required final int parameterDebug1,
    required final int parameterDebug2,
    required final int parameterDebug3,
    required final int parameterDebug4,
  }) = _$StoveSensorsImpl;
  const _StoveSensors._() : super._();

  factory _StoveSensors.fromJson(Map<String, dynamic> json) =
      _$StoveSensorsImpl.fromJson;

  // Temperature & Input Sensors
  @override
  String get inputRoomTemperature; // °C as string
  @override
  int get inputFlameTemperature; // °C
  @override
  String get inputBakeTemperature; // °C or "1024" (N/A)
  @override
  String get inputBoardTemperature; // °C
  @override
  int get inputCurrentStage; // 0-100
  @override
  int get inputTargetStagePID; // 0-100
  @override
  int get inputCurrentStagePID; // 0-100
  // Status & Error Codes
  @override
  int get statusMainState;
  @override
  int get statusSubState;
  @override
  int get statusError; // 0 = no error
  @override
  int get statusSubError;
  @override
  int get statusWarning; // 0 = no warning
  @override
  int get statusService;
  @override
  int get statusWifiStrength; // dBm, e.g., -69
  @override
  bool get statusFrostStarted;
  @override
  bool get statusHeatingTimesNotProgrammed; // Motor & Fan Outputs
  @override
  int get outputDischargeMotor; // Auger motor RPM
  @override
  int get outputDischargeCurrent; // Auger motor current (mA)
  @override
  int get outputIDFan; // Induced draft fan RPM
  @override
  int get outputIDFanTarget; // Target fan RPM
  @override
  int get outputInsertionMotor; // Insertion motor RPM
  @override
  int get outputInsertionCurrent; // Insertion motor current (mA)
  @override
  int get outputAirFlaps; // Air flap position 0-1000
  @override
  int get outputAirFlapsTargetPosition; // Target flap position 0-1000
  // Digital Outputs/Inputs
  @override
  bool get outputBurnBackFlapMagnet;
  @override
  bool get outputGridMotor;
  @override
  bool get outputIgnition;
  @override
  bool get inputUpperTemperatureLimiter;
  @override
  bool get inputPressureSwitch;
  @override
  int get inputPressureSensor; // Pa
  @override
  bool get inputGridContact;
  @override
  bool get inputDoor; // true=closed, false=open
  @override
  bool get inputCover; // true=closed, false=open
  @override
  bool get inputExternalRequest;
  @override
  bool get inputBurnBackFlapSwitch;
  @override
  bool get inputFlueGasFlapSwitch; // System Parameters
  @override
  bool get parameterEcoModePossible;
  @override
  int get parameterFabricationNumber;
  @override
  int get parameterStoveTypeNumber;
  @override
  int get parameterLanguageNumber;
  @override
  int get parameterVersionMainBoard;
  @override
  int get parameterVersionTFT;
  @override
  int get parameterVersionWiFi;
  @override
  int get parameterVersionMainBoardBootLoader;
  @override
  int get parameterVersionTFTBootLoader;
  @override
  int get parameterVersionWiFiBootLoader;
  @override
  int get parameterVersionMainBoardSub;
  @override
  int get parameterVersionTFTSub;
  @override
  int get parameterVersionWiFiSub; // Runtime & Consumption Statistics
  @override
  int get parameterRuntimePellets; // hours
  @override
  int get parameterRuntimeLogs; // hours
  @override
  int get parameterFeedRateTotal; // kg
  @override
  int get parameterFeedRateService; // kg since last service
  @override
  int get parameterServiceCountdownKg; // kg until service due
  @override
  int get parameterServiceCountdownTime; // hours until service due
  @override
  int get parameterIgnitionCount;
  @override
  int get parameterOnOffCycleCount; // Calibration & Tuning
  @override
  int get parameterFlameSensorOffset;
  @override
  int get parameterPressureSensorOffset;
  @override
  int get parameterSpiralMotorsTuning;
  @override
  int get parameterIDFanTuning;
  @override
  int get parameterCleanIntervalBig; // kg
  @override
  int get parameterKgTillCleaning; // Error History (counts 0-19)
  @override
  int get parameterErrorCount0;
  @override
  int get parameterErrorCount1;
  @override
  int get parameterErrorCount2;
  @override
  int get parameterErrorCount3;
  @override
  int get parameterErrorCount4;
  @override
  int get parameterErrorCount5;
  @override
  int get parameterErrorCount6;
  @override
  int get parameterErrorCount7;
  @override
  int get parameterErrorCount8;
  @override
  int get parameterErrorCount9;
  @override
  int get parameterErrorCount10;
  @override
  int get parameterErrorCount11;
  @override
  int get parameterErrorCount12;
  @override
  int get parameterErrorCount13;
  @override
  int get parameterErrorCount14;
  @override
  int get parameterErrorCount15;
  @override
  int get parameterErrorCount16;
  @override
  int get parameterErrorCount17;
  @override
  int get parameterErrorCount18;
  @override
  int get parameterErrorCount19; // Debug Fields
  @override
  int get parameterDebug0;
  @override
  int get parameterDebug1;
  @override
  int get parameterDebug2;
  @override
  int get parameterDebug3;
  @override
  int get parameterDebug4;

  /// Create a copy of StoveSensors
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoveSensorsImplCopyWith<_$StoveSensorsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
