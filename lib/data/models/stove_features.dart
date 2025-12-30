import 'package:freezed_annotation/freezed_annotation.dart';

part 'stove_features.freezed.dart';
part 'stove_features.g.dart';

/// Indicates which features are available on a specific stove model
@freezed
class StoveFeatures with _$StoveFeatures {
  const factory StoveFeatures({
    required bool multiAir1, // Convection fan 1 available
    required bool multiAir2, // Convection fan 2 available
    required bool insertionMotor, // Log insertion motor present
    required bool airFlaps, // Motorized air flaps present
    required bool logRuntime, // Supports wood log burning
    required bool bakeMode, // Baking/cooking mode available
  }) = _StoveFeatures;

  factory StoveFeatures.fromJson(Map<String, dynamic> json) =>
      _$StoveFeaturesFromJson(json);
}
