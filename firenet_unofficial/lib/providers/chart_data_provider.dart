import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/repositories/chart_data_repository.dart';
import '../data/models/chart_data.dart';
import 'database_provider.dart';

/// Provides the ChartDataRepository
final chartDataRepositoryProvider = Provider<ChartDataRepository>((ref) {
  final database = ref.watch(databaseProvider);
  return ChartDataRepository(database);
});

/// Provides temperature data for the last 24 hours for a specific stove
///
/// Returns an empty list if no data is available yet
final temperatureChart24hProvider =
    FutureProvider.family<List<TemperatureDataPoint>, String>(
  (ref, stoveId) async {
    final repository = ref.watch(chartDataRepositoryProvider);
    final result = await repository.getTemperatureData24h(stoveId);

    return result.fold(
      (failure) {
        // Log but return empty list instead of throwing
        // This allows the UI to show a "no data" state
        return [];
      },
      (data) => data,
    );
  },
);

/// Provides temperature data for a custom time range
final temperatureChartProvider = FutureProvider.family<
    List<TemperatureDataPoint>,
    ({String stoveId, DateTime start, DateTime end})>(
  (ref, params) async {
    final repository = ref.watch(chartDataRepositoryProvider);
    final result = await repository.getTemperatureData(
      params.stoveId,
      params.start,
      params.end,
    );

    return result.fold(
      (failure) => [],
      (data) => data,
    );
  },
);

/// Provides consumption data for the last N days
final consumptionChartProvider = FutureProvider.family<
    List<ConsumptionDataPoint>,
    ({String stoveId, int days})>(
  (ref, params) async {
    final repository = ref.watch(chartDataRepositoryProvider);
    final result = await repository.getConsumptionData(
      params.stoveId,
      params.days,
    );

    return result.fold(
      (failure) => [],
      (data) => data,
    );
  },
);

/// Provides state transitions for timeline chart
final stateTransitionsChartProvider = FutureProvider.family<
    List<StateTransitionDataPoint>,
    ({String stoveId, DateTime start, DateTime end})>(
  (ref, params) async {
    final repository = ref.watch(chartDataRepositoryProvider);
    final result = await repository.getStateTransitions(
      params.stoveId,
      params.start,
      params.end,
    );

    return result.fold(
      (failure) => [],
      (data) => data,
    );
  },
);

/// Checks if sufficient data exists for meaningful charts
final hasSufficientChartDataProvider = FutureProvider.family<bool, String>(
  (ref, stoveId) async {
    final repository = ref.watch(chartDataRepositoryProvider);
    return repository.hasSufficientData(stoveId);
  },
);
