import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../data/models/chart_data.dart';
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
    // Handle empty data
    if (dataPoints.isEmpty) {
      return _buildEmptyState(context);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Chart
        SizedBox(
          height: 250,
          child: Padding(
            padding: const EdgeInsets.only(right: 16, top: 16),
            child: LineChart(
              _buildChartData(context),
            ),
          ),
        ),
        const SizedBox(height: 16),
        // Legend
        _buildLegend(context),
      ],
    );
  }

  Widget _buildEmptyState(BuildContext context) {
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
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.show_chart,
                size: 64,
                color: isDarkMode ? Colors.grey[600] : Colors.grey[400],
              ),
              const SizedBox(height: 16),
              Text(
                'No data available yet',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: isDarkMode ? Colors.grey[400] : Colors.grey[600],
                    ),
              ),
              const SizedBox(height: 8),
              Text(
                'Data collection in progress...',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: isDarkMode ? Colors.grey[500] : Colors.grey[500],
                      fontStyle: FontStyle.italic,
                    ),
              ),
              const SizedBox(height: 24),
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
              const SizedBox(height: 12),
              // Data count
              Text(
                '$count data points collected ($progressPercent%)',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: isDarkMode ? Colors.grey[400] : Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
              ),
              const SizedBox(height: 4),
              Text(
                'Minimum $minDataPoints points needed for chart',
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
    // Extract min/max values for Y axis scaling
    final roomTemps = dataPoints.map((p) => p.roomTemperature).toList();
    final targetTemps = dataPoints.map((p) => p.targetTemperature).toList();
    final flameTemps = dataPoints.map((p) => p.flameTemperature.toDouble()).toList();

    final allTemps = [...roomTemps, ...targetTemps, ...flameTemps];
    final minTemp = allTemps.reduce((a, b) => a < b ? a : b);
    final maxTemp = allTemps.reduce((a, b) => a > b ? a : b);

    // Add padding to Y axis
    final yMin = (minTemp - 5).floorToDouble();
    final yMax = (maxTemp + 5).ceilToDouble();

    // Get time range
    final startTime = dataPoints.first.timestamp;
    final endTime = dataPoints.last.timestamp;

    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: 10,
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
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: (endTime.millisecondsSinceEpoch - startTime.millisecondsSinceEpoch) / 6,
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
            interval: 10,
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
      minX: startTime.millisecondsSinceEpoch.toDouble(),
      maxX: endTime.millisecondsSinceEpoch.toDouble(),
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
        // Flame temperature line
        _buildLineChartBarData(
          dataPoints: dataPoints.map((p) {
            return FlSpot(
              p.timestamp.millisecondsSinceEpoch.toDouble(),
              p.flameTemperature.toDouble(),
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
          getTooltipItems: (List<LineBarSpot> touchedSpots) {
            return touchedSpots.map((spot) {
              final timestamp = DateTime.fromMillisecondsSinceEpoch(
                spot.x.toInt(),
              );
              final formatter = DateFormat('HH:mm');

              String label;
              if (spot.barIndex == 0) {
                label = 'Room';
              } else if (spot.barIndex == 1) {
                label = 'Target';
              } else {
                label = 'Flame';
              }

              return LineTooltipItem(
                '$label\n${spot.y.toStringAsFixed(1)}°C\n${formatter.format(timestamp)}',
                TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              );
            }).toList();
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

  Widget _buildLegend(BuildContext context) {
    return Wrap(
      spacing: 16,
      runSpacing: 8,
      children: [
        _buildLegendItem(
          context,
          color: isDarkMode ? AppColors.primaryDark : AppColors.primary,
          label: 'Room Temperature',
          solid: true,
        ),
        _buildLegendItem(
          context,
          color: isDarkMode ? AppColors.secondaryDark : AppColors.secondary,
          label: 'Target Temperature',
          solid: false,
        ),
        _buildLegendItem(
          context,
          color: Colors.redAccent,
          label: 'Flame Temperature',
          solid: true,
        ),
      ],
    );
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
