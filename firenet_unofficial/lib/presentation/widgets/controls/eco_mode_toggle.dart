import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import '../../theme/app_colors.dart';

/// Toggle control for ECO mode
class EcoModeToggle extends StatelessWidget {
  final bool isActive;
  final ValueChanged<bool>? onChanged;
  final bool enabled;

  const EcoModeToggle({
    super.key,
    required this.isActive,
    this.onChanged,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Card(
      child: SwitchListTile(
        title: Text(
          l10n.ecoMode,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          isActive
              ? l10n.energySavingEnabled
              : l10n.energySavingDisabled,
          style: TextStyle(
            color: isActive ? AppColors.statusActive : AppColors.textSecondary,
            fontSize: 13,
          ),
        ),
        secondary: Icon(
          Icons.eco,
          color: isActive ? AppColors.statusActive : AppColors.textSecondary,
          size: 28,
        ),
        value: isActive,
        onChanged: enabled ? onChanged : null,
        activeColor: AppColors.statusActive,
      ),
    );
  }
}
