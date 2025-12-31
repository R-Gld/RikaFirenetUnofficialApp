import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import '../../theme/app_colors.dart';

/// Power toggle widget with confirmation dialog
class PowerToggle extends StatelessWidget {
  final bool isOn;
  final ValueChanged<bool> onChanged;
  final bool enabled;

  const PowerToggle({
    super.key,
    required this.isOn,
    required this.onChanged,
    this.enabled = true,
  });

  Future<void> _showConfirmDialog(BuildContext context, bool newValue) async {
    final l10n = AppLocalizations.of(context)!;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(newValue ? l10n.turnOnStoveQuestion : l10n.turnOffStoveQuestion),
        content: Text(
          newValue
              ? l10n.turnOnStoveConfirmation
              : l10n.turnOffStoveConfirmation,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(l10n.cancel),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: ElevatedButton.styleFrom(
              backgroundColor: newValue ? AppColors.statusActive : AppColors.error,
              foregroundColor: Colors.white,
            ),
            child: Text(newValue ? l10n.turnOn : l10n.turnOff),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      onChanged(newValue);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Card(
      child: SwitchListTile(
        title: Text(
          l10n.power,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text(isOn ? l10n.stoveOn : l10n.stoveOff),
        value: isOn,
        secondary: Icon(
          isOn ? Icons.power : Icons.power_off,
          color: isOn ? AppColors.statusActive : AppColors.statusOff,
          size: 32,
        ),
        onChanged: enabled
            ? (value) => _showConfirmDialog(context, value)
            : null,
      ),
    );
  }
}
