import '../data/models/notification_event.dart';
import '../data/models/notification_settings.dart';
import '../data/models/stove_comparison_snapshot.dart';

/// Service to detect changes between two stove snapshots
class NotificationChangeDetector {
  /// Detect changes between previous and current snapshot
  ///
  /// Returns list of notification events for fields that changed
  /// according to the notification settings
  List<NotificationEvent> detectChanges({
    required StoveComparisonSnapshot? previous,
    required StoveComparisonSnapshot current,
    required NotificationSettings settings,
    required String stoveName,
  }) {
    // First execution - no previous state to compare
    if (previous == null) {
      return [];
    }

    final List<NotificationEvent> events = [];

    // Check each watched field for changes
    for (final fieldName in settings.watchedFields) {
      final prevValue = previous.fieldValues[fieldName];
      final currValue = current.fieldValues[fieldName];

      // No change
      if (prevValue == currValue) {
        continue;
      }

      // Check if threshold configured for this field
      if (settings.fieldThresholds.containsKey(fieldName)) {
        if (!_isThresholdCrossed(
          prevValue,
          currValue,
          settings.fieldThresholds[fieldName],
        )) {
          // Changed but threshold not crossed
          continue;
        }
      }

      // Change detected! Create event
      events.add(NotificationEvent(
        stoveId: current.stoveId,
        stoveName: stoveName,
        fieldName: fieldName,
        previousValue: prevValue,
        currentValue: currValue,
        timestamp: DateTime.now(),
      ));
    }

    return events;
  }

  /// Check if a threshold was crossed
  ///
  /// Returns true if the value went from inside threshold to outside
  /// (or vice versa)
  bool _isThresholdCrossed(
    dynamic prevValue,
    dynamic currValue,
    Map<String, dynamic> threshold,
  ) {
    // Only applies to numeric values
    if (prevValue is! num || currValue is! num) {
      return true; // Not a numeric field, consider threshold crossed
    }

    final double min = (threshold['min'] as num?)?.toDouble() ?? double.negativeInfinity;
    final double max = (threshold['max'] as num?)?.toDouble() ?? double.infinity;

    final prevNum = prevValue.toDouble();
    final currNum = currValue.toDouble();

    final bool prevInRange = prevNum >= min && prevNum <= max;
    final bool currInRange = currNum >= min && currNum <= max;

    // Threshold crossed if state changed (in→out or out→in)
    return prevInRange != currInRange;
  }
}
