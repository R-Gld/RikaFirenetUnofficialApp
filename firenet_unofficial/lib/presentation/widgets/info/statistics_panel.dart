import 'package:flutter/material.dart';
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
    return Card(
      child: ExpansionTile(
        initiallyExpanded: false,
        leading: const Icon(Icons.analytics, color: AppColors.primary),
        title: const Text(
          'Statistiques et système',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Section: Utilisation
                _buildSectionTitle(context, 'Utilisation'),
                const SizedBox(height: 8),
                _buildStatRow(
                  context,
                  label: 'Heures pellets',
                  value: '${sensors.parameterRuntimePellets} h',
                ),
                _buildStatRow(
                  context,
                  label: 'Heures bois',
                  value: '${sensors.parameterRuntimeLogs} h',
                ),
                _buildStatRow(
                  context,
                  label: 'Cycles ON/OFF',
                  value: '${sensors.parameterOnOffCycleCount}',
                ),
                _buildStatRow(
                  context,
                  label: 'Nombre d\'allumages',
                  value: '${sensors.parameterIgnitionCount}',
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),

                // Section: Consommation
                _buildSectionTitle(context, 'Consommation'),
                const SizedBox(height: 8),
                _buildStatRow(
                  context,
                  label: 'Consommation totale',
                  value: '${sensors.parameterFeedRateTotal} kg',
                ),
                _buildStatRow(
                  context,
                  label: 'Avant entretien',
                  value: '${sensors.parameterServiceCountdownKg} kg (${sensors.parameterServiceCountdownTime} h)',
                  valueColor: sensors.parameterServiceCountdownKg < 50
                      ? AppColors.statusWarning
                      : null,
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),

                // Section: Système
                _buildSectionTitle(context, 'Informations système'),
                const SizedBox(height: 8),
                _buildStatRow(
                  context,
                  label: 'Modèle',
                  value: stoveType,
                ),
                _buildStatRow(
                  context,
                  label: 'Fabricant',
                  value: oem,
                ),
                _buildStatRow(
                  context,
                  label: 'N° de fabrication',
                  value: '${sensors.parameterFabricationNumber}',
                ),
                _buildStatRow(
                  context,
                  label: 'Version firmware',
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
