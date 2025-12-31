import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import '../../theme/app_colors.dart';

/// Operating mode selector for the stove
///
/// Allows switching between Manual (0), Auto (1), and Comfort (2) modes
class OperatingModeSelector extends StatelessWidget {
  final int currentMode; // 0=manual, 1=auto, 2=comfort
  final ValueChanged<int>? onChanged;
  final bool enabled;

  const OperatingModeSelector({
    super.key,
    required this.currentMode,
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
              l10n.operatingMode,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const SizedBox(height: 12),
            SegmentedButton<int>(
              segments: [
                ButtonSegment<int>(
                  value: 0,
                  label: Text(l10n.manualMode),
                  icon: const Icon(Icons.tune),
                ),
                ButtonSegment<int>(
                  value: 1,
                  label: Text(l10n.autoMode),
                  icon: const Icon(Icons.auto_mode),
                ),
                ButtonSegment<int>(
                  value: 2,
                  label: Text(l10n.comfortMode),
                  icon: const Icon(Icons.weekend),
                ),
              ],
              selected: {currentMode},
              onSelectionChanged: enabled
                  ? (Set<int> newSelection) {
                      onChanged?.call(newSelection.first);
                    }
                  : null,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.selected)) {
                    return AppColors.primary;
                  }
                  return null;
                }),
                foregroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.selected)) {
                    return Colors.white;
                  }
                  return null;
                }),
              ),
            ),
            if (!enabled) ...[
              const SizedBox(height: 8),
              Text(
                l10n.turnOnStoveToChangeMode,
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
