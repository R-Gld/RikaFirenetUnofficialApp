import 'package:drift/drift.dart';
import 'package:flutter/foundation.dart';
import '../data/local/database.dart';
import '../data/models/stove_state.dart';

/// Service responsible for collecting sensor data and storing it in the database
///
/// This service:
/// - Inserts sensor readings from StoveData into the database
/// - Detects and records state transitions
/// - Cleans old data based on retention policy (30 days)
class SensorDataCollector {
  final AppDatabase _database;

  SensorDataCollector(this._database);

  /// Collect and store a sensor reading from StoveData
  ///
  /// Returns true if collection was successful, false otherwise
  Future<bool> collectReading(StoveData stoveData) async {
    debugPrint('[SensorDataCollector] ===== COLLECT READING CALLED =====');
    try {
      final sensors = stoveData.sensors;
      final stoveId = stoveData.stoveID;
      final timestamp = DateTime.now().toUtc();

      debugPrint('[SensorDataCollector] StoveID: $stoveId, Timestamp: $timestamp');

      // Parse room temperature (it's a string in the API)
      final roomTemp = double.tryParse(sensors.inputRoomTemperature) ?? 0.0;

      // Parse target temperature from controls
      final targetTemp = stoveData.targetTemperature;

      // Check for errors and warnings
      final hasError = sensors.statusError != 0;
      final hasWarning = sensors.statusWarning != 0;

      // Create sensor reading entry
      final reading = SensorReadingsCompanion.insert(
        stoveId: stoveId,
        timestamp: timestamp,
        inputRoomTemperature: roomTemp,
        inputFlameTemperature: sensors.inputFlameTemperature,
        targetTemperature: targetTemp,
        outputDischargeMotor: sensors.outputDischargeMotor,
        outputIDFan: sensors.outputIDFan,
        statusMainState: sensors.statusMainState,
        statusSubState: sensors.statusSubState,
        parameterRuntimePellets: sensors.parameterRuntimePellets,
        parameterFeedRateTotal: sensors.parameterFeedRateTotal,
        parameterIgnitionCount: sensors.parameterIgnitionCount,
        statusFrostStarted: sensors.statusFrostStarted,
        hasError: hasError,
        hasWarning: hasWarning,
      );

      // Insert the reading
      debugPrint('[SensorDataCollector] Attempting to insert reading into database...');
      final insertedId = await _database.insertSensorReading(reading);
      debugPrint('[SensorDataCollector] ✅ Successfully inserted reading with ID: $insertedId');

      // Track state transitions
      await _trackStateTransition(stoveId, sensors.statusMainState, timestamp);

      // Verify insertion by counting total readings
      final totalCount = await _database.getSensorReadingCount(stoveId);
      debugPrint(
        '[SensorDataCollector] ✅ Collected reading for $stoveId - '
        'State: ${sensors.statusMainState}, Temp: $roomTemp°C, Total readings: $totalCount',
      );

      return true;
    } catch (e, stack) {
      debugPrint('[SensorDataCollector] ERROR: Failed to collect reading: $e');
      debugPrint('[SensorDataCollector] Stack trace: $stack');
      return false;
    }
  }

  /// Track state transitions and record them
  ///
  /// Detects when the stove changes from one state to another and
  /// records the transition with duration information
  Future<void> _trackStateTransition(
    String stoveId,
    int currentState,
    DateTime timestamp,
  ) async {
    try {
      // Get the latest state transition for this stove
      final lastTransition = await _database.getLatestStateTransition(stoveId);

      // If no previous transition or state changed, record new transition
      if (lastTransition == null || lastTransition.toState != currentState) {
        // Calculate duration in previous state
        int? durationSeconds;
        int? fromState;

        if (lastTransition != null) {
          fromState = lastTransition.toState;
          final duration = timestamp.difference(lastTransition.timestamp);
          durationSeconds = duration.inSeconds;

          debugPrint(
            '[SensorDataCollector] State transition detected: '
            '$fromState → $currentState (duration: ${duration.inMinutes} min)',
          );
        } else {
          debugPrint(
            '[SensorDataCollector] Initial state recorded: $currentState',
          );
        }

        // Insert the transition
        await _database.insertStateTransition(
          StateTransitionsCompanion.insert(
            stoveId: stoveId,
            timestamp: timestamp,
            fromState: Value(fromState),
            toState: currentState,
            durationSeconds: Value(durationSeconds),
          ),
        );
      }
    } catch (e) {
      debugPrint('[SensorDataCollector] WARNING: Failed to track state transition: $e');
      // Don't throw - state tracking is not critical
    }
  }

  /// Clean old sensor readings based on retention policy
  ///
  /// Deletes sensor readings older than [retentionDays] (default: 30 days)
  /// Returns the number of deleted records
  Future<int> cleanOldData({int retentionDays = 30}) async {
    try {
      final cutoffDate = DateTime.now()
          .toUtc()
          .subtract(Duration(days: retentionDays));

      final deletedCount = await _database.deleteSensorReadingsOlderThan(cutoffDate);

      if (deletedCount > 0) {
        debugPrint(
          '[SensorDataCollector] Cleaned $deletedCount old sensor readings '
          '(older than $retentionDays days)',
        );
      }

      return deletedCount;
    } catch (e) {
      debugPrint('[SensorDataCollector] ERROR: Failed to clean old data: $e');
      return 0;
    }
  }

  /// Get database statistics for monitoring
  ///
  /// Returns a map with useful statistics about stored data
  Future<Map<String, dynamic>> getStatistics(String stoveId) async {
    try {
      final readingCount = await _database.getSensorReadingCount(stoveId);
      final latestReading = await _database.getLatestSensorReading(stoveId);
      final latestTransition = await _database.getLatestStateTransition(stoveId);

      return {
        'readingCount': readingCount,
        'latestReadingTime': latestReading?.timestamp,
        'latestState': latestTransition?.toState,
        'latestTransitionTime': latestTransition?.timestamp,
      };
    } catch (e) {
      debugPrint('[SensorDataCollector] ERROR: Failed to get statistics: $e');
      return {};
    }
  }

  /// Calculate estimated database size
  ///
  /// Provides an estimate of storage usage based on number of readings
  /// Average reading size: ~200 bytes
  Future<String> getEstimatedDatabaseSize(String stoveId) async {
    try {
      final readingCount = await _database.getSensorReadingCount(stoveId);
      const avgReadingSize = 200; // bytes per reading
      final estimatedBytes = readingCount * avgReadingSize;

      // Convert to human-readable format
      if (estimatedBytes < 1024) {
        return '$estimatedBytes B';
      } else if (estimatedBytes < 1024 * 1024) {
        return '${(estimatedBytes / 1024).toStringAsFixed(1)} KB';
      } else {
        return '${(estimatedBytes / (1024 * 1024)).toStringAsFixed(1)} MB';
      }
    } catch (e) {
      debugPrint('[SensorDataCollector] ERROR: Failed to estimate database size: $e');
      return 'Unknown';
    }
  }
}
