import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';

part 'database.g.dart';

/// Sensor readings table - stores raw sensor data with 30-day retention
@DataClassName('SensorReading')
class SensorReadings extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get stoveId => text()();
  DateTimeColumn get timestamp => dateTime()();

  // Temperature metrics (continuous)
  RealColumn get inputRoomTemperature => real()();
  IntColumn get inputFlameTemperature => integer()();
  RealColumn get targetTemperature => real()();

  // Motor activity (consumption indicators)
  IntColumn get outputDischargeMotor => integer()(); // RPM of pellet feed motor
  IntColumn get outputIDFan => integer()(); // RPM of fan

  // State tracking
  IntColumn get statusMainState => integer()();
  IntColumn get statusSubState => integer()();

  // Runtime counters (cumulative - for calculating deltas)
  IntColumn get parameterRuntimePellets => integer()(); // Total hours
  IntColumn get parameterFeedRateTotal => integer()(); // Total kg consumed
  IntColumn get parameterIgnitionCount => integer()(); // Total ignitions

  // Status flags
  BoolColumn get statusFrostStarted => boolean()();
  BoolColumn get hasError => boolean()();
  BoolColumn get hasWarning => boolean()();
}

/// Daily statistics table - aggregated from sensor readings
@DataClassName('DailyStatistic')
class DailyStatistics extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get stoveId => text()();
  DateTimeColumn get date => dateTime()(); // Midnight UTC

  // Temperature statistics
  RealColumn get avgRoomTemperature => real()();
  RealColumn get minRoomTemperature => real()();
  RealColumn get maxRoomTemperature => real()();
  RealColumn get avgTargetTemperature => real()();
  IntColumn get avgFlameTemperature => integer()();

  // Consumption (calculated from deltas)
  RealColumn get pelletConsumptionKg => real()();

  // Runtime (minutes)
  IntColumn get runtimeMinutes => integer()();
  IntColumn get burningMinutes => integer()();
  IntColumn get ignitionCount => integer()();

  // State distribution (minutes in each state)
  IntColumn get minutesOff => integer()();
  IntColumn get minutesIgnition => integer()();
  IntColumn get minutesStarting => integer()();
  IntColumn get minutesRunning => integer()();
  IntColumn get minutesCleaning => integer()();
  IntColumn get minutesBurnOff => integer()();

  // Metadata
  IntColumn get readingCount => integer()();
}

/// Weekly statistics table - aggregated from daily statistics
@DataClassName('WeeklyStatistic')
class WeeklyStatistics extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get stoveId => text()();
  DateTimeColumn get weekStart => dateTime()(); // Monday at midnight UTC
  IntColumn get weekNumber => integer()(); // ISO week number
  IntColumn get year => integer()();

  // Temperature statistics
  RealColumn get avgRoomTemperature => real()();
  RealColumn get minRoomTemperature => real()();
  RealColumn get maxRoomTemperature => real()();
  RealColumn get avgTargetTemperature => real()();
  IntColumn get avgFlameTemperature => integer()();

  // Consumption
  RealColumn get pelletConsumptionKg => real()();

  // Runtime (minutes)
  IntColumn get runtimeMinutes => integer()();
  IntColumn get burningMinutes => integer()();
  IntColumn get ignitionCount => integer()();

  // State distribution (minutes in each state)
  IntColumn get minutesOff => integer()();
  IntColumn get minutesIgnition => integer()();
  IntColumn get minutesStarting => integer()();
  IntColumn get minutesRunning => integer()();
  IntColumn get minutesCleaning => integer()();
  IntColumn get minutesBurnOff => integer()();

  // Metadata
  IntColumn get dayCount => integer()();
}

/// Monthly statistics table - aggregated from daily statistics
@DataClassName('MonthlyStatistic')
class MonthlyStatistics extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get stoveId => text()();
  IntColumn get month => integer()(); // 1-12
  IntColumn get year => integer()();

  // Temperature statistics
  RealColumn get avgRoomTemperature => real()();
  RealColumn get minRoomTemperature => real()();
  RealColumn get maxRoomTemperature => real()();
  RealColumn get avgTargetTemperature => real()();
  IntColumn get avgFlameTemperature => integer()();

  // Consumption
  RealColumn get pelletConsumptionKg => real()();

  // Runtime (minutes)
  IntColumn get runtimeMinutes => integer()();
  IntColumn get burningMinutes => integer()();
  IntColumn get ignitionCount => integer()();

  // State distribution (minutes in each state)
  IntColumn get minutesOff => integer()();
  IntColumn get minutesIgnition => integer()();
  IntColumn get minutesStarting => integer()();
  IntColumn get minutesRunning => integer()();
  IntColumn get minutesCleaning => integer()();
  IntColumn get minutesBurnOff => integer()();

  // Metadata
  IntColumn get dayCount => integer()();
}

