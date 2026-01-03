import 'package:flutter/foundation.dart';
import '../data/local/database.dart';

/// Service responsible for aggregating sensor data into statistics
///
/// This service:
/// - Computes daily statistics from raw sensor readings
/// - Computes weekly statistics from daily statistics
/// - Computes monthly statistics from daily statistics
class StatisticsAggregator {
  final AppDatabase _database;

  StatisticsAggregator(this._database);

  /// Compute daily statistics for a specific date
  ///
  /// Aggregates all sensor readings for the given date and calculates:
  /// - Temperature statistics (avg, min, max)
  /// - Consumption (from deltas in feed rate counter)
  /// - Runtime (from deltas in runtime counter)
  /// - State distribution (minutes in each state)
  /// - Ignition count
  Future<bool> computeDailyStatistics(String stoveId, DateTime date) async {
    try {
      // Normalize date to midnight UTC
      final normalizedDate = DateTime.utc(date.year, date.month, date.day);
      final startOfDay = normalizedDate;
      final endOfDay = normalizedDate.add(const Duration(days: 1));

      debugPrint(
        '[StatisticsAggregator] Computing daily stats for $stoveId on '
        '${normalizedDate.toIso8601String()}',
      );

      // Get all sensor readings for this day
      final readings = await _database.getSensorReadings(
        stoveId,
        startOfDay,
        endOfDay,
      );

      if (readings.isEmpty) {
        debugPrint('[StatisticsAggregator] No readings found for this date');
        return false;
      }

      debugPrint('[StatisticsAggregator] Processing ${readings.length} readings');

      // Calculate temperature statistics
      final temperatures = readings
          .map((r) => r.inputRoomTemperature)
          .where((t) => t > 0)
          .toList();

      final flameTemperatures = readings
          .map((r) => r.inputFlameTemperature)
          .where((t) => t > 0)
          .toList();

      final targetTemperatures = readings
          .map((r) => r.targetTemperature)
          .where((t) => t > 0)
          .toList();

      final avgRoomTemp = temperatures.isEmpty
          ? 0.0
          : temperatures.reduce((a, b) => a + b) / temperatures.length;

      final minRoomTemp = temperatures.isEmpty
          ? 0.0
          : temperatures.reduce((a, b) => a < b ? a : b);

      final maxRoomTemp = temperatures.isEmpty
          ? 0.0
          : temperatures.reduce((a, b) => a > b ? a : b);

      final avgTargetTemp = targetTemperatures.isEmpty
          ? 0.0
          : targetTemperatures.reduce((a, b) => a + b) / targetTemperatures.length;

      final avgFlameTemp = flameTemperatures.isEmpty
          ? 0
          : (flameTemperatures.reduce((a, b) => a + b) / flameTemperatures.length).round();

      // Calculate consumption (delta between first and last reading)
      final firstReading = readings.first;
      final lastReading = readings.last;

      final pelletDelta = lastReading.parameterFeedRateTotal -
          firstReading.parameterFeedRateTotal;
      final pelletConsumption = pelletDelta < 0 ? 0.0 : pelletDelta.toDouble();

      // Calculate runtime (delta in hours converted to minutes)
      final runtimeDelta = lastReading.parameterRuntimePellets -
          firstReading.parameterRuntimePellets;
      final runtimeMinutes = runtimeDelta < 0 ? 0 : runtimeDelta * 60;

      // Calculate ignition count (delta)
      final ignitionDelta = lastReading.parameterIgnitionCount -
          firstReading.parameterIgnitionCount;
      final ignitionCount = ignitionDelta < 0 ? 0 : ignitionDelta;

      // Calculate state distribution
      final stateMinutes = _calculateStateDistribution(readings);

      // Calculate burning minutes (states 2, 3, 4 = ignition, starting, running)
      final burningMinutes = stateMinutes[2]! +
          stateMinutes[3]! +
          stateMinutes[4]!;

      // Create daily statistic entry
      final statistic = DailyStatisticsCompanion.insert(
        stoveId: stoveId,
        date: normalizedDate,
        avgRoomTemperature: avgRoomTemp,
        minRoomTemperature: minRoomTemp,
        maxRoomTemperature: maxRoomTemp,
        avgTargetTemperature: avgTargetTemp,
        avgFlameTemperature: avgFlameTemp,
        pelletConsumptionKg: pelletConsumption,
        runtimeMinutes: runtimeMinutes,
        burningMinutes: burningMinutes,
        ignitionCount: ignitionCount,
        minutesOff: stateMinutes[1]!,
        minutesIgnition: stateMinutes[2]!,
        minutesStarting: stateMinutes[3]!,
        minutesRunning: stateMinutes[4]!,
        minutesCleaning: stateMinutes[5]!,
        minutesBurnOff: stateMinutes[6]!,
        readingCount: readings.length,
      );

      // Insert or update the daily statistic
      await _database.insertDailyStatistic(statistic);

      debugPrint(
        '[StatisticsAggregator] Daily stats computed: '
        'Avg temp: ${avgRoomTemp.toStringAsFixed(1)}°C, '
        'Consumption: ${pelletConsumption}kg, '
        'Runtime: ${runtimeMinutes}min',
      );

      return true;
    } catch (e, stack) {
      debugPrint('[StatisticsAggregator] ERROR: Failed to compute daily statistics: $e');
      debugPrint('[StatisticsAggregator] Stack trace: $stack');
      return false;
    }
  }

