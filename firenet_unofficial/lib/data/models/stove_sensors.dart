import 'package:freezed_annotation/freezed_annotation.dart';

part 'stove_sensors.freezed.dart';
part 'stove_sensors.g.dart';

/// Read-only sensor data from a Rika Firenet stove
@freezed
class StoveSensors with _$StoveSensors {
  const StoveSensors._();

  const factory StoveSensors({
    // Temperature & Input Sensors
    required String inputRoomTemperature, // °C as string
    required int inputFlameTemperature, // °C
    required String inputBakeTemperature, // °C or "1024" (N/A)
    required String inputBoardTemperature, // °C
    required int inputCurrentStage, // 0-100
    required int inputTargetStagePID, // 0-100
    required int inputCurrentStagePID, // 0-100

    // Status & Error Codes
    required int statusMainState,
    required int statusSubState,
    required int statusError, // 0 = no error
    required int statusSubError,
    required int statusWarning, // 0 = no warning
    required int statusService,
    required int statusWifiStrength, // dBm, e.g., -69
    required bool statusFrostStarted,
    required bool statusHeatingTimesNotProgrammed,

    // Motor & Fan Outputs
    required int outputDischargeMotor, // Auger motor RPM
    required int outputDischargeCurrent, // Auger motor current (mA)
    required int outputIDFan, // Induced draft fan RPM
    required int outputIDFanTarget, // Target fan RPM
    required int outputInsertionMotor, // Insertion motor RPM
    required int outputInsertionCurrent, // Insertion motor current (mA)
    required int outputAirFlaps, // Air flap position 0-1000
    required int outputAirFlapsTargetPosition, // Target flap position 0-1000

    // Digital Outputs/Inputs
    required bool outputBurnBackFlapMagnet,
    required bool outputGridMotor,
    required bool outputIgnition,
    required bool inputUpperTemperatureLimiter,
    required bool inputPressureSwitch,
    required int inputPressureSensor, // Pa
    required bool inputGridContact,
    required bool inputDoor, // true=closed, false=open
    required bool inputCover, // true=closed, false=open
    required bool inputExternalRequest,
    required bool inputBurnBackFlapSwitch,
    required bool inputFlueGasFlapSwitch,

    // System Parameters
    required bool parameterEcoModePossible,
    required int parameterFabricationNumber,
    required int parameterStoveTypeNumber,
    required int parameterLanguageNumber,
    required int parameterVersionMainBoard,
    required int parameterVersionTFT,
    required int parameterVersionWiFi,
    required int parameterVersionMainBoardBootLoader,
    required int parameterVersionTFTBootLoader,
    required int parameterVersionWiFiBootLoader,
    required int parameterVersionMainBoardSub,
    required int parameterVersionTFTSub,
    required int parameterVersionWiFiSub,

    // Runtime & Consumption Statistics
    required int parameterRuntimePellets, // hours
    required int parameterRuntimeLogs, // hours
    required int parameterFeedRateTotal, // kg
    required int parameterFeedRateService, // kg since last service
    required int parameterServiceCountdownKg, // kg until service due
    required int parameterServiceCountdownTime, // hours until service due
    required int parameterIgnitionCount,
    required int parameterOnOffCycleCount,

    // Calibration & Tuning
    required int parameterFlameSensorOffset,
    required int parameterPressureSensorOffset,
    required int parameterSpiralMotorsTuning,
    required int parameterIDFanTuning,
    required int parameterCleanIntervalBig, // kg
    required int parameterKgTillCleaning,

    // Error History (counts 0-19)
    required int parameterErrorCount0,
    required int parameterErrorCount1,
    required int parameterErrorCount2,
    required int parameterErrorCount3,
    required int parameterErrorCount4,
    required int parameterErrorCount5,
    required int parameterErrorCount6,
    required int parameterErrorCount7,
    required int parameterErrorCount8,
    required int parameterErrorCount9,
    required int parameterErrorCount10,
    required int parameterErrorCount11,
    required int parameterErrorCount12,
    required int parameterErrorCount13,
    required int parameterErrorCount14,
    required int parameterErrorCount15,
    required int parameterErrorCount16,
    required int parameterErrorCount17,
    required int parameterErrorCount18,
    required int parameterErrorCount19,

    // Debug Fields
    required int parameterDebug0,
    required int parameterDebug1,
    required int parameterDebug2,
    required int parameterDebug3,
    required int parameterDebug4,
  }) = _StoveSensors;

  factory StoveSensors.fromJson(Map<String, dynamic> json) =>
      _$StoveSensorsFromJson(json);

  /// Determines if stove is actively burning
  /// Returns true for states 4 (Running) and 5 (Cleaning)
  bool get isBurning => statusMainState == 4 || statusMainState == 5;

  /// Check if there's an error
  bool get hasError => statusError != 0;

  /// Check if there's a warning
  bool get hasWarning => statusWarning != 0;

  /// Parse room temperature to double
  double get roomTemperature => double.tryParse(inputRoomTemperature) ?? 0.0;

  /// Gets human-readable status text based on status codes
  String get statusText {
    // Frost protection takes precedence
    if (statusFrostStarted) return 'Frost Protection';

    switch (statusMainState) {
      case 1:
        // Off/Standby states
        switch (statusSubState) {
          case 0:
            return 'Stove Off';
          case 1:
            return 'Standby';
          case 2:
            return 'External Request';
          case 3:
            return 'Standby';
          default:
            return 'Off';
        }
      case 2:
        return 'Ignition On';
      case 3:
        return 'Starting Up';
      case 4:
        return 'Running';
      case 5:
        // Cleaning states
        if (statusSubState == 3 || statusSubState == 4) {
          return 'Big Clean';
        }
        return 'Cleaning';
      case 6:
        return 'Burn Off';
      case 11:
      case 13:
      case 14:
      case 16:
      case 17:
      case 50:
        return 'Split Log Check';
      case 20:
      case 21:
        return 'Split Log Mode';
      default:
        return 'Unknown State ($statusMainState)';
    }
  }

  /// Gets status category for UI styling
  StoveStatusCategory get statusCategory {
    if (statusFrostStarted) return StoveStatusCategory.warning;
    if (isBurning) return StoveStatusCategory.active;
    if (statusMainState == 1) return StoveStatusCategory.off;
    return StoveStatusCategory.transitioning;
  }
}

/// Status category for UI representation
enum StoveStatusCategory {
  /// Stove is off
  off,

  /// Stove is transitioning between states
  transitioning,

  /// Stove is actively burning/running
  active,

  /// Warning state (e.g., frost protection)
  warning,
}
