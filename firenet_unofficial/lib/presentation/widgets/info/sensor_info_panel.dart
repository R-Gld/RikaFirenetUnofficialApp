import 'package:flutter/material.dart';
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
    final roomTemp = double.tryParse(sensors.inputRoomTemperature) ?? 0.0;

    return Card(
      child: ExpansionTile(
        initiallyExpanded: false,
        leading: const Icon(Icons.sensors, color: AppColors.primary),
        title: const Text(
          'Informations capteurs',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              children: [
                _buildInfoRow(
                  context,
                  icon: Icons.local_fire_department,
                  label: 'Température de flamme',
                  value: '${sensors.inputFlameTemperature}°C',
                  iconColor: Colors.orange,
                ),
                const Divider(),
                _buildInfoRow(
                  context,
                  icon: Icons.thermostat,
                  label: 'Température ambiante',
                  value: '${roomTemp.toStringAsFixed(1)}°C',
                  iconColor: Colors.blue,
                ),
                const Divider(),
                _buildInfoRow(
                  context,
                  icon: Icons.input,
                  label: 'Demande externe',
                  value: sensors.inputExternalRequest ? 'Oui' : 'Non',
                  iconColor: sensors.inputExternalRequest
                      ? AppColors.statusActive
                      : AppColors.statusOff,
                ),
                const Divider(),

                // Température carte électronique
                _buildInfoRow(
                  context,
                  icon: Icons.developer_board,
                  label: 'Temp. carte électronique',
                  value: '${sensors.inputBoardTemperature}°C',
                  iconColor: _getBoardTempColor(sensors.inputBoardTemperature),
                ),

                // Température four (si disponible)
                if (sensors.inputBakeTemperature != "1024") ...[
                  const Divider(),
                  _buildInfoRow(
                    context,
                    icon: Icons.bakery_dining,
                    label: 'Temp. four',
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
