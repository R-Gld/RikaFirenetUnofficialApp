import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/local/database.dart';
import '../services/sensor_data_collector.dart';
import '../services/statistics_aggregator.dart';

/// Provides the main application database instance
///
/// This is a singleton provider that creates and manages the AppDatabase
final databaseProvider = Provider<AppDatabase>((ref) {
  return AppDatabase();
});

/// Provides the SensorDataCollector service
///
/// This service is responsible for collecting and storing sensor readings
final sensorDataCollectorProvider = Provider<SensorDataCollector>((ref) {
  final database = ref.watch(databaseProvider);
  return SensorDataCollector(database);
});

/// Provides the StatisticsAggregator service
///
/// This service is responsible for aggregating sensor data into statistics
final statisticsAggregatorProvider = Provider<StatisticsAggregator>((ref) {
  final database = ref.watch(databaseProvider);
  return StatisticsAggregator(database);
});
