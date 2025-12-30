import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/foundation.dart';
import '../data/models/notification_event.dart';
import 'stove_field_descriptor_service.dart';

/// Service to manage local notifications
class NotificationService {
  final FlutterLocalNotificationsPlugin _plugin = FlutterLocalNotificationsPlugin();

  // Notification channels
  static const String _highPriorityChannel = 'stove_alerts_high';
  static const String _mediumPriorityChannel = 'stove_alerts_medium';

  // Anti-spam: track last notification time per stove
  final Map<String, DateTime> _lastNotificationTimes = {};
  static const Duration _throttleWindow = Duration(minutes: 5);

  /// Initialize notification service
  Future<void> initialize() async {
    // Android initialization
    const androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');

    // iOS initialization (even if not used, required by plugin)
    const iosSettings = DarwinInitializationSettings();

    const initSettings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _plugin.initialize(initSettings);

    // Create notification channels (Android 8+)
    if (!kIsWeb) {
      await _createNotificationChannels();
    }
  }

  /// Create Android notification channels
  Future<void> _createNotificationChannels() async {
    // HIGH priority channel (errors, warnings, door, offline)
    const highChannel = AndroidNotificationChannel(
      _highPriorityChannel,
      'Alertes critiques',
      description: 'Erreurs, warnings et alertes de sécurité du poêle',
      importance: Importance.high,
      enableVibration: true,
      playSound: true,
    );

    // MEDIUM priority channel (state changes, temperature, etc.)
    const mediumChannel = AndroidNotificationChannel(
      _mediumPriorityChannel,
      'Événements du poêle',
      description: 'Changements d\'état et événements opérationnels',
      importance: Importance.defaultImportance,
      enableVibration: true,
      playSound: true,
    );

    final androidPlugin = _plugin.resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>();

    await androidPlugin?.createNotificationChannel(highChannel);
    await androidPlugin?.createNotificationChannel(mediumChannel);
  }

  /// Send notification for single event
  Future<void> sendNotification(NotificationEvent event) async {
    // Check throttle
    if (!_shouldSendNotification(event.stoveId)) {
      debugPrint('[NotificationService] Throttled notification for ${event.stoveId}');
      return;
    }

    final channelId = _selectChannel(event.fieldName);
    final channelName = channelId == _highPriorityChannel
        ? 'Alertes critiques'
        : 'Événements du poêle';

    final androidDetails = AndroidNotificationDetails(
      channelId,
      channelName,
      importance: channelId == _highPriorityChannel
          ? Importance.high
          : Importance.defaultImportance,
      priority: channelId == _highPriorityChannel
          ? Priority.high
          : Priority.defaultPriority,
      actions: <AndroidNotificationAction>[
        const AndroidNotificationAction(
          'open_app',
          'Ouvrir',
          showsUserInterface: true,
        ),
      ],
    );

    const iosDetails = DarwinNotificationDetails();

    final details = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    // Get human-readable field name
    final fieldName = _getFieldDisplayName(event.fieldName);
    final body = '$fieldName : ${_formatValue(event.previousValue)} → ${_formatValue(event.currentValue)}';

    await _plugin.show(
      event.stoveId.hashCode, // Use stove ID hash as notification ID
      event.title,
      body,
      details,
    );

    // Record notification time
    _recordNotification(event.stoveId);
  }

  /// Send notification for multiple events (grouped)
  Future<void> sendGroupedNotification(
    String stoveId,
    String stoveName,
    List<NotificationEvent> events,
  ) async {
    if (events.isEmpty) return;

    // Check throttle
    if (!_shouldSendNotification(stoveId)) {
      debugPrint('[NotificationService] Throttled grouped notification for $stoveId');
      return;
    }

    final channelId = _selectGroupedChannel(events);
    final channelName = channelId == _highPriorityChannel
        ? 'Alertes critiques'
        : 'Événements du poêle';

    final lines = events.map((e) {
      final fieldName = _getFieldDisplayName(e.fieldName);
      return '$fieldName : ${_formatValue(e.previousValue)} → ${_formatValue(e.currentValue)}';
    }).toList();

    final androidDetails = AndroidNotificationDetails(
      channelId,
      channelName,
      importance: channelId == _highPriorityChannel
          ? Importance.high
          : Importance.defaultImportance,
      priority: channelId == _highPriorityChannel
          ? Priority.high
          : Priority.defaultPriority,
      styleInformation: InboxStyleInformation(
        lines,
        summaryText: '${events.length} changements',
      ),
      actions: <AndroidNotificationAction>[
        const AndroidNotificationAction(
          'open_app',
          'Ouvrir',
          showsUserInterface: true,
        ),
      ],
    );

    const iosDetails = DarwinNotificationDetails();

    final details = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    await _plugin.show(
      stoveId.hashCode,
      '${events.length} changements détectés sur $stoveName',
      lines.join('\n'),
      details,
    );

    // Record notification time
    _recordNotification(stoveId);
  }

  /// Select notification channel based on field name
  String _selectChannel(String fieldName) {
    // HIGH priority fields
    if (fieldName == 'statusError' ||
        fieldName == 'statusWarning' ||
        fieldName == 'inputDoor') {
      return _highPriorityChannel;
    }

    // Default to MEDIUM
    return _mediumPriorityChannel;
  }

  /// Select channel for grouped notification (use highest priority)
  String _selectGroupedChannel(List<NotificationEvent> events) {
    for (final event in events) {
      if (_selectChannel(event.fieldName) == _highPriorityChannel) {
        return _highPriorityChannel;
      }
    }
    return _mediumPriorityChannel;
  }

  /// Get human-readable field display name
  String _getFieldDisplayName(String fieldName) {
    try {
      final descriptor = StoveFieldDescriptorService.getAllDescriptors()
          .firstWhere((d) => d.fieldName == fieldName);
      return descriptor.displayName;
    } catch (e) {
      return fieldName;
    }
  }

  /// Format value for display
  String _formatValue(dynamic value) {
    if (value is double) {
      return '${value.toStringAsFixed(1)}°C';
    }
    if (value is bool) {
      return value ? 'Actif' : 'Inactif';
    }
    if (value is int) {
      return value.toString();
    }
    return value.toString();
  }

  /// Check if notification should be sent (throttling)
  bool _shouldSendNotification(String stoveId) {
    final lastTime = _lastNotificationTimes[stoveId];
    if (lastTime == null) return true;

    final elapsed = DateTime.now().difference(lastTime);
    return elapsed >= _throttleWindow;
  }

  /// Record notification time
  void _recordNotification(String stoveId) {
    _lastNotificationTimes[stoveId] = DateTime.now();
  }
}
