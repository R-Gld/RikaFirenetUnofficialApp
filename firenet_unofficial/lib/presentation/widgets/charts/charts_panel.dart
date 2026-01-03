import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../theme/app_colors.dart';
import '../../../providers/chart_data_provider.dart';
import 'temperature_chart.dart';

/// Charts panel widget for stove detail screen
///
/// Displays temperature evolution chart in an expandable card
class ChartsPanel extends ConsumerWidget {
  final String stoveId;

  const ChartsPanel({
    super.key,
    required this.stoveId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chartDataAsync = ref.watch(temperatureChart24hProvider(stoveId));
    final dataCountAsync = ref.watch(sensorReadingCount24hProvider(stoveId));
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ExpansionTile(
        initiallyExpanded: false,
        leading: Icon(
          Icons.show_chart,
          color: isDark ? AppColors.primaryDark : AppColors.primary,
        ),
        title: Text(
          'Charts',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        subtitle: Text(
          'Temperature evolution & statistics',
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
                  'Temperature Evolution (24h)',
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
                      title: 'Temperature Evolution (24h)',
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
                            'Failed to load chart data',
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
                          'Historical data is collected automatically. '
                          'Charts will populate as data is gathered.',
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
