import 'package:flutter/material.dart';
import '../../../data/models/stove_sensors.dart';
import '../../theme/app_colors.dart';

/// Panel displaying outputs information (motors, fans, ignition, flaps) - read-only
class OutputsInfoPanel extends StatelessWidget {
  final StoveSensors sensors;

  const OutputsInfoPanel({
    super.key,
    required this.sensors,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        initiallyExpanded: false,
        leading: const Icon(Icons.settings_input_component, color: AppColors.secondary),
        title: const Text(
          'Sorties',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              children: [
                // Moteur diagonal (auger) - en ‰
                _buildMotorInfo(
                  context,
                  label: 'Moteur diagonal',
                  permille: sensors.outputDischargeMotor,
                  current: sensors.outputDischargeCurrent,
                ),
                const Divider(),

                // Moteur horizontal (insertion) - en ‰
                _buildMotorInfo(
                  context,
                  label: 'Moteur horizontal',
                  permille: sensors.outputInsertionMotor,
                  current: sensors.outputInsertionCurrent,
                ),
                const Divider(),

                // Ventilateur gaz combustion
                _buildFanInfo(
                  context,
                  label: 'Ventilateur gaz combustion',
                  currentRpm: sensors.outputIDFan,
                  targetRpm: sensors.outputIDFanTarget,
                ),
                const Divider(),

                // Volets d'aération (‰)
                _buildFlapsInfo(
                  context,
                  label: 'Volets d\'aération',
                  current: sensors.outputAirFlaps,
                  target: sensors.outputAirFlapsTargetPosition,
                ),
                const Divider(),

                // Allumage
                _buildStatusRow(
                  context,
                  icon: sensors.outputIgnition ? Icons.whatshot : Icons.whatshot_outlined,
                  label: 'Allumage',
                  isActive: sensors.outputIgnition,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMotorInfo(
    BuildContext context, {
    required String label,
    required int permille,
    required int current,
  }) {
    // Convert ‰ (0-1000) to percentage for display
    final percent = (permille / 10).toStringAsFixed(1);
    final progress = (permille / 1000).clamp(0.0, 1.0);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                '$percent%',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          LinearProgressIndicator(
            value: progress,
            backgroundColor: AppColors.textSecondary.withOpacity(0.2),
            color: AppColors.primary,
            minHeight: 6,
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Courant',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.textSecondary,
                    ),
              ),
              Text(
                '$current mA',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.textSecondary,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFanInfo(
    BuildContext context, {
    required String label,
    required int currentRpm,
    required int targetRpm,
  }) {
    // Calculate progress (assume max RPM is around 2000 for visualization)
    final progress = (currentRpm / 2000).clamp(0.0, 1.0);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                '$currentRpm / $targetRpm RPM',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          LinearProgressIndicator(
            value: progress,
            backgroundColor: AppColors.textSecondary.withOpacity(0.2),
            color: AppColors.primary,
            minHeight: 6,
          ),
        ],
      ),
    );
  }

  Widget _buildFlapsInfo(
    BuildContext context, {
    required String label,
    required int current,
    required int target,
  }) {
    // Convert ‰ (0-1000) to percentage for display
    final currentPercent = (current / 10).toStringAsFixed(1);
    final targetPercent = (target / 10).toStringAsFixed(1);
    final progress = (current / 1000).clamp(0.0, 1.0);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                '$currentPercent% / $targetPercent%',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          LinearProgressIndicator(
            value: progress,
            backgroundColor: AppColors.textSecondary.withOpacity(0.2),
            color: AppColors.secondary,
            minHeight: 6,
          ),
        ],
      ),
    );
  }

  Widget _buildStatusRow(
    BuildContext context, {
    required IconData icon,
    required String label,
    required bool isActive,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: isActive ? AppColors.statusActive : AppColors.statusOff,
            size: 24,
          ),
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
              color: isActive
                  ? AppColors.statusActive.withOpacity(0.2)
                  : AppColors.statusOff.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              isActive ? 'ACTIF' : 'INACTIF',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: isActive ? AppColors.statusActive : AppColors.statusOff,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
