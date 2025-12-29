import 'package:freezed_annotation/freezed_annotation.dart';
import 'stove_controls.dart';
import 'stove_sensors.dart';
import 'stove_features.dart';

part 'stove_state.freezed.dart';
part 'stove_state.g.dart';

/// Complete data for a Rika Firenet stove from the API
///
/// This matches the structure returned by GET /api/client/{stove_id}/status
@freezed
class StoveData with _$StoveData {
  const StoveData._();

  const factory StoveData({
    required String name, // User-defined stove name
    required String stoveID, // Unique stove identifier
    required int lastSeenMinutes, // Minutes since last communication (0 = online)
    required int lastConfirmedRevision, // Last confirmed control revision timestamp
    required StoveControls controls,
    required StoveSensors sensors,
    required String stoveType, // Stove model name (e.g., "PARO II")
    required StoveFeatures stoveFeatures,
    required String oem, // Manufacturer name (typically "RIKA")
  }) = _StoveData;

  factory StoveData.fromJson(Map<String, dynamic> json) =>
      _$StoveDataFromJson(json);

  /// Quick check if stove is on
  bool get isOn => controls.onOff;

  /// Quick check if stove is burning
  bool get isBurning => sensors.isBurning;

  /// Quick check if stove is online
  bool get isOnline => lastSeenMinutes == 0;

  /// Gets current room temperature
  double get currentTemperature => sensors.roomTemperature;

  /// Gets target temperature as double
  double get targetTemperature =>
      double.tryParse(controls.targetTemperature) ?? 20.0;
}

/// Alias for backward compatibility
@Deprecated('Use StoveData instead')
typedef StoveState = StoveData;
