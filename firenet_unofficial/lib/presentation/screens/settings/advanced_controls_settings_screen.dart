import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../l10n/app_localizations.dart';
import '../../../providers/settings_provider.dart';

/// Advanced controls settings screen
class AdvancedControlsSettingsScreen extends ConsumerWidget {
  const AdvancedControlsSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.advancedControls),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            _buildSwitchTile(
              context,
              l10n: l10n,
              title: l10n.showEcoMode,
              subtitle: l10n.showEcoModeSubtitle,
              value: settings.showEcoMode,
              onChanged: (value) {
                ref.read(settingsProvider.notifier).updateSetting(
                      (s) => s.copyWith(showEcoMode: value),
                    );
              },
            ),
            _buildSwitchTile(
              context,
              l10n: l10n,
              title: l10n.showHeatingSchedule,
              subtitle: l10n.showHeatingScheduleSubtitle,
              value: settings.showHeatingSchedule,
              onChanged: (value) {
                ref.read(settingsProvider.notifier).updateSetting(
                      (s) => s.copyWith(showHeatingSchedule: value),
                    );
              },
            ),
            _buildSwitchTile(
              context,
              l10n: l10n,
              title: l10n.showRoomPowerRequest,
              subtitle: l10n.showRoomPowerRequestSubtitle,
              value: settings.showRoomPowerRequest,
              onChanged: (value) {
                ref.read(settingsProvider.notifier).updateSetting(
                      (s) => s.copyWith(showRoomPowerRequest: value),
                    );
              },
            ),
            _buildSwitchTile(
              context,
              l10n: l10n,
              title: l10n.showConvectionFans,
              subtitle: l10n.showConvectionFansSubtitle,
              value: settings.showConvectionFans,
              onChanged: (value) {
                ref.read(settingsProvider.notifier).updateSetting(
                      (s) => s.copyWith(showConvectionFans: value),
                    );
              },
            ),
            _buildSwitchTile(
              context,
              l10n: l10n,
              title: l10n.showFrostProtection,
              subtitle: l10n.showFrostProtectionSubtitle,
              value: settings.showFrostProtection,
              onChanged: (value) {
                ref.read(settingsProvider.notifier).updateSetting(
                      (s) => s.copyWith(showFrostProtection: value),
                    );
              },
            ),
            _buildSwitchTile(
              context,
              l10n: l10n,
              title: l10n.showTemperatureOffset,
              subtitle: l10n.showTemperatureOffsetSubtitle,
              value: settings.showTemperatureOffset,
              onChanged: (value) {
                ref.read(settingsProvider.notifier).updateSetting(
                      (s) => s.copyWith(showTemperatureOffset: value),
                    );
              },
            ),
            _buildSwitchTile(
              context,
              l10n: l10n,
              title: l10n.showBakeTemperature,
              subtitle: l10n.showBakeTemperatureSubtitle,
              value: settings.showBakeTemperature,
              onChanged: (value) {
                ref.read(settingsProvider.notifier).updateSetting(
                      (s) => s.copyWith(showBakeTemperature: value),
                    );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSwitchTile(
    BuildContext context, {
    required AppLocalizations l10n,
    required String title,
    required String subtitle,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: onChanged,
    );
  }
}
