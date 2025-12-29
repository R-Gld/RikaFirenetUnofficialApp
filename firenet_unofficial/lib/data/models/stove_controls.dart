import 'package:freezed_annotation/freezed_annotation.dart';

part 'stove_controls.freezed.dart';
part 'stove_controls.g.dart';

/// Writable controls for a Rika Firenet stove
///
/// CRITICAL: This represents the complete control state that must be sent
/// to the API. ALL fields must be sent together, partial updates are not supported.
/// The targetTemperature field MUST be a STRING in the API.
@freezed
class StoveControls with _$StoveControls {
  const StoveControls._();

  const factory StoveControls({
    required bool onOff,
    required String targetTemperature, // CRITICAL: Must be STRING!
    required double setBackTemperature,
    required double operatingMode,
    required bool heatingTimesActiveForComfort,
    required int heatingPower,
    @JsonKey(name: 'RoomPowerRequest') required int roomPowerRequest,
    required bool convectionFan1Active,
    required int convectionFan1Level,
    required int convectionFan1Area,
    required bool convectionFan2Active,
    required int convectionFan2Level,
    required int convectionFan2Area,
  }) = _StoveControls;

  factory StoveControls.fromJson(Map<String, dynamic> json) =>
      _$StoveControlsFromJson(json);

  /// Validates temperature is in valid range (16-30°C)
  bool get isTargetTemperatureValid {
    final temp = int.tryParse(targetTemperature);
    return temp != null && temp >= 16 && temp <= 30;
  }

  /// Validates heating power is in range (0-100)
  bool get isHeatingPowerValid {
    return heatingPower >= 0 && heatingPower <= 100;
  }

  /// Validates room power request is in range (1-4)
  bool get isRoomPowerRequestValid {
    return roomPowerRequest >= 1 && roomPowerRequest <= 4;
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
        isHeatingPowerValid &&
        isRoomPowerRequestValid &&
        areFanLevelsValid &&
        areFanAreasValid;
  }
}