  /// Calculate state distribution from readings
  ///
  /// Returns a map of state -> minutes spent in that state
  /// States: 1=Off, 2=Ignition, 3=Starting, 4=Running, 5=Cleaning, 6=BurnOff
  Map<int, int> _calculateStateDistribution(List<SensorReading> readings) {
    // Initialize all states to 0 minutes
    final stateMinutes = {
      1: 0, // Off
      2: 0, // Ignition
      3: 0, // Starting
      4: 0, // Running
      5: 0, // Cleaning
      6: 0, // Burn off
    };

    if (readings.length < 2) {
      return stateMinutes;
    }

    // Calculate time spent in each state based on consecutive readings
    for (int i = 0; i < readings.length - 1; i++) {
      final currentReading = readings[i];
      final nextReading = readings[i + 1];

      final state = currentReading.statusMainState;
      final duration = nextReading.timestamp.difference(currentReading.timestamp);
      final minutes = duration.inMinutes;

      // Only count known states
      if (stateMinutes.containsKey(state)) {
        stateMinutes[state] = stateMinutes[state]! + minutes;
      }
    }

    return stateMinutes;
  }

  /// Compute weekly statistics for a specific week
  ///
  /// Aggregates daily statistics for the week starting at [weekStart]
  Future<bool> computeWeeklyStatistics(String stoveId, DateTime weekStart) async {
    try {
      // Normalize to Monday at midnight UTC
      final normalizedWeekStart = _getWeekStart(weekStart);
      final weekEnd = normalizedWeekStart.add(const Duration(days: 7));

      debugPrint(
        '[StatisticsAggregator] Computing weekly stats for $stoveId '
        'starting ${normalizedWeekStart.toIso8601String()}',
      );

      // Get daily statistics for this week
      final dailyStats = await _database.getDailyStatistics(
        stoveId,
        normalizedWeekStart,
        weekEnd,
      );

      if (dailyStats.isEmpty) {
        debugPrint('[StatisticsAggregator] No daily stats found for this week');
        return false;
      }

      // Aggregate the daily statistics
      final aggregated = _aggregateDailyStats(dailyStats);

      // Get ISO week number
      final weekNumber = _getISOWeekNumber(normalizedWeekStart);
      final year = normalizedWeekStart.year;

      // Create weekly statistic entry
      final statistic = WeeklyStatisticsCompanion.insert(
        stoveId: stoveId,
        weekStart: normalizedWeekStart,
        weekNumber: weekNumber,
        year: year,
        avgRoomTemperature: aggregated['avgRoomTemp']!,
        minRoomTemperature: aggregated['minRoomTemp']!,
        maxRoomTemperature: aggregated['maxRoomTemp']!,
        avgTargetTemperature: aggregated['avgTargetTemp']!,
        avgFlameTemperature: aggregated['avgFlameTemp']!.toInt(),
        pelletConsumptionKg: aggregated['totalPellets']!,
        runtimeMinutes: aggregated['totalRuntime']!.toInt(),
        burningMinutes: aggregated['totalBurning']!.toInt(),
        ignitionCount: aggregated['totalIgnitions']!.toInt(),
        minutesOff: aggregated['minutesOff']!.toInt(),
        minutesIgnition: aggregated['minutesIgnition']!.toInt(),
        minutesStarting: aggregated['minutesStarting']!.toInt(),
        minutesRunning: aggregated['minutesRunning']!.toInt(),
        minutesCleaning: aggregated['minutesCleaning']!.toInt(),
        minutesBurnOff: aggregated['minutesBurnOff']!.toInt(),
        dayCount: dailyStats.length,
      );

      // Insert or update the weekly statistic
      await _database.insertWeeklyStatistic(statistic);

      debugPrint('[StatisticsAggregator] Weekly stats computed for week $weekNumber/$year');

      return true;
    } catch (e, stack) {
      debugPrint('[StatisticsAggregator] ERROR: Failed to compute weekly statistics: $e');
      debugPrint('[StatisticsAggregator] Stack trace: $stack');
      return false;
    }
  }

