import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../l10n/app_localizations.dart';

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
    required int parameterRuntimeLogs, // minutes (API returns in minutes)
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

  /// Gets human-readable status text based on status codes (localized)
  String getStatusText(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    // Frost protection takes precedence
    if (statusFrostStarted) return l10n.statusFrostProtection;

    switch (statusMainState) {
      case 1:
        // Off/Standby states
        switch (statusSubState) {
          case 0:
            return l10n.statusStoveOff;
          case 1:
            return l10n.statusStandby;
          case 2:
            return l10n.statusExternalRequest;
          case 3:
            return l10n.statusStandby;
          default:
            return l10n.statusOff;
        }
      case 2:
        return l10n.statusIgnitionOn;
      case 3:
        return l10n.statusStartingUp;
      case 4:
        return l10n.statusRunning;
      case 5:
        // Cleaning states
        if (statusSubState == 3 || statusSubState == 4) {
          return l10n.statusBigClean;
        }
        return l10n.statusCleaning;
      case 6:
        return l10n.statusBurnOff;
      case 11:
      case 13:
      case 14:
      case 16:
      case 17:
      case 50:
        return l10n.statusSplitLogCheck;
      case 20:
      case 21:
        return l10n.statusSplitLogMode;
      default:
        return l10n.statusUnknown(statusMainState);
    }
  }

  /// Gets status text in French (for widgets/background services without context)
  String get statusText {
    // Frost protection takes precedence
    if (statusFrostStarted) return 'Protection anti-gel';

    switch (statusMainState) {
      case 1:
        // Off/Standby states
        switch (statusSubState) {
          case 0:
            return 'Poêle éteint';
          case 1:
            return 'En veille';
          case 2:
            return 'Demande externe';
          case 3:
            return 'En veille';
          default:
            return 'Éteint';
        }
      case 2:
        return 'Allumage en cours';
      case 3:
        return 'Démarrage';
      case 4:
        return 'En fonctionnement';
      case 5:
        // Cleaning states
        if (statusSubState == 3 || statusSubState == 4) {
          return 'Grand nettoyage';
        }
        return 'Nettoyage';
      case 6:
        return 'Extinction';
      case 11:
      case 13:
      case 14:
      case 16:
      case 17:
      case 50:
        return 'Vérification bûches';
      case 20:
      case 21:
        return 'Mode bûches';
      default:
        return 'État inconnu ($statusMainState)';
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
