import 'package:flutter/material.dart';

/// Helper class for parsing and formatting heating time ranges
/// API format: "HHmmHHmm" (e.g., "08001800" for 08:00 to 18:00)
/// Disabled: "00000000"
class TimeRange {
  final TimeOfDay start;
  final TimeOfDay end;

  const TimeRange({
    required this.start,
    required this.end,
  });

  /// Convert TimeRange to API format string "HHmmHHmm"
  String toApiFormat() {
    final startHour = start.hour.toString().padLeft(2, '0');
    final startMin = start.minute.toString().padLeft(2, '0');
    final endHour = end.hour.toString().padLeft(2, '0');
    final endMin = end.minute.toString().padLeft(2, '0');
    return '$startHour$startMin$endHour$endMin';
  }

  /// Parse API format string "HHmmHHmm" to TimeRange
  /// Returns null if the string is "00000000" (disabled) or invalid
  static TimeRange? fromApiFormat(String api) {
    if (api == "00000000" || api.length != 8) {
      return null;
    }

    try {
      final startHour = int.parse(api.substring(0, 2));
      final startMin = int.parse(api.substring(2, 4));
      final endHour = int.parse(api.substring(4, 6));
      final endMin = int.parse(api.substring(6, 8));

      // Validate ranges
      if (startHour < 0 || startHour > 23 ||
          startMin < 0 || startMin > 59 ||
          endHour < 0 || endHour > 23 ||
          endMin < 0 || endMin > 59) {
        return null;
      }

      return TimeRange(
        start: TimeOfDay(hour: startHour, minute: startMin),
        end: TimeOfDay(hour: endHour, minute: endMin),
      );
    } catch (e) {
      return null;
    }
  }

  /// Get disabled/empty time range string
  static String get disabled => "00000000";

  @override
  String toString() {
    return '${start.formatHHMM} - ${end.formatHHMM}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimeRange &&
          runtimeType == other.runtimeType &&
          start == other.start &&
          end == other.end;

  @override
  int get hashCode => start.hashCode ^ end.hashCode;
}

/// Extension to format TimeOfDay without BuildContext
extension TimeOfDayFormat on TimeOfDay {
  String get formatHHMM {
    final h = hour.toString().padLeft(2, '0');
    final m = minute.toString().padLeft(2, '0');
    return '$h:$m';
  }
}
