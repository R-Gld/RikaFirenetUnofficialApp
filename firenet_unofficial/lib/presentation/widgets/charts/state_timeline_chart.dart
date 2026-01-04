import 'package:flutter/material.dart';
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
        _buildTimelineChart(context, l10n),
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

  Widget _buildTimelineChart(BuildContext context, AppLocalizations l10n) {
    final blocks = _createStateBlocks();

    debugPrint('[StateTimelineChart] Created ${blocks.length} state blocks');
    for (var i = 0; i < blocks.length; i++) {
      debugPrint('[StateTimelineChart]   Block $i: state=${blocks[i].state}, duration=${blocks[i].duration.inMinutes}min, color=${_getStateColor(blocks[i].state)}');
    }

    if (blocks.isEmpty) {
      return const SizedBox(height: 100);
    }

    // Calculate total duration
    final totalDuration = blocks.fold<Duration>(
      Duration.zero,
      (sum, block) => sum + block.duration,
    );

    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;

          return Column(
            children: [
              // Timeline bars
              Expanded(
                child: Stack(
                  children: blocks.map((block) {
                    final blockWidth = (block.duration.inSeconds / totalDuration.inSeconds) * width;
                    final blockStart = blocks
                        .where((b) => b.startTime.isBefore(block.startTime))
                        .fold<Duration>(Duration.zero, (sum, b) => sum + b.duration);
                    final left = (blockStart.inSeconds / totalDuration.inSeconds) * width;

                    return Positioned(
                      left: left,
                      top: 20,
                      width: blockWidth,
                      height: 40,
                      child: GestureDetector(
                        onTap: () {
                          _showBlockTooltip(context, block, l10n);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: _getStateColor(block.state),
                            border: Border.all(
                              color: isDarkMode ? Colors.grey[800]! : Colors.grey[300]!,
                              width: 0.5,
                            ),
                          ),
                          child: Center(
                            child: blockWidth > 50
                                ? Text(
                                    _formatDuration(block.duration),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                : null,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),

              // Time labels
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _formatTime(dataPoints.first.timestamp),
                    style: TextStyle(
                      fontSize: 10,
                      color: isDarkMode ? Colors.grey[400] : Colors.grey[600],
                    ),
                  ),
                  Text(
                    _formatTime(dataPoints.last.timestamp),
                    style: TextStyle(
                      fontSize: 10,
                      color: isDarkMode ? Colors.grey[400] : Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }

  void _showBlockTooltip(BuildContext context, _StateBlock block, AppLocalizations l10n) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(_getStateLabel(block.state, l10n)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${_formatTime(block.startTime)} - ${_formatTime(block.endTime)}'),
            const SizedBox(height: 8),
            Text(_formatDuration(block.duration)),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
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
