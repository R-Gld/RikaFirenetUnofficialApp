import 'package:freezed_annotation/freezed_annotation.dart';

part 'stove_controls.freezed.dart';
part 'stove_controls.g.dart';

/// Writable controls for a Rika Firenet stove
///
/// CRITICAL: This represents the complete control state that must be sent
/// to the API. ALL fields must be sent together, partial updates are not supported.
/// Temperature fields MUST be STRINGS in the API.
@freezed
class StoveControls with _$StoveControls {
  const StoveControls._();

  const factory StoveControls({
    required int revision,
    required bool onOff,
    required int operatingMode, // 0=manual, 1=auto, 2=comfort
    required int heatingPower,
    required String targetTemperature, // CRITICAL: Must be STRING! Range: "16" to "30"
    required String bakeTemperature, // STRING, e.g., "180"
    required bool ecoMode,

    // Heating times schedule (HHmmHHmm format or "00000000" for disabled)
    required String heatingTimeMon1,
    required String heatingTimeMon2,
    required String heatingTimeTue1,
    required String heatingTimeTue2,
    required String heatingTimeWed1,
    required String heatingTimeWed2,
    required String heatingTimeThu1,
    required String heatingTimeThu2,
    required String heatingTimeFri1,
    required String heatingTimeFri2,
    required String heatingTimeSat1,
    required String heatingTimeSat2,
    required String heatingTimeSun1,
    required String heatingTimeSun2,
    required bool heatingTimesActiveForComfort,

    required String setBackTemperature, // STRING, Range: "14" to "30"

    // Convection fans
    required bool convectionFan1Active,
    required int convectionFan1Level, // 0-5
    required int convectionFan1Area, // -30 to +30
    required bool convectionFan2Active,
    required int convectionFan2Level, // 0-5
    required int convectionFan2Area, // -30 to +30

    // Frost protection
    required bool frostProtectionActive,
    required String frostProtectionTemperature, // STRING, Range: "4" to "10"

    required String temperatureOffset, // STRING, Range: "-3" to "+3"
    // ignore: invalid_annotation_target
    @JsonKey(name: 'RoomPowerRequest') required int roomPowerRequest, // 1-4

    // Debug fields
    required int debug0,
    required int debug1,
    required int debug2,
    required int debug3,
    required int debug4,
  }) = _StoveControls;

  factory StoveControls.fromJson(Map<String, dynamic> json) =>
      _$StoveControlsFromJson(json);

  /// Validates temperature is in valid range (16-30°C)
  bool get isTargetTemperatureValid {
    final temp = int.tryParse(targetTemperature);
    return temp != null && temp >= 16 && temp <= 30;
  }

  /// Validates setback temperature is in valid range (14-30°C)
  bool get isSetBackTemperatureValid {
    final temp = int.tryParse(setBackTemperature);
    return temp != null && temp >= 14 && temp <= 30;
  }

  /// Validates frost protection temperature is in valid range (4-10°C)
  bool get isFrostProtectionTemperatureValid {
    final temp = int.tryParse(frostProtectionTemperature);
    return temp != null && temp >= 4 && temp <= 10;
  }

  /// Validates temperature offset is in valid range (-3 to +3)
  bool get isTemperatureOffsetValid {
    final offset = int.tryParse(temperatureOffset);
    return offset != null && offset >= -3 && offset <= 3;
  }

  /// Validates heating power is in range (0-100)
  bool get isHeatingPowerValid {
    return heatingPower >= 0 && heatingPower <= 100;
  }

  /// Validates room power request is in range (1-4)
  bool get isRoomPowerRequestValid {
    return roomPowerRequest >= 1 && roomPowerRequest <= 4;
  }

  /// Validates operating mode is in range (0-2)
  bool get isOperatingModeValid {
    return operatingMode >= 0 && operatingMode <= 2;
  }

  /// Validates fan levels are in range (0-5)
  bool get areFanLevelsValid {
    return convectionFan1Level >= 0 &&
        convectionFan1Level <= 5 &&
        convectionFan2Level >= 0 &&
        convectionFan2Level <= 5;
  }

  /// Validates fan areas are in range (-30 to +30)
  bool get areFanAreasValid {
    return convectionFan1Area >= -30 &&
        convectionFan1Area <= 30 &&
        convectionFan2Area >= -30 &&
        convectionFan2Area <= 30;
  }

  /// Validates all control values
  bool get isValid {
    return isTargetTemperatureValid &&
        isSetBackTemperatureValid &&
        isFrostProtectionTemperatureValid &&
        isTemperatureOffsetValid &&
        isHeatingPowerValid &&
        isRoomPowerRequestValid &&
        isOperatingModeValid &&
        areFanLevelsValid &&
        areFanAreasValid;
  }
}
