import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
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
    final l10n = AppLocalizations.of(context)!;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.roomPowerRequest,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const SizedBox(height: 4),
            Text(
              l10n.roomPowerRequestDescription,
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
                  l10n.minimal,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                ),
                Text(
                  l10n.maximum,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                ),
              ],
            ),

            if (!enabled) ...[
              const SizedBox(height: 12),
              Text(
                l10n.turnOnStoveToAdjustRoomPower,
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
