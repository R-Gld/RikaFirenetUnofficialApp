import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../data/models/chart_data.dart';
import '../../../l10n/app_localizations.dart';
import '../../theme/app_colors.dart';

/// Temperature evolution chart widget
///
/// Displays three temperature curves:
/// - Room temperature (blue)
/// - Target temperature (orange, dashed)
/// - Flame temperature (red)
class TemperatureChart extends StatelessWidget {
  final List<TemperatureDataPoint> dataPoints;
  final bool isDarkMode;
  final String title;
  final int? dataCount;

  const TemperatureChart({
    super.key,
    required this.dataPoints,
    this.isDarkMode = false,
    this.title = 'Temperature Evolution',
    this.dataCount,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    // Handle empty data
    if (dataPoints.isEmpty) {
      return _buildEmptyState(context, l10n);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Axis labels
        Padding(
          padding: const EdgeInsets.only(left: 40, right: 56, top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                l10n.roomTargetAxis,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: isDarkMode ? AppColors.primaryDark : AppColors.primary,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
              ),
              Text(
                l10n.flameAxis,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
              ),
            ],
          ),
        ),
        // Chart
        SizedBox(
          height: 250,
          child: Padding(
            padding: const EdgeInsets.only(right: 16, top: 4),
            child: LineChart(
              _buildChartData(context),
            ),
          ),
        ),
        const SizedBox(height: 16),
        // Legend
        _buildLegend(context, l10n),
      ],
    );
  }

  Widget _buildEmptyState(BuildContext context, AppLocalizations l10n) {
    // Minimum data points needed for a meaningful chart (about 1 hour of data at 5s intervals)
    const int minDataPoints = 288; // 24h at 5min sampling
    final count = dataCount ?? 0;
    final progress = count / minDataPoints;
    final progressPercent = (progress * 100).clamp(0, 100).toInt();

    return Container(
      height: 250,
      decoration: BoxDecoration(
        border: Border.all(
          color: isDarkMode ? Colors.grey[700]! : Colors.grey[300]!,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.show_chart,
                size: 56,
                color: isDarkMode ? Colors.grey[600] : Colors.grey[400],
              ),
              const SizedBox(height: 12),
              Text(
                l10n.noDataAvailableYet,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: isDarkMode ? Colors.grey[400] : Colors.grey[600],
                    ),
              ),
              const SizedBox(height: 6),
              Text(
                l10n.dataCollectionInProgress,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: isDarkMode ? Colors.grey[500] : Colors.grey[500],
                      fontStyle: FontStyle.italic,
                    ),
              ),
              const SizedBox(height: 20),
              // Progress bar
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: LinearProgressIndicator(
                  value: progress.clamp(0.0, 1.0),
                  minHeight: 8,
                  backgroundColor: isDarkMode ? Colors.grey[800] : Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation<Color>(
                    isDarkMode ? AppColors.primaryDark : AppColors.primary,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Data count
              Text(
                l10n.dataPointsCollected(count, progressPercent),
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: isDarkMode ? Colors.grey[400] : Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
              ),
              const SizedBox(height: 3),
              Text(
                l10n.minimumPointsNeeded(minDataPoints),
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: isDarkMode ? Colors.grey[500] : Colors.grey[500],
                      fontSize: 11,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  LineChartData _buildChartData(BuildContext context) {
    // Dual Y-axis implementation:
    // Left axis: Room and target temperatures (15-30°C range)
    // Right axis: Flame temperature (0-500°C range)
    final roomTemps = dataPoints.map((p) => p.roomTemperature).toList();
    final targetTemps = dataPoints.map((p) => p.targetTemperature).toList();
    final flameTemps = dataPoints.map((p) => p.flameTemperature.toDouble()).toList();

    // Calculate range for left axis (room/target)
    final allTemps = [...roomTemps, ...targetTemps];
    final minTemp = allTemps.reduce((a, b) => a < b ? a : b);
    final maxTemp = allTemps.reduce((a, b) => a > b ? a : b);

    // Calculate range for flame temperature (right axis)
    final minFlame = flameTemps.reduce((a, b) => a < b ? a : b);
    final maxFlame = flameTemps.reduce((a, b) => a > b ? a : b);

    // Add padding to Y axis (left axis for room/target)
    // If all temps are the same, add ±5 range to avoid zero range
    final yMin = (minTemp - 5).floorToDouble();
    final yMax = (maxTemp + 5).ceilToDouble().clamp(yMin + 10, double.infinity);

    // Flame axis range (right axis) - round to nice values
    final flameYMin = (minFlame / 50).floor() * 50.0; // Round down to nearest 50
    final flameYMax = ((maxFlame / 50).ceil() * 50.0).clamp(flameYMin + 100, double.infinity);

    // Normalize flame temperatures to fit in the left axis range for display
    // This allows dual Y-axis effect
    double normalizeFlame(double flameTemp) {
      if (flameYMax == flameYMin) return yMin;
      return yMin + (flameTemp - flameYMin) / (flameYMax - flameYMin) * (yMax - yMin);
    }

    // Denormalize: convert from display Y to actual flame temperature
    double denormalizeFlame(double displayY) {
      if (yMax == yMin) return flameYMin;
      return flameYMin + (displayY - yMin) / (yMax - yMin) * (flameYMax - flameYMin);
    }

    // Get time range
    final startTime = dataPoints.first.timestamp;
    final endTime = dataPoints.last.timestamp;

    // Calculate time range and ensure interval is not zero
    final timeRangeMs = endTime.millisecondsSinceEpoch - startTime.millisecondsSinceEpoch;

    // If time range is 0 (single point or very close points), expand the range
    final minX = startTime.millisecondsSinceEpoch.toDouble();
    final maxX = timeRangeMs > 0
        ? endTime.millisecondsSinceEpoch.toDouble()
        : minX + 3600000; // Add 1 hour if no range

    final safeTimeRange = maxX - minX;
    final bottomInterval = (safeTimeRange / 6).clamp(1.0, double.infinity);

    // Calculate Y axis interval dynamically to avoid too many labels
    // Target: ~5-6 labels on Y axis
    final tempRange = yMax - yMin;
    final rawYInterval = tempRange / 5;
    // Round to nice values (5, 10, 20, 50, 100, etc.)
    final yInterval = _calculateNiceInterval(rawYInterval);

    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: yInterval,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: isDarkMode ? Colors.grey[800]! : Colors.grey[300]!,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: isDarkMode ? Colors.grey[800]! : Colors.grey[300]!,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: yInterval, // Use same visual interval as left
            reservedSize: 50,
            getTitlesWidget: (value, meta) {
              // Convert display Y value to actual flame temperature
              final flameValue = denormalizeFlame(value);
              return Text(
                '${flameValue.toInt()}°C',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.redAccent.withOpacity(0.8),
                  fontWeight: FontWeight.w500,
                ),
              );
            },
          ),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: bottomInterval,
            getTitlesWidget: (value, meta) {
              final timestamp = DateTime.fromMillisecondsSinceEpoch(value.toInt());
              final formatter = DateFormat('HH:mm');
              return SideTitleWidget(
                axisSide: meta.axisSide,
                child: Text(
                  formatter.format(timestamp),
                  style: TextStyle(
                    fontSize: 10,
                    color: isDarkMode ? Colors.grey[400] : Colors.grey[600],
                  ),
                ),
              );
            },
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: yInterval,
            reservedSize: 40,
            getTitlesWidget: (value, meta) {
              return Text(
                '${value.toInt()}°C',
                style: TextStyle(
                  fontSize: 10,
                  color: isDarkMode ? Colors.grey[400] : Colors.grey[600],
                ),
              );
            },
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(
          color: isDarkMode ? Colors.grey[700]! : Colors.grey[300]!,
        ),
      ),
      minX: minX,
      maxX: maxX,
      minY: yMin,
      maxY: yMax,
      lineBarsData: [
        // Room temperature line
        _buildLineChartBarData(
          dataPoints: dataPoints.map((p) {
            return FlSpot(
              p.timestamp.millisecondsSinceEpoch.toDouble(),
              p.roomTemperature,
            );
          }).toList(),
          color: isDarkMode ? AppColors.primaryDark : AppColors.primary,
          isCurved: true,
          dotted: false,
        ),
        // Target temperature line (dashed)
        _buildLineChartBarData(
          dataPoints: dataPoints.map((p) {
            return FlSpot(
              p.timestamp.millisecondsSinceEpoch.toDouble(),
              p.targetTemperature,
            );
          }).toList(),
          color: isDarkMode ? AppColors.secondaryDark : AppColors.secondary,
          isCurved: false,
          dotted: true,
        ),
        // Flame temperature line (normalized to fit in left axis scale)
        // Actual values shown on right axis
        _buildLineChartBarData(
          dataPoints: dataPoints.map((p) {
            return FlSpot(
              p.timestamp.millisecondsSinceEpoch.toDouble(),
              normalizeFlame(p.flameTemperature.toDouble()),
            );
          }).toList(),
          color: Colors.redAccent,
          isCurved: true,
          dotted: false,
        ),
      ],
      lineTouchData: LineTouchData(
        enabled: true,
        touchTooltipData: LineTouchTooltipData(
          fitInsideHorizontally: true,
          fitInsideVertically: true,
          getTooltipItems: (List<LineBarSpot> touchedSpots) {
            if (touchedSpots.isEmpty) return [];

            // Get timestamp from first spot
            final timestamp = DateTime.fromMillisecondsSinceEpoch(
              touchedSpots.first.x.toInt(),
            );
            final formatter = DateFormat('HH:mm');

            // Collect all values (room, target, and flame)
            final roomTemp = touchedSpots.length > 0 ? touchedSpots[0].y : 0.0;
            final targetTemp = touchedSpots.length > 1 ? touchedSpots[1].y : 0.0;
            // Flame temp is normalized - denormalize it for display
            final flameTemp = touchedSpots.length > 2
                ? denormalizeFlame(touchedSpots[2].y)
                : 0.0;

            // Only show the first tooltip item with all info
            return [
              LineTooltipItem(
                '${formatter.format(timestamp)}\n'
                'Room: ${roomTemp.toStringAsFixed(1)}°C\n'
                'Target: ${targetTemp.toStringAsFixed(1)}°C\n'
                'Flame: ${flameTemp.toStringAsFixed(0)}°C',
                const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                ),
              ),
              // Return null for other spots to avoid duplicate tooltips
              if (touchedSpots.length > 1)
                const LineTooltipItem('', TextStyle(fontSize: 0)),
              if (touchedSpots.length > 2)
                const LineTooltipItem('', TextStyle(fontSize: 0)),
            ];
          },
        ),
      ),
    );
  }

  LineChartBarData _buildLineChartBarData({
    required List<FlSpot> dataPoints,
    required Color color,
    required bool isCurved,
    required bool dotted,
  }) {
    return LineChartBarData(
      spots: dataPoints,
      isCurved: isCurved,
      color: color,
      barWidth: 2,
      isStrokeCapRound: true,
      dotData: const FlDotData(show: false),
      belowBarData: BarAreaData(show: false),
      dashArray: dotted ? [5, 5] : null,
    );
  }

  Widget _buildLegend(BuildContext context, AppLocalizations l10n) {
    return Wrap(
      spacing: 16,
      runSpacing: 8,
      children: [
        _buildLegendItem(
          context,
          color: isDarkMode ? AppColors.primaryDark : AppColors.primary,
          label: l10n.roomTemperature,
          solid: true,
        ),
        _buildLegendItem(
          context,
          color: isDarkMode ? AppColors.secondaryDark : AppColors.secondary,
          label: l10n.targetTemperature,
          solid: false,
        ),
        _buildLegendItem(
          context,
          color: Colors.redAccent,
          label: l10n.flameTemperature,
          solid: true,
        ),
      ],
    );
  }

  /// Calculate a "nice" interval for axis labels
  ///
  /// Rounds the raw interval to nice round numbers (5, 10, 20, 50, 100, etc.)
  /// to make the chart more readable
  double _calculateNiceInterval(double rawInterval) {
    if (rawInterval <= 0) return 10; // Fallback to 10

    // Find the magnitude (power of 10)
    final magnitude = pow(10, (log(rawInterval) / ln10).floor()).toDouble();

    // Normalize to 0-10 range
    final normalized = rawInterval / magnitude;

    // Round to nice values
    double niceNormalized;
    if (normalized < 1.5) {
      niceNormalized = 1;
    } else if (normalized < 3) {
      niceNormalized = 2;
    } else if (normalized < 7) {
      niceNormalized = 5;
    } else {
      niceNormalized = 10;
    }

    return (niceNormalized * magnitude).clamp(1.0, double.infinity);
  }

  Widget _buildLegendItem(
    BuildContext context, {
    required Color color,
    required String label,
    required bool solid,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 20,
          height: 2,
          decoration: BoxDecoration(
            color: solid ? color : Colors.transparent,
            border: solid ? null : Border.all(color: color, width: 2),
          ),
          child: solid
              ? null
              : CustomPaint(
                  painter: _DashedLinePainter(color: color),
                ),
        ),
        const SizedBox(width: 8),
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: isDarkMode ? Colors.grey[300] : Colors.grey[700],
              ),
        ),
      ],
    );
  }
}

/// Custom painter for dashed line in legend
class _DashedLinePainter extends CustomPainter {
  final Color color;

  _DashedLinePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    const dashWidth = 3.0;
    const dashSpace = 3.0;
    double startX = 0;

    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, size.height / 2),
        Offset(startX + dashWidth, size.height / 2),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
