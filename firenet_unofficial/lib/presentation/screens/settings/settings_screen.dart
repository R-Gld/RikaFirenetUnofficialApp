import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../theme/app_colors.dart';
import '../../../providers/settings_provider.dart';

/// Settings screen for customizing the UI
class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Paramètres'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () async {
              await ref.read(settingsProvider.notifier).resetToDefaults();
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Paramètres réinitialisés par défaut'),
                    duration: Duration(seconds: 2),
                  ),
                );
              }
            },
            tooltip: 'Réinitialiser',
          ),
        ],
      ),
      body: ListView(
        children: [
          // Advanced controls section
          _buildSectionHeader(context, 'Contrôles avancés'),
          _buildSwitchTile(
            context,
            ref,
            title: 'Mode ECO',
            subtitle: 'Afficher le toggle mode économique',
            value: settings.showEcoMode,
            onChanged: (value) {
              ref.read(settingsProvider.notifier).updateSetting(
                    (s) => s.copyWith(showEcoMode: value),
                  );
            },
          ),
          _buildSwitchTile(
            context,
            ref,
            title: 'Demande puissance pièce',
            subtitle: 'Afficher le sélecteur de niveau 1-4',
            value: settings.showRoomPowerRequest,
            onChanged: (value) {
              ref.read(settingsProvider.notifier).updateSetting(
                    (s) => s.copyWith(showRoomPowerRequest: value),
                  );
            },
          ),
          _buildSwitchTile(
            context,
            ref,
            title: 'Ventilateurs de convection',
            subtitle: 'Afficher les contrôles des 2 ventilateurs',
            value: settings.showConvectionFans,
            onChanged: (value) {
              ref.read(settingsProvider.notifier).updateSetting(
                    (s) => s.copyWith(showConvectionFans: value),
                  );
            },
          ),
          _buildSwitchTile(
            context,
            ref,
            title: 'Protection anti-gel',
            subtitle: 'Afficher le contrôle de protection anti-gel',
            value: settings.showFrostProtection,
            onChanged: (value) {
              ref.read(settingsProvider.notifier).updateSetting(
                    (s) => s.copyWith(showFrostProtection: value),
                  );
            },
          ),
          _buildSwitchTile(
            context,
            ref,
            title: 'Calibration température',
            subtitle: 'Afficher l\'offset de température -3 à +3°C',
            value: settings.showTemperatureOffset,
            onChanged: (value) {
              ref.read(settingsProvider.notifier).updateSetting(
                    (s) => s.copyWith(showTemperatureOffset: value),
                  );
            },
          ),
          _buildSwitchTile(
            context,
            ref,
            title: 'Température four',
            subtitle: 'Afficher le contrôle de température du four',
            value: settings.showBakeTemperature,
            onChanged: (value) {
              ref.read(settingsProvider.notifier).updateSetting(
                    (s) => s.copyWith(showBakeTemperature: value),
                  );
            },
          ),

          const Divider(height: 32),

          // Info panels section
          _buildSectionHeader(context, 'Panneaux d\'information'),
          _buildSwitchTile(
            context,
            ref,
            title: 'Erreurs et warnings',
            subtitle: 'Afficher le panneau d\'erreurs actives',
            value: settings.showErrorWarningPanel,
            onChanged: (value) {
              ref.read(settingsProvider.notifier).updateSetting(
                    (s) => s.copyWith(showErrorWarningPanel: value),
                  );
            },
          ),
          _buildSwitchTile(
            context,
            ref,
            title: 'Sécurité et diagnostics',
            subtitle: 'Afficher le panneau sécurité (porte, WiFi, pression)',
            value: settings.showSafetyStatusPanel,
            onChanged: (value) {
              ref.read(settingsProvider.notifier).updateSetting(
                    (s) => s.copyWith(showSafetyStatusPanel: value),
                  );
            },
          ),
          _buildSwitchTile(
            context,
            ref,
            title: 'Informations capteurs',
            subtitle: 'Afficher les données des capteurs',
            value: settings.showSensorInfoPanel,
            onChanged: (value) {
              ref.read(settingsProvider.notifier).updateSetting(
                    (s) => s.copyWith(showSensorInfoPanel: value),
                  );
            },
          ),
          _buildSwitchTile(
            context,
            ref,
            title: 'Informations sorties',
            subtitle: 'Afficher l\'état des sorties (moteurs, ventilateurs)',
            value: settings.showOutputsInfoPanel,
            onChanged: (value) {
              ref.read(settingsProvider.notifier).updateSetting(
                    (s) => s.copyWith(showOutputsInfoPanel: value),
                  );
            },
          ),
          _buildSwitchTile(
            context,
            ref,
            title: 'Statistiques et système',
            subtitle: 'Afficher les statistiques d\'utilisation',
            value: settings.showStatisticsPanel,
            onChanged: (value) {
              ref.read(settingsProvider.notifier).updateSetting(
                    (s) => s.copyWith(showStatisticsPanel: value),
                  );
            },
          ),

          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
      ),
    );
  }

  Widget _buildSwitchTile(
    BuildContext context,
    WidgetRef ref, {
    required String title,
    required String subtitle,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: AppColors.textSecondary,
            ),
      ),
      value: value,
      onChanged: onChanged,
      activeColor: AppColors.primary,
    );
  }
}
