import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import '../../../data/models/stove_sensors.dart';
import '../../theme/app_colors.dart';

/// Panel displaying safety and diagnostic information
class SafetyStatusPanel extends StatelessWidget {
  final StoveSensors sensors;

  const SafetyStatusPanel({
    super.key,
    required this.sensors,
  });

  /// Get WiFi signal strength bars (1-5) from dBm
  int _getWifiSignalBars(int dBm) {
    if (dBm >= -50) return 5;
    if (dBm >= -60) return 4;
    if (dBm >= -70) return 3;
    if (dBm >= -80) return 2;
    return 1;
  }

  /// Get WiFi signal color based on strength
  Color _getWifiSignalColor(int dBm) {
    if (dBm >= -60) return AppColors.statusActive; // Excellent/Good
    if (dBm >= -70) return Colors.orange; // Medium
    return AppColors.statusWarning; // Weak/Very weak
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final wifiBars = _getWifiSignalBars(sensors.statusWifiStrength);
    final wifiColor = _getWifiSignalColor(sensors.statusWifiStrength);

    // Determine door and cover status from error/warning codes
    // Warning/Error codes: 2 = pellet lid open, 4 = door open, 8 = either open
    final isDoorOpen = (sensors.statusError & 4) != 0 || (sensors.statusWarning & 4) != 0;
    final isCoverOpen = (sensors.statusError & 2) != 0 ||
                        (sensors.statusWarning & 2) != 0 ||
                        (sensors.statusError & 16) != 0 ||
                        (sensors.statusWarning & 16) != 0;

    return Card(
      child: ExpansionTile(
        initiallyExpanded: false,
        leading: const Icon(Icons.security, color: AppColors.primary),
        title: Text(
          l10n.safetyAndDiagnostics,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              children: [
                // Door status (from error/warning codes)
                _buildStatusRow(
                  context,
                  icon: Icons.door_front_door,
                  label: l10n.door,
                  value: isDoorOpen ? l10n.open : l10n.closed,
                  isGood: !isDoorOpen,
                  goodColor: AppColors.statusActive,
                  badColor: AppColors.statusWarning,
                ),
                const Divider(),

                // Cover/Hood status (from error/warning codes)
                _buildStatusRow(
                  context,
                  icon: Icons.inventory_2,
                  label: l10n.cover,
                  value: isCoverOpen ? l10n.open : l10n.closed,
                  isGood: !isCoverOpen,
                  goodColor: AppColors.statusActive,
                  badColor: AppColors.statusWarning,
                ),
                const Divider(),

                // WiFi signal
                _buildWifiRow(
                  context,
                  dBm: sensors.statusWifiStrength,
                  bars: wifiBars,
                  color: wifiColor,
                ),
                const Divider(),

                // Upper temperature limiter
                _buildStatusRow(
                  context,
                  icon: Icons.thermostat,
                  label: l10n.temperatureLimiter,
                  value: sensors.inputUpperTemperatureLimiter ? l10n.internalTemperatureOK : l10n.overheating,
                  isGood: sensors.inputUpperTemperatureLimiter, // Active is good
                  goodColor: AppColors.statusActive,
                  badColor: AppColors.statusWarning,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusRow(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String value,
    required bool isGood,
    required Color goodColor,
    required Color badColor,
  }) {
    final color = isGood ? goodColor : badColor;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: color, size: 24),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              label,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              value,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: color,
                  ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWifiRow(
    BuildContext context, {
    required int dBm,
    required int bars,
    required Color color,
  }) {
    final l10n = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(Icons.wifi, color: color, size: 24),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              l10n.wifiSignal,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          Row(
            children: List.generate(
              5,
              (index) => Container(
                margin: const EdgeInsets.only(right: 2),
                width: 4,
                height: (index + 1) * 3.0,
                decoration: BoxDecoration(
                  color: index < bars ? color : AppColors.textSecondary.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            '$dBm dBm',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: color,
                ),
          ),
        ],
      ),
    );
  }
}