/// State transitions table - tracks when stove changes state
@DataClassName('StateTransition')
class StateTransitions extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get stoveId => text()();
  DateTimeColumn get timestamp => dateTime()();
  IntColumn get fromState => integer().nullable()(); // Null for initial state
  IntColumn get toState => integer()();
  IntColumn get durationSeconds => integer().nullable()(); // Duration in previous state
}

/// Cost settings table - user-configured pellet prices
@DataClassName('CostSetting')
class CostSettings extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get stoveId => text()();
  RealColumn get pricePerKg => real()(); // User-configured pellet price
  TextColumn get currency => text().withDefault(const Constant('EUR'))();
  DateTimeColumn get updatedAt => dateTime()();
}

/// Main database class
@DriftDatabase(tables: [
  SensorReadings,
  DailyStatistics,
  WeeklyStatistics,
  MonthlyStatistics,
  StateTransitions,
  CostSettings,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (Migrator m) async {
          await m.createAll();

          // Create indexes for performance
          await customStatement(
            'CREATE INDEX idx_sensor_readings_stove_time ON sensor_readings(stove_id, timestamp DESC);',
          );
          await customStatement(
            'CREATE INDEX idx_daily_stats_stove_date ON daily_statistics(stove_id, date DESC);',
          );
          await customStatement(
            'CREATE INDEX idx_weekly_stats_stove_week ON weekly_statistics(stove_id, year DESC, week_number DESC);',
          );
          await customStatement(
            'CREATE INDEX idx_monthly_stats_stove_month ON monthly_statistics(stove_id, year DESC, month DESC);',
          );
          await customStatement(
            'CREATE INDEX idx_state_transitions_stove_time ON state_transitions(stove_id, timestamp DESC);',
          );
          await customStatement(
            'CREATE INDEX idx_cost_settings_stove ON cost_settings(stove_id);',
          );
        },
      );

  // ==================== SENSOR READINGS ====================

  /// Insert a new sensor reading
  Future<int> insertSensorReading(SensorReadingsCompanion reading) =>
      into(sensorReadings).insert(reading);

  /// Get sensor readings for a stove within a time range
  Future<List<SensorReading>> getSensorReadings(
    String stoveId,
    DateTime start,
    DateTime end,
  ) {
    return (select(sensorReadings)
          ..where((tbl) => tbl.stoveId.equals(stoveId))
          ..where((tbl) => tbl.timestamp.isBiggerOrEqualValue(start))
          ..where((tbl) => tbl.timestamp.isSmallerOrEqualValue(end))
          ..orderBy([(tbl) => OrderingTerm.asc(tbl.timestamp)]))
        .get();
  }

  /// Get latest sensor reading for a stove
  Future<SensorReading?> getLatestSensorReading(String stoveId) {
    return (select(sensorReadings)
          ..where((tbl) => tbl.stoveId.equals(stoveId))
          ..orderBy([(tbl) => OrderingTerm.desc(tbl.timestamp)])
          ..limit(1))
        .getSingleOrNull();
  }

  /// Delete sensor readings older than specified date (for retention policy)
  Future<int> deleteSensorReadingsOlderThan(DateTime cutoffDate) {
    return (delete(sensorReadings)
          ..where((tbl) => tbl.timestamp.isSmallerThanValue(cutoffDate)))
        .go();
  }

  /// Get sensor readings count for a stove
  Future<int> getSensorReadingCount(String stoveId) async {
    final countQuery = selectOnly(sensorReadings)
      ..addColumns([sensorReadings.id.count()])
      ..where(sensorReadings.stoveId.equals(stoveId));

    final result = await countQuery.getSingle();
    return result.read(sensorReadings.id.count()) ?? 0;
  }

  // ==================== DAILY STATISTICS ====================

  /// Insert or update daily statistic
  Future<int> insertDailyStatistic(DailyStatisticsCompanion statistic) =>
      into(dailyStatistics).insert(
        statistic,
        onConflict: DoUpdate((old) => statistic),
      );

  /// Get daily statistics for a stove within a date range
  Future<List<DailyStatistic>> getDailyStatistics(
    String stoveId,
    DateTime start,
    DateTime end,
  ) {
    return (select(dailyStatistics)
          ..where((tbl) => tbl.stoveId.equals(stoveId))
          ..where((tbl) => tbl.date.isBiggerOrEqualValue(start))
          ..where((tbl) => tbl.date.isSmallerOrEqualValue(end))
          ..orderBy([(tbl) => OrderingTerm.asc(tbl.date)]))
        .get();
  }

  /// Get daily statistic for a specific date
  Future<DailyStatistic?> getDailyStatisticForDate(
    String stoveId,
    DateTime date,
  ) {
    return (select(dailyStatistics)
          ..where((tbl) => tbl.stoveId.equals(stoveId))
          ..where((tbl) => tbl.date.equals(date)))
        .getSingleOrNull();
  }

  // ==================== WEEKLY STATISTICS ====================

  /// Insert or update weekly statistic
  Future<int> insertWeeklyStatistic(WeeklyStatisticsCompanion statistic) =>
      into(weeklyStatistics).insert(
        statistic,
        onConflict: DoUpdate((old) => statistic),
      );

  /// Get weekly statistics for a stove
  Future<List<WeeklyStatistic>> getWeeklyStatistics(
    String stoveId, {
    int? limit,
  }) {
    final query = select(weeklyStatistics)
      ..where((tbl) => tbl.stoveId.equals(stoveId))
      ..orderBy([
        (tbl) => OrderingTerm.desc(tbl.year),
        (tbl) => OrderingTerm.desc(tbl.weekNumber),
      ]);

    if (limit != null) {
      query.limit(limit);
    }

    return query.get();
  }

  // ==================== MONTHLY STATISTICS ====================

  /// Insert or update monthly statistic
  Future<int> insertMonthlyStatistic(MonthlyStatisticsCompanion statistic) =>
      into(monthlyStatistics).insert(
        statistic,
        onConflict: DoUpdate((old) => statistic),
      );

  /// Get monthly statistics for a stove
  Future<List<MonthlyStatistic>> getMonthlyStatistics(
    String stoveId, {
    int? limit,
  }) {
    final query = select(monthlyStatistics)
      ..where((tbl) => tbl.stoveId.equals(stoveId))
      ..orderBy([
        (tbl) => OrderingTerm.desc(tbl.year),
        (tbl) => OrderingTerm.desc(tbl.month),
      ]);

    if (limit != null) {
      query.limit(limit);
    }

    return query.get();
  }

  // ==================== STATE TRANSITIONS ====================

  /// Insert a state transition
  Future<int> insertStateTransition(StateTransitionsCompanion transition) =>
      into(stateTransitions).insert(transition);

  /// Get state transitions for a stove within a time range
  Future<List<StateTransition>> getStateTransitions(
    String stoveId,
    DateTime start,
    DateTime end,
  ) {
    return (select(stateTransitions)
          ..where((tbl) => tbl.stoveId.equals(stoveId))
          ..where((tbl) => tbl.timestamp.isBiggerOrEqualValue(start))
          ..where((tbl) => tbl.timestamp.isSmallerOrEqualValue(end))
          ..orderBy([(tbl) => OrderingTerm.asc(tbl.timestamp)]))
        .get();
  }

  /// Get latest state transition for a stove
  Future<StateTransition?> getLatestStateTransition(String stoveId) {
    return (select(stateTransitions)
          ..where((tbl) => tbl.stoveId.equals(stoveId))
          ..orderBy([(tbl) => OrderingTerm.desc(tbl.timestamp)])
          ..limit(1))
        .getSingleOrNull();
  }

  // ==================== COST SETTINGS ====================

  /// Get cost settings for a stove
  Future<CostSetting?> getCostSettings(String stoveId) {
    return (select(costSettings)
          ..where((tbl) => tbl.stoveId.equals(stoveId))
          ..orderBy([(tbl) => OrderingTerm.desc(tbl.updatedAt)])
          ..limit(1))
        .getSingleOrNull();
  }

  /// Update cost settings for a stove
  Future<int> updateCostSettings(
    String stoveId,
    double pricePerKg,
    String currency,
  ) {
    return into(costSettings).insert(
      CostSettingsCompanion.insert(
        stoveId: stoveId,
        pricePerKg: pricePerKg,
        currency: Value(currency),
        updatedAt: DateTime.now().toUtc(),
      ),
      onConflict: DoUpdate(
        (old) => CostSettingsCompanion.custom(
          pricePerKg: Variable(pricePerKg),
          currency: Variable(currency),
          updatedAt: Variable(DateTime.now().toUtc()),
        ),
      ),
    );
  }
}

/// Open database connection
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File('${dbFolder.path}/firenet_sensors.db');
    return NativeDatabase(file);
  });
}
