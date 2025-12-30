import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/stove_comparison_snapshot.dart';

/// Repository for persisting stove comparison snapshots
///
/// Stores the last known state of each stove to detect changes
class NotificationStateRepository {
  /// Get key for a specific stove's last state
  String _getStateKey(String stoveId) => 'notification_last_state_$stoveId';

  /// Load last known state for a specific stove
  Future<StoveComparisonSnapshot?> getLastKnownState(String stoveId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final stateJson = prefs.getString(_getStateKey(stoveId));

      if (stateJson == null) {
        return null;
      }

      final json = jsonDecode(stateJson) as Map<String, dynamic>;
      return StoveComparisonSnapshot.fromJson(json);
    } catch (e) {
      // On error, return null (no previous state)
      return null;
    }
  }

  /// Save last known state for a specific stove
  Future<void> saveLastKnownState(
    String stoveId,
    StoveComparisonSnapshot snapshot,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final stateJson = jsonEncode(snapshot.toJson());
    await prefs.setString(_getStateKey(stoveId), stateJson);
  }

  /// Clear last known state for a specific stove
  Future<void> clearLastKnownState(String stoveId) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_getStateKey(stoveId));
  }

  /// Clear all last known states
  Future<void> clearAllStates() async {
    final prefs = await SharedPreferences.getInstance();
    final keys = prefs.getKeys();
    final stateKeys = keys.where((key) => key.startsWith('notification_last_state_'));

    for (final key in stateKeys) {
      await prefs.remove(key);
    }
  }
}
