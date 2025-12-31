import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import '../../../data/models/stove_sensors.dart';
import '../../theme/app_colors.dart';

/// Panel displaying sensor/input information (read-only)
class SensorInfoPanel extends StatelessWidget {
  final StoveSensors sensors;

  const SensorInfoPanel({
    super.key,
    required this.sensors,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final roomTemp = double.tryParse(sensors.inputRoomTemperature) ?? 0.0;

    return Card(
      child: ExpansionTile(
        initiallyExpanded: false,
        leading: const Icon(Icons.sensors, color: AppColors.primary),
        title: Text(
          l10n.sensorInformation,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              children: [
                _buildInfoRow(
                  context,
                  icon: Icons.local_fire_department,
                  label: l10n.flameTemperature,
                  value: '${sensors.inputFlameTemperature}°C',
                  iconColor: Colors.orange,
                ),
                const Divider(),
                _buildInfoRow(
                  context,
                  icon: Icons.thermostat,
                  label: l10n.ambientTemperature,
                  value: '${roomTemp.toStringAsFixed(1)}°C',
                  iconColor: Colors.blue,
                ),
                const Divider(),
                _buildInfoRow(
                  context,
                  icon: Icons.input,
                  label: l10n.externalRequest,
                  value: sensors.inputExternalRequest ? l10n.yes : l10n.no,
                  iconColor: sensors.inputExternalRequest
                      ? AppColors.statusActive
                      : AppColors.statusOff,
                ),
                const Divider(),

                // Température carte électronique
                _buildInfoRow(
                  context,
                  icon: Icons.developer_board,
                  label: l10n.boardTemperature,
                  value: '${sensors.inputBoardTemperature}°C',
                  iconColor: _getBoardTempColor(sensors.inputBoardTemperature),
                ),

                // Température four (si disponible)
                if (sensors.inputBakeTemperature != "1024") ...[
                  const Divider(),
                  _buildInfoRow(
                    context,
                    icon: Icons.bakery_dining,
                    label: l10n.ovenTemperature,
                    value: '${sensors.inputBakeTemperature}°C',
                    iconColor: AppColors.secondary,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Get color for board temperature (normal < 60°C, warning < 70°C, danger >= 70°C)
  Color _getBoardTempColor(String tempStr) {
    final temp = double.tryParse(tempStr) ?? 0.0;
    if (temp >= 70) {
      return AppColors.statusWarning;
    } else if (temp >= 60) {
      return Colors.orange;
    }
    return AppColors.statusActive;
  }

  Widget _buildInfoRow(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String value,
    required Color iconColor,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: iconColor, size: 24),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              label,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Text(
            value,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary,
                ),
          ),
        ],
      ),
    );
  }
}
