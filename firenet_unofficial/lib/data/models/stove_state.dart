import 'package:freezed_annotation/freezed_annotation.dart';
import 'stove_controls.dart';
import 'stove_sensors.dart';

part 'stove_state.freezed.dart';
part 'stove_state.g.dart';

/// Complete state of a Rika Firenet stove, combining controls and sensors
@freezed
class StoveState with _$StoveState {
  const StoveState._();

  const factory StoveState({
    required StoveControls controls,
    required StoveSensors sensors,
    DateTime? lastUpdated,
  }) = _StoveState;

  factory StoveState.fromJson(Map<String, dynamic> json) =>
      _$StoveStateFromJson(json);

  /// Quick check if stove is on
  bool get isOn => controls.onOff;

  /// Quick check if stove is burning
  bool get isBurning => sensors.isBurning;

  /// Gets current room temperature
  double get currentTemperature => sensors.inputRoomTemperature;

  /// Gets target temperature as double
  double get targetTemperature =>
      double.tryParse(controls.targetTemperature) ?? 20.0;

  /// Check if data is stale (older than 2 minutes)
  bool get isStale {
    if (lastUpdated == null) return true;
    return DateTime.now().difference(lastUpdated!) > const Duration(minutes: 2);
  }
}
