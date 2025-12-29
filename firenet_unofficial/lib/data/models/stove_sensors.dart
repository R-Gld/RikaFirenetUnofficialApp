import 'package:freezed_annotation/freezed_annotation.dart';

part 'stove_sensors.freezed.dart';
part 'stove_sensors.g.dart';

/// Read-only sensor data from a Rika Firenet stove
@freezed
class StoveSensors with _$StoveSensors {
  const StoveSensors._();

  const factory StoveSensors({
    required double inputRoomTemperature,
    required double inputFlameTemperature,
    required double parameterFeedRateTotal,
    required int parameterRuntimePellets,
    required int statusMainState,
    required int statusSubState,
    required bool statusFrostStarted,
  }) = _StoveSensors;

  factory StoveSensors.fromJson(Map<String, dynamic> json) =>
      _$StoveSensorsFromJson(json);

  /// Determines if stove is actively burning
  /// Returns true for states 4 (Running) and 5 (Cleaning)
  bool get isBurning => statusMainState == 4 || statusMainState == 5;

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
