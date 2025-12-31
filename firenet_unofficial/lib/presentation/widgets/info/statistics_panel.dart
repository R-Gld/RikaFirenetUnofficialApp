import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import '../../../data/models/stove_sensors.dart';
import '../../theme/app_colors.dart';

/// Panel displaying usage statistics and system information (read-only)
class StatisticsPanel extends StatelessWidget {
  final StoveSensors sensors;
  final String stoveType;
  final String oem;

  const StatisticsPanel({
    super.key,
    required this.sensors,
    required this.stoveType,
    required this.oem,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Card(
      child: ExpansionTile(
        initiallyExpanded: false,
        leading: const Icon(Icons.analytics, color: AppColors.primary),
        title: Text(
          l10n.statisticsAndSystem,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Section: Utilisation
                _buildSectionTitle(context, l10n.usage),
                const SizedBox(height: 8),
                _buildStatRow(
                  context,
                  label: l10n.pelletHours,
                  value: '${sensors.parameterRuntimePellets} h',
                ),
                _buildStatRow(
                  context,
                  label: l10n.woodHours,
                  value: '${(sensors.parameterRuntimeLogs / 60).toStringAsFixed(1)} h',
                ),
                _buildStatRow(
                  context,
                  label: l10n.onOffCycles,
                  value: '${sensors.parameterOnOffCycleCount}',
                ),
                _buildStatRow(
                  context,
                  label: l10n.ignitionCount,
                  value: '${sensors.parameterIgnitionCount}',
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),

                // Section: Consommation
                _buildSectionTitle(context, l10n.consumption),
                const SizedBox(height: 8),
                _buildStatRow(
                  context,
                  label: l10n.totalConsumption,
                  value: '${sensors.parameterFeedRateTotal} kg',
                ),
                _buildStatRow(
                  context,
                  label: l10n.beforeMaintenance,
                  value: '${sensors.parameterServiceCountdownKg} kg (${sensors.parameterServiceCountdownTime} h)',
                  valueColor: sensors.parameterServiceCountdownKg < 50
                      ? AppColors.statusWarning
                      : null,
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),

                // Section: Système
                _buildSectionTitle(context, l10n.systemInformation),
                const SizedBox(height: 8),
                _buildStatRow(
                  context,
                  label: l10n.model,
                  value: stoveType,
                ),
                _buildStatRow(
                  context,
                  label: l10n.manufacturer,
                  value: oem,
                ),
                _buildStatRow(
                  context,
                  label: l10n.serialNumber,
                  value: '${sensors.parameterFabricationNumber}',
                ),
                _buildStatRow(
                  context,
                  label: l10n.firmwareVersion,
                  value: 'MB:${sensors.parameterVersionMainBoard} '
                      'TFT:${sensors.parameterVersionTFT} '
                      'WiFi:${sensors.parameterVersionWiFi}',
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
    );
  }

  Widget _buildStatRow(
    BuildContext context, {
    required String label,
    required String value,
    Color? valueColor,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              label,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const SizedBox(width: 12),
          Flexible(
            child: Text(
              value,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: valueColor ?? AppColors.primary,
                  ),
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
