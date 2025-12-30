import 'package:freezed_annotation/freezed_annotation.dart';

part 'stove_comparison_snapshot.freezed.dart';
part 'stove_comparison_snapshot.g.dart';

/// Snapshot of stove sensor field values for comparison
///
/// Stores only the watched fields to minimize storage and improve performance
@freezed
class StoveComparisonSnapshot with _$StoveComparisonSnapshot {
  const factory StoveComparisonSnapshot({
    /// Stove ID
    required String stoveId,

    /// Map of field names to their values
    /// Example: {"statusMainState": 4, "inputRoomTemperature": 20.5}
    required Map<String, dynamic> fieldValues,

    /// When this snapshot was captured
    required DateTime capturedAt,
  }) = _StoveComparisonSnapshot;

  factory StoveComparisonSnapshot.fromJson(Map<String, dynamic> json) =>
      _$StoveComparisonSnapshotFromJson(json);
}
