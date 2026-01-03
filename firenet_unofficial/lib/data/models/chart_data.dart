import 'package:freezed_annotation/freezed_annotation.dart';

part 'chart_data.freezed.dart';
part 'chart_data.g.dart';

/// Represents a single temperature data point for charts
@freezed
class TemperatureDataPoint with _$TemperatureDataPoint {
  const factory TemperatureDataPoint({
    required DateTime timestamp,
    required double roomTemperature,
    required double targetTemperature,
    required int flameTemperature,
    required int mainState, // statusMainState for state timeline
  }) = _TemperatureDataPoint;

  factory TemperatureDataPoint.fromJson(Map<String, dynamic> json) =>
      _$TemperatureDataPointFromJson(json);
}

/// Time range options for charts
enum ChartTimeRange {
  last24Hours,
  last7Days,
  last30Days,
  custom;

  /// Get display name for time range
  String get displayName {
    switch (this) {
      case ChartTimeRange.last24Hours:
        return '24h';
      case ChartTimeRange.last7Days:
        return '7 days';
      case ChartTimeRange.last30Days:
        return '30 days';
      case ChartTimeRange.custom:
        return 'Custom';
    }
  }

  /// Get duration for time range
  Duration? get duration {
    switch (this) {
      case ChartTimeRange.last24Hours:
        return const Duration(hours: 24);
      case ChartTimeRange.last7Days:
        return const Duration(days: 7);
      case ChartTimeRange.last30Days:
        return const Duration(days: 30);
      case ChartTimeRange.custom:
        return null; // Custom range needs start/end dates
    }
  }
}

/// Represents consumption data for charts
@freezed
class ConsumptionDataPoint with _$ConsumptionDataPoint {
  const factory ConsumptionDataPoint({
    required DateTime date,
    required double pelletConsumptionKg,
    required int runtimeMinutes,
    required int ignitionCount,
  }) = _ConsumptionDataPoint;

  factory ConsumptionDataPoint.fromJson(Map<String, dynamic> json) =>
      _$ConsumptionDataPointFromJson(json);
}

/// Represents a state transition for timeline charts
@freezed
class StateTransitionDataPoint with _$StateTransitionDataPoint {
  const factory StateTransitionDataPoint({
    required DateTime timestamp,
    required int fromState,
    required int toState,
    required int durationSeconds,
  }) = _StateTransitionDataPoint;

  factory StateTransitionDataPoint.fromJson(Map<String, dynamic> json) =>
      _$StateTransitionDataPointFromJson(json);
}
