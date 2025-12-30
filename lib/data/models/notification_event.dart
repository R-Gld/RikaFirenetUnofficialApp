/// Represents a notification event triggered by a sensor field change
class NotificationEvent {
  final String stoveId;
  final String stoveName;
  final String fieldName;
  final dynamic previousValue;
  final dynamic currentValue;
  final DateTime timestamp;

  NotificationEvent({
    required this.stoveId,
    required this.stoveName,
    required this.fieldName,
    required this.previousValue,
    required this.currentValue,
    required this.timestamp,
  });

  /// Human-readable title for notification
  String get title => 'Changement détecté sur $stoveName';

  /// Human-readable body for notification
  String get body {
    final prev = _formatValue(previousValue);
    final curr = _formatValue(currentValue);
    final field = _formatFieldName(fieldName);
    return '$field : $prev → $curr';
  }

  /// Format value for display
  String _formatValue(dynamic value) {
    if (value is double) {
      return '${value.toStringAsFixed(1)}°C';
    }
    if (value is bool) {
      return value ? 'Actif' : 'Inactif';
    }
    return value.toString();
  }

  /// Format field name to human-readable
  String _formatFieldName(String fieldName) {
    // Will be enhanced by StoveFieldDescriptorService
    // For now, return as-is
    return fieldName;
  }
}
