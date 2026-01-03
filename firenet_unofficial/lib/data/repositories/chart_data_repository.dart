import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import '../local/database.dart';
import '../models/chart_data.dart';
import '../../core/errors/failures.dart';

/// Repository for querying historical data for charts
class ChartDataRepository {
  final AppDatabase _database;

  ChartDataRepository(this._database);

  /// Get temperature data for the last 24 hours
  ///
  /// Returns a list of temperature data points from the last 24 hours
  /// Returns empty list if no data is available
  Future<Either<Failure, List<TemperatureDataPoint>>> getTemperatureData24h(
    String stoveId,
  ) async {
    try {
      final now = DateTime.now();
      final start = now.subtract(const Duration(hours: 24));

      final readings = await _database.getSensorReadings(stoveId, start, now);

      if (readings.isEmpty) {
        debugPrint(
          '[ChartDataRepository] No temperature data for last 24h (stove: $stoveId)',
        );
        return const Right([]);
      }

      // Sample data if we have too many points (limit to 288 points = 5 min intervals)
      final sampledReadings = _sampleReadings(readings, maxPoints: 288);

      final dataPoints = sampledReadings.map((reading) {
        return TemperatureDataPoint(
          timestamp: reading.timestamp,
          roomTemperature: reading.inputRoomTemperature,
          targetTemperature: reading.targetTemperature,
          flameTemperature: reading.inputFlameTemperature,
        );
      }).toList();

      debugPrint(
        '[ChartDataRepository] Retrieved ${dataPoints.length} temperature data points',
      );

      return Right(dataPoints);
    } catch (e) {
      debugPrint('[ChartDataRepository] ERROR: Failed to get temperature data: $e');
      return Left(DatabaseFailure('Failed to retrieve temperature data: $e'));
    }
  }

  /// Get temperature data for a custom time range
  Future<Either<Failure, List<TemperatureDataPoint>>> getTemperatureData(
    String stoveId,
    DateTime start,
    DateTime end,
  ) async {
    try {
      final readings = await _database.getSensorReadings(stoveId, start, end);

      if (readings.isEmpty) {
        return const Right([]);
      }

      // Sample based on time range (more aggressive sampling for longer ranges)
      final duration = end.difference(start);
      int maxPoints = 288; // Default: ~5 min intervals

      if (duration.inDays > 7) {
        maxPoints = 168; // ~1 hour intervals for week+
      } else if (duration.inDays > 1) {
        maxPoints = 288; // ~10 min intervals for multi-day
      }

      final sampledReadings = _sampleReadings(readings, maxPoints: maxPoints);

      final dataPoints = sampledReadings.map((reading) {
        return TemperatureDataPoint(
          timestamp: reading.timestamp,
          roomTemperature: reading.inputRoomTemperature,
          targetTemperature: reading.targetTemperature,
          flameTemperature: reading.inputFlameTemperature,
        );
      }).toList();

      return Right(dataPoints);
    } catch (e) {
      debugPrint('[ChartDataRepository] ERROR: Failed to get temperature data: $e');
      return Left(DatabaseFailure('Failed to retrieve temperature data: $e'));
    }
  }

  /// Get daily consumption data for the last N days
  Future<Either<Failure, List<ConsumptionDataPoint>>> getConsumptionData(
    String stoveId,
    int days,
  ) async {
    try {
      final end = DateTime.now();
      final start = end.subtract(Duration(days: days));

      final dailyStats = await _database.getDailyStatistics(stoveId, start, end);

      if (dailyStats.isEmpty) {
        debugPrint(
          '[ChartDataRepository] No consumption data for last $days days',
        );
        return const Right([]);
      }

      final dataPoints = dailyStats.map((stat) {
        return ConsumptionDataPoint(
          date: stat.date,
          pelletConsumptionKg: stat.pelletConsumptionKg,
          runtimeMinutes: stat.runtimeMinutes,
          ignitionCount: stat.ignitionCount,
        );
      }).toList();

      debugPrint(
        '[ChartDataRepository] Retrieved ${dataPoints.length} consumption data points',
      );

      return Right(dataPoints);
    } catch (e) {
      debugPrint('[ChartDataRepository] ERROR: Failed to get consumption data: $e');
      return Left(DatabaseFailure('Failed to retrieve consumption data: $e'));
    }
  }

  /// Get state transitions for timeline chart
  Future<Either<Failure, List<StateTransitionDataPoint>>> getStateTransitions(
    String stoveId,
    DateTime start,
    DateTime end,
  ) async {
    try {
      final transitions = await _database.getStateTransitions(stoveId, start, end);

      if (transitions.isEmpty) {
        return const Right([]);
      }

      final dataPoints = transitions
          .where((t) => t.fromState != null && t.durationSeconds != null)
          .map((transition) {
        return StateTransitionDataPoint(
          timestamp: transition.timestamp,
          fromState: transition.fromState!,
          toState: transition.toState,
          durationSeconds: transition.durationSeconds!,
        );
      }).toList();

      return Right(dataPoints);
    } catch (e) {
      debugPrint('[ChartDataRepository] ERROR: Failed to get state transitions: $e');
      return Left(DatabaseFailure('Failed to retrieve state transitions: $e'));
    }
  }

  /// Sample readings to reduce number of data points
  ///
  /// Uses simple uniform sampling to keep approximately [maxPoints] readings
  List<SensorReading> _sampleReadings(
    List<SensorReading> readings, {
    required int maxPoints,
  }) {
    if (readings.length <= maxPoints) {
      return readings;
    }

    final step = readings.length / maxPoints;
    final sampled = <SensorReading>[];

    for (var i = 0; i < maxPoints; i++) {
      final index = (i * step).floor();
      if (index < readings.length) {
        sampled.add(readings[index]);
      }
    }

    debugPrint(
      '[ChartDataRepository] Sampled ${readings.length} readings down to ${sampled.length}',
    );

    return sampled;
  }

  /// Check if sufficient data exists for meaningful charts
  ///
  /// Returns true if we have at least 10 data points
  Future<bool> hasSufficientData(String stoveId) async {
    try {
      final count = await _database.getSensorReadingCount(stoveId);

      return count >= 10;
    } catch (e) {
      debugPrint('[ChartDataRepository] ERROR: Failed to check data availability: $e');
      return false;
    }
  }

  /// Get the number of sensor readings collected in the last 24 hours
  ///
  /// Returns the count of data points available for chart display
  Future<int> getSensorReadingCount24h(String stoveId) async {
    try {
      final now = DateTime.now();
      final start = now.subtract(const Duration(hours: 24));
      final readings = await _database.getSensorReadings(stoveId, start, now);

      return readings.length;
    } catch (e) {
      debugPrint('[ChartDataRepository] ERROR: Failed to count sensor readings: $e');
      return 0;
    }
  }
}