  /// Compute monthly statistics for a specific month
  ///
  /// Aggregates daily statistics for the given year and month
  Future<bool> computeMonthlyStatistics(String stoveId, int year, int month) async {
    try {
      final monthStart = DateTime.utc(year, month, 1);
      final monthEnd = DateTime.utc(year, month + 1, 1);

      debugPrint(
        '[StatisticsAggregator] Computing monthly stats for $stoveId '
        'for $month/$year',
      );

      // Get daily statistics for this month
      final dailyStats = await _database.getDailyStatistics(
        stoveId,
        monthStart,
        monthEnd,
      );

      if (dailyStats.isEmpty) {
        debugPrint('[StatisticsAggregator] No daily stats found for this month');
        return false;
      }

      // Aggregate the daily statistics
      final aggregated = _aggregateDailyStats(dailyStats);

      // Create monthly statistic entry
      final statistic = MonthlyStatisticsCompanion.insert(
        stoveId: stoveId,
        month: month,
        year: year,
        avgRoomTemperature: aggregated['avgRoomTemp']!,
        minRoomTemperature: aggregated['minRoomTemp']!,
        maxRoomTemperature: aggregated['maxRoomTemp']!,
        avgTargetTemperature: aggregated['avgTargetTemp']!,
        avgFlameTemperature: aggregated['avgFlameTemp']!.toInt(),
        pelletConsumptionKg: aggregated['totalPellets']!,
        runtimeMinutes: aggregated['totalRuntime']!.toInt(),
        burningMinutes: aggregated['totalBurning']!.toInt(),
        ignitionCount: aggregated['totalIgnitions']!.toInt(),
        minutesOff: aggregated['minutesOff']!.toInt(),
        minutesIgnition: aggregated['minutesIgnition']!.toInt(),
        minutesStarting: aggregated['minutesStarting']!.toInt(),
        minutesRunning: aggregated['minutesRunning']!.toInt(),
        minutesCleaning: aggregated['minutesCleaning']!.toInt(),
        minutesBurnOff: aggregated['minutesBurnOff']!.toInt(),
        dayCount: dailyStats.length,
      );

      // Insert or update the monthly statistic
      await _database.insertMonthlyStatistic(statistic);

      debugPrint('[StatisticsAggregator] Monthly stats computed for $month/$year');

      return true;
    } catch (e, stack) {
      debugPrint('[StatisticsAggregator] ERROR: Failed to compute monthly statistics: $e');
      debugPrint('[StatisticsAggregator] Stack trace: $stack');
      return false;
    }
  }

  /// Aggregate a list of daily statistics into summary values
  Map<String, double> _aggregateDailyStats(List<DailyStatistic> dailyStats) {
    if (dailyStats.isEmpty) {
      return {};
    }

    // Calculate averages and totals
    final avgRoomTemps = dailyStats.map((s) => s.avgRoomTemperature).toList();
    final minRoomTemps = dailyStats.map((s) => s.minRoomTemperature).toList();
    final maxRoomTemps = dailyStats.map((s) => s.maxRoomTemperature).toList();
    final avgTargetTemps = dailyStats.map((s) => s.avgTargetTemperature).toList();
    final avgFlameTemps = dailyStats.map((s) => s.avgFlameTemperature).toList();

    return {
      'avgRoomTemp': avgRoomTemps.reduce((a, b) => a + b) / avgRoomTemps.length,
      'minRoomTemp': minRoomTemps.reduce((a, b) => a < b ? a : b),
      'maxRoomTemp': maxRoomTemps.reduce((a, b) => a > b ? a : b),
      'avgTargetTemp': avgTargetTemps.reduce((a, b) => a + b) / avgTargetTemps.length,
      'avgFlameTemp': avgFlameTemps.reduce((a, b) => a + b) / avgFlameTemps.length.toDouble(),
      'totalPellets': dailyStats.map((s) => s.pelletConsumptionKg).reduce((a, b) => a + b),
      'totalRuntime': dailyStats.map((s) => s.runtimeMinutes).reduce((a, b) => a + b).toDouble(),
      'totalBurning': dailyStats.map((s) => s.burningMinutes).reduce((a, b) => a + b).toDouble(),
      'totalIgnitions': dailyStats.map((s) => s.ignitionCount).reduce((a, b) => a + b).toDouble(),
      'minutesOff': dailyStats.map((s) => s.minutesOff).reduce((a, b) => a + b).toDouble(),
      'minutesIgnition': dailyStats.map((s) => s.minutesIgnition).reduce((a, b) => a + b).toDouble(),
      'minutesStarting': dailyStats.map((s) => s.minutesStarting).reduce((a, b) => a + b).toDouble(),
      'minutesRunning': dailyStats.map((s) => s.minutesRunning).reduce((a, b) => a + b).toDouble(),
      'minutesCleaning': dailyStats.map((s) => s.minutesCleaning).reduce((a, b) => a + b).toDouble(),
      'minutesBurnOff': dailyStats.map((s) => s.minutesBurnOff).reduce((a, b) => a + b).toDouble(),
    };
  }

  /// Get the start of the week (Monday) for a given date
  DateTime _getWeekStart(DateTime date) {
    final weekday = date.weekday; // 1 = Monday, 7 = Sunday
    final daysToSubtract = weekday - 1;
    final weekStart = date.subtract(Duration(days: daysToSubtract));
    return DateTime.utc(weekStart.year, weekStart.month, weekStart.day);
  }

  /// Get ISO week number for a date
  int _getISOWeekNumber(DateTime date) {
    // ISO 8601 week number calculation
    final dayOfYear = int.parse(
      date.difference(DateTime.utc(date.year, 1, 1)).inDays.toString(),
    ) + 1;
    final weekday = date.weekday;
    final weekNumber = ((dayOfYear - weekday + 10) / 7).floor();
    return weekNumber;
  }
}
