import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../data/models/chart_data.dart';
import '../../../l10n/app_localizations.dart';
import '../../theme/app_colors.dart';

/// Timeline chart showing stove state changes over time
class StateTimelineChart extends StatelessWidget {
  final List<TemperatureDataPoint> dataPoints;
  final bool isDarkMode;
  final String title;
  final int dataCount;

  const StateTimelineChart({
    super.key,
    required this.dataPoints,
    required this.isDarkMode,
    required this.title,
    required this.dataCount,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    if (dataPoints.isEmpty) {
      return _buildEmptyState(context, l10n);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Legend
        _buildLegend(context, l10n),
        const SizedBox(height: 16),

        // Chart
        Container(
          height: 150,
          padding: const EdgeInsets.only(right: 16, top: 16, bottom: 16),
          child: _buildChart(context),
        ),
      ],
    );
  }

  Widget _buildEmptyState(BuildContext context, AppLocalizations l10n) {
    const minDataPoints = 2;
    final progressPercent = ((dataCount / minDataPoints) * 100).clamp(0, 100).toInt();

    return Container(
      height: 150,
      decoration: BoxDecoration(
        border: Border.all(
          color: (isDarkMode ? AppColors.primaryDark : AppColors.primary).withOpacity(0.3),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.timeline,
              size: 48,
              color: (isDarkMode ? AppColors.primaryDark : AppColors.primary).withOpacity(0.5),
            ),
            const SizedBox(height: 16),
            Text(
              l10n.noDataAvailableYet,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: isDarkMode ? Colors.grey[400] : Colors.grey[600],
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              l10n.dataCollectionInProgress,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: isDarkMode ? Colors.grey[500] : Colors.grey[500],
                  ),
            ),
            if (dataCount > 0) ...[
              const SizedBox(height: 8),
              Text(
                l10n.dataPointsCollected(dataCount, progressPercent),
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: isDarkMode ? Colors.grey[500] : Colors.grey[500],
                    ),
              ),
            ],
            if (dataCount < minDataPoints) ...[
              const SizedBox(height: 8),
              Text(
                l10n.minimumPointsNeeded(minDataPoints),
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: isDarkMode ? Colors.grey[600] : Colors.grey[400],
                    ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildChart(BuildContext context) {
    // Group consecutive same states into blocks
    final blocks = _createStateBlocks();

    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.start,
        barGroups: blocks.asMap().entries.map((entry) {
          final block = entry.value;
          return BarChartGroupData(
            x: entry.key,
            barRods: [
              BarChartRodData(
                toY: 1,
                color: _getStateColor(block.state),
                width: block.duration.inSeconds.toDouble(),
                borderRadius: BorderRadius.zero,
              ),
            ],
          );
        }).toList(),
        titlesData: FlTitlesData(
          show: true,
          leftTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          rightTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          topTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                if (value.toInt() >= blocks.length) return const SizedBox.shrink();
                final block = blocks[value.toInt()];
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    _formatTime(block.startTime),
                    style: TextStyle(
                      fontSize: 10,
                      color: isDarkMode ? Colors.grey[400] : Colors.grey[600],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        gridData: FlGridData(show: false),
        borderData: FlBorderData(show: false),
        barTouchData: BarTouchData(
          enabled: true,
          touchTooltipData: BarTouchTooltipData(
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              if (groupIndex >= blocks.length) return null;
              final block = blocks[groupIndex];
              final l10n = AppLocalizations.of(context)!;
              return BarTooltipItem(
                '${_getStateLabel(block.state, l10n)}\n',
                TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: '${_formatTime(block.startTime)} - ${_formatTime(block.endTime)}\n',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text: _formatDuration(block.duration),
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildLegend(BuildContext context, AppLocalizations l10n) {
    final statesPresent = <int>{};
    for (final point in dataPoints) {
      statesPresent.add(point.mainState);
    }

    return Wrap(
      spacing: 12,
      runSpacing: 8,
      children: statesPresent.map((state) {
        return _buildLegendItem(
          color: _getStateColor(state),
          label: _getStateLabel(state, l10n),
        );
      }).toList(),
    );
  }

  Widget _buildLegendItem({required Color color, required String label}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(width: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: isDarkMode ? Colors.grey[300] : Colors.grey[700],
          ),
        ),
      ],
    );
  }

  List<_StateBlock> _createStateBlocks() {
    if (dataPoints.isEmpty) return [];

    final blocks = <_StateBlock>[];
    int currentState = dataPoints.first.mainState;
    DateTime blockStart = dataPoints.first.timestamp;

    for (int i = 1; i < dataPoints.length; i++) {
      if (dataPoints[i].mainState != currentState) {
        // State changed - close current block
        blocks.add(_StateBlock(
          state: currentState,
          startTime: blockStart,
          endTime: dataPoints[i - 1].timestamp,
        ));

        // Start new block
        currentState = dataPoints[i].mainState;
        blockStart = dataPoints[i].timestamp;
      }
    }

    // Add final block
    blocks.add(_StateBlock(
      state: currentState,
      startTime: blockStart,
      endTime: dataPoints.last.timestamp,
    ));

    return blocks;
  }

  Color _getStateColor(int state) {
    switch (state) {
      case 1: // Off
        return Colors.grey;
      case 2: // Ignition
        return Colors.orange;
      case 3: // Starting up
        return Colors.amber;
      case 4: // Running
        return Colors.green;
      case 5: // Cleaning
        return Colors.blue;
      case 6: // Burn off
        return Colors.deepOrange;
      case 11:
      case 13:
      case 14:
      case 16:
      case 17:
      case 50: // Split log check
        return Colors.purple;
      case 20:
      case 21: // Split log mode
        return Colors.teal;
      default:
        return Colors.grey[600]!;
    }
  }

  String _getStateLabel(int state, AppLocalizations l10n) {
    switch (state) {
      case 1:
        return l10n.statusOff;
      case 2:
        return l10n.statusIgnitionOn;
      case 3:
        return l10n.statusStartingUp;
      case 4:
        return l10n.statusRunning;
      case 5:
        return l10n.statusCleaning;
      case 6:
        return l10n.statusBurnOff;
      case 11:
      case 13:
      case 14:
      case 16:
      case 17:
      case 50:
        return l10n.statusSplitLogCheck;
      case 20:
      case 21:
        return l10n.statusSplitLogMode;
      default:
        return l10n.statusUnknown(state);
    }
  }

  String _formatTime(DateTime time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }

  String _formatDuration(Duration duration) {
    if (duration.inHours > 0) {
      return '${duration.inHours}h ${duration.inMinutes.remainder(60)}min';
    } else if (duration.inMinutes > 0) {
      return '${duration.inMinutes}min';
    } else {
      return '${duration.inSeconds}s';
    }
  }
}

class _StateBlock {
  final int state;
  final DateTime startTime;
  final DateTime endTime;

  _StateBlock({
    required this.state,
    required this.startTime,
    required this.endTime,
  });

  Duration get duration => endTime.difference(startTime);
}
