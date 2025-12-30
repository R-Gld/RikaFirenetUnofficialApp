import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';

/// Control for room power request level (1-4)
class RoomPowerRequestControl extends StatelessWidget {
  final int level; // 1-4
  final ValueChanged<int>? onChanged;
  final bool enabled;

  const RoomPowerRequestControl({
    super.key,
    required this.level,
    this.onChanged,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Demande de puissance pièce',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const SizedBox(height: 4),
            Text(
              'Niveau de demande de puissance pour la pièce',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.textSecondary,
                  ),
            ),
            const SizedBox(height: 16),

            SegmentedButton<int>(
              segments: const [
                ButtonSegment<int>(
                  value: 1,
                  label: Text('1'),
                  icon: Icon(Icons.power_settings_new, size: 18),
                ),
                ButtonSegment<int>(
                  value: 2,
                  label: Text('2'),
                  icon: Icon(Icons.power, size: 18),
                ),
                ButtonSegment<int>(
                  value: 3,
                  label: Text('3'),
                  icon: Icon(Icons.local_fire_department, size: 18),
                ),
                ButtonSegment<int>(
                  value: 4,
                  label: Text('4'),
                  icon: Icon(Icons.whatshot, size: 18),
                ),
              ],
              selected: {level},
              onSelectionChanged: enabled
                  ? (Set<int> newSelection) {
                      onChanged?.call(newSelection.first);
                    }
                  : null,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.selected)) {
                      return AppColors.primary;
                    }
                    return Colors.transparent;
                  },
                ),
                foregroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.selected)) {
                      return Colors.white;
                    }
                    return AppColors.textPrimary;
                  },
                ),
              ),
            ),

            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Minimal',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                ),
                Text(
                  'Maximum',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                ),
              ],
            ),

            if (!enabled) ...[
              const SizedBox(height: 12),
              Text(
                'Allumez le poêle pour modifier la demande de puissance',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.textSecondary,
                      fontStyle: FontStyle.italic,
                    ),
                textAlign: TextAlign.center,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
