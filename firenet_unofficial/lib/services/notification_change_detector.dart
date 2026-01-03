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

    // Route to appropriate detection method based on mode
    switch (settings.mode) {
      case NotificationMode.simple:
        events.addAll(_detectSimpleModeChanges(
          previous: previous,
          current: current,
          stoveName: stoveName,
        ));
        break;
      case NotificationMode.advanced:
        events.addAll(_detectAdvancedModeChanges(
          previous: previous,
          current: current,
          settings: settings,
          stoveName: stoveName,
        ));
        break;
    }

    return events;
  }

  /// Detect changes for simple mode (pre-defined important events)
  List<NotificationEvent> _detectSimpleModeChanges({
    required StoveComparisonSnapshot previous,
    required StoveComparisonSnapshot current,
    required String stoveName,
  }) {
    final List<NotificationEvent> events = [];

    // 1. Check for error code changes
    final prevError = previous.fieldValues['statusError'] as int? ?? 0;
    final currError = current.fieldValues['statusError'] as int? ?? 0;

    if (prevError != currError && currError != 0) {
      // Error appeared or changed (only notify when error is active)
      events.add(NotificationEvent(
        stoveId: current.stoveId,
        stoveName: stoveName,
        fieldName: 'statusError',
        previousValue: prevError,
        currentValue: currError,
        timestamp: DateTime.now(),
      ));
    }

    // 2. Check for warning code changes
    final prevWarning = previous.fieldValues['statusWarning'] as int? ?? 0;
    final currWarning = current.fieldValues['statusWarning'] as int? ?? 0;

    if (prevWarning != currWarning && currWarning != 0) {
      // Warning appeared or changed (only notify when warning is active)
      events.add(NotificationEvent(
        stoveId: current.stoveId,
        stoveName: stoveName,
        fieldName: 'statusWarning',
        previousValue: prevWarning,
        currentValue: currWarning,
        timestamp: DateTime.now(),
      ));
    }

    // 3. Check for major state changes
    final prevState = previous.fieldValues['statusMainState'] as int? ?? 0;
    final currState = current.fieldValues['statusMainState'] as int? ?? 0;

    if (prevState != currState && _isImportantStateChange(prevState, currState)) {
      events.add(NotificationEvent(
        stoveId: current.stoveId,
        stoveName: stoveName,
        fieldName: 'statusMainState',
        previousValue: prevState,
        currentValue: currState,
        timestamp: DateTime.now(),
      ));
    }

    return events;
  }

  /// Check if state change is important enough to notify
  bool _isImportantStateChange(int prevState, int currState) {
    // Important state transitions:
    // - 1 (Off) → 2 (Ignition)
    // - 2 (Ignition) → 3 (Starting)
    // - 3 (Starting) → 4 (Running)
    // - 4 (Running) → 5 (Cleaning)
    // - 4 (Running) → 6 (Burn off)
    // - Any state → 1 (Off)
    // - Any state → 11-50 (Split log modes)

    // Notify on all state changes for now (user wants to know about state transitions)
    return true;
  }

  /// Detect changes for advanced mode (custom field monitoring)
  List<NotificationEvent> _detectAdvancedModeChanges({
    required StoveComparisonSnapshot previous,
    required StoveComparisonSnapshot current,
    required NotificationSettings settings,
    required String stoveName,
  }) {
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
