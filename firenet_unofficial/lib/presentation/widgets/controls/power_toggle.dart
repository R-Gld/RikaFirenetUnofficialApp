import 'package:flutter/material.dart';
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
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(newValue ? 'Allumer le poêle ?' : 'Éteindre le poêle ?'),
        content: Text(
          newValue
              ? 'Voulez-vous démarrer le poêle ?'
              : 'Voulez-vous éteindre le poêle ?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Annuler'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: ElevatedButton.styleFrom(
              backgroundColor: newValue ? AppColors.statusActive : AppColors.error,
              foregroundColor: Colors.white,
            ),
            child: Text(newValue ? 'Allumer' : 'Éteindre'),
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
    return Card(
      child: SwitchListTile(
        title: const Text(
          'Alimentation',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text(isOn ? 'Poêle allumé' : 'Poêle éteint'),
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
