import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../l10n/app_localizations.dart';
import '../../../providers/settings_provider.dart';

/// Information panels settings screen
class InfoPanelsSettingsScreen extends ConsumerWidget {
  const InfoPanelsSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.informationPanels),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            _buildSwitchTile(
              context,
              l10n: l10n,
              title: l10n.showErrorWarningPanel,
              subtitle: l10n.showErrorWarningPanelSubtitle,
              value: settings.showErrorWarningPanel,
              onChanged: (value) {
                ref.read(settingsProvider.notifier).updateSetting(
                      (s) => s.copyWith(showErrorWarningPanel: value),
                    );
              },
            ),
            _buildSwitchTile(
              context,
              l10n: l10n,
              title: l10n.showSafetyStatusPanel,
              subtitle: l10n.showSafetyStatusPanelSubtitle,
              value: settings.showSafetyStatusPanel,
              onChanged: (value) {
                ref.read(settingsProvider.notifier).updateSetting(
                      (s) => s.copyWith(showSafetyStatusPanel: value),
                    );
              },
            ),
            _buildSwitchTile(
              context,
              l10n: l10n,
              title: l10n.showSensorInfoPanel,
              subtitle: l10n.showSensorInfoPanelSubtitle,
              value: settings.showSensorInfoPanel,
              onChanged: (value) {
                ref.read(settingsProvider.notifier).updateSetting(
                      (s) => s.copyWith(showSensorInfoPanel: value),
                    );
              },
            ),
            _buildSwitchTile(
              context,
              l10n: l10n,
              title: l10n.showOutputsInfoPanel,
              subtitle: l10n.showOutputsInfoPanelSubtitle,
              value: settings.showOutputsInfoPanel,
              onChanged: (value) {
                ref.read(settingsProvider.notifier).updateSetting(
                      (s) => s.copyWith(showOutputsInfoPanel: value),
                    );
              },
            ),
            _buildSwitchTile(
              context,
              l10n: l10n,
              title: l10n.showStatisticsPanel,
              subtitle: l10n.showStatisticsPanelSubtitle,
              value: settings.showStatisticsPanel,
              onChanged: (value) {
                ref.read(settingsProvider.notifier).updateSetting(
                      (s) => s.copyWith(showStatisticsPanel: value),
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
