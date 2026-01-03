import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../theme/app_colors.dart';
import '../../../l10n/app_localizations.dart';
import '../../../providers/chart_data_provider.dart';
import 'temperature_chart.dart';

/// Charts panel widget for stove detail screen
///
/// Displays temperature evolution chart in an expandable card
/// Auto-refreshes every 4 seconds to show new data points in real-time
class ChartsPanel extends ConsumerStatefulWidget {
  final String stoveId;

  const ChartsPanel({
    super.key,
    required this.stoveId,
  });

  @override
  ConsumerState<ChartsPanel> createState() => _ChartsPanelState();
}

class _ChartsPanelState extends ConsumerState<ChartsPanel> {
  Timer? _refreshTimer;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    // Start auto-refresh timer (every 4 seconds)
    _startAutoRefresh();
  }

  @override
  void dispose() {
    _refreshTimer?.cancel();
    super.dispose();
  }

  void _startAutoRefresh() {
    _refreshTimer = Timer.periodic(const Duration(seconds: 4), (_) {
      if (mounted && _isExpanded) {
        // Only refresh if panel is expanded (visible)
        ref.invalidate(temperatureChart24hProvider(widget.stoveId));
        ref.invalidate(sensorReadingCount24hProvider(widget.stoveId));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final chartDataAsync = ref.watch(temperatureChart24hProvider(widget.stoveId));
    final dataCountAsync = ref.watch(sensorReadingCount24hProvider(widget.stoveId));
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ExpansionTile(
        initiallyExpanded: false,
        onExpansionChanged: (expanded) {
          setState(() {
            _isExpanded = expanded;
          });
          if (expanded) {
            // Refresh immediately when expanded
            ref.invalidate(temperatureChart24hProvider(widget.stoveId));
            ref.invalidate(sensorReadingCount24hProvider(widget.stoveId));
          }
        },
        leading: Icon(
          Icons.show_chart,
          color: isDark ? AppColors.primaryDark : AppColors.primary,
        ),
        title: Text(
          l10n.charts,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        subtitle: Text(
          l10n.chartsSubtitle,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: AppColors.textSecondary,
              ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Section title
                Text(
                  l10n.temperatureEvolution24h,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: isDark ? AppColors.primaryDark : AppColors.primary,
                      ),
                ),
                const SizedBox(height: 16),

                // Chart
                chartDataAsync.when(
                  data: (dataPoints) {
                    final dataCount = dataCountAsync.valueOrNull ?? 0;
                    return TemperatureChart(
                      dataPoints: dataPoints,
                      isDarkMode: isDark,
                      title: l10n.temperatureEvolution24h,
                      dataCount: dataCount,
                    );
                  },
                  loading: () => const SizedBox(
                    height: 250,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                  error: (error, stack) => Container(
                    height: 250,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red.withOpacity(0.3),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.error_outline,
                            size: 48,
                            color: Colors.red.withOpacity(0.7),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            l10n.failedToLoadChartData,
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  color: Colors.red.withOpacity(0.7),
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // Info message for new users
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: (isDark ? AppColors.primaryDark : AppColors.primary)
                        .withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        size: 20,
                        color: isDark ? AppColors.primaryDark : AppColors.primary,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          l10n.chartAutoUpdateInfo,
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: isDark ? Colors.grey[300] : Colors.grey[700],
                              ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Future: View all charts button
                // const SizedBox(height: 16),
                // TextButton.icon(
                //   onPressed: () {
                //     // Navigate to full charts screen
                //   },
                //   icon: const Icon(Icons.analytics),
                //   label: const Text('View All Charts'),
                //   style: TextButton.styleFrom(
                //     foregroundColor: isDark ? AppColors.primaryDark : AppColors.primary,
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
