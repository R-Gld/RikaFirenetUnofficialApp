import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../../theme/app_colors.dart';
import '../../../data/models/app_settings.dart';
import '../../../providers/settings_provider.dart';
import '../../../providers/notification_settings_provider.dart';
import 'advanced_controls_settings_screen.dart';
import 'notifications_settings_screen.dart';
import 'info_panels_settings_screen.dart';

/// Settings screen for customizing the UI
class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  String _appVersion = '';

  @override
  void initState() {
    super.initState();
    _loadAppVersion();
  }

  Future<void> _loadAppVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      _appVersion = packageInfo.version;
    });
  }

  @override
  Widget build(BuildContext context) {
    final settings = ref.watch(settingsProvider);
    final notifSettings = ref.watch(notificationSettingsProvider);
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.settings),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () async {
              await ref.read(settingsProvider.notifier).resetToDefaults();
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(l10n.settingsResetToDefaults),
                    duration: const Duration(seconds: 2),
                  ),
                );
              }
            },
            tooltip: l10n.reset,
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            // GitHub Card at top
            _buildGitHubCard(context, l10n),

            const Divider(),

            // Appearance Section (inline)
            _buildSectionHeader(context, l10n.appearance),
            _buildThemeSelector(context, ref, settings, l10n),
            _buildLanguageSelector(context, ref, settings, l10n),

            const Divider(height: 32),

            // About Section (inline)
            _buildSectionHeader(context, l10n.about),
            _buildAboutInfo(context, l10n),

            const Divider(height: 32),

            // Submenu Navigation Items
            _buildSubmenuTile(
              context,
              l10n: l10n,
              title: l10n.advancedControls,
              subtitle: l10n.configureAdvancedFeatures,
              icon: Icons.tune,
              onTap: () => _navigateToAdvancedControls(context),
            ),
            _buildSubmenuTile(
              context,
              l10n: l10n,
              title: l10n.notifications,
              subtitle: l10n.configureBackgroundNotifications,
              icon: Icons.notifications,
              trailing: Switch(
                value: notifSettings.enabled,
                onChanged: (value) {
                  // Just toggle the master switch without navigating
                  if (value) {
                    _navigateToNotifications(context);
                  } else {
                    ref.read(notificationSettingsProvider.notifier).setEnabled(false);
                  }
                },
              ),
              onTap: () => _navigateToNotifications(context),
            ),
            _buildSubmenuTile(
              context,
              l10n: l10n,
              title: l10n.informationPanels,
              subtitle: l10n.toggleInfoPanelVisibility,
              icon: Icons.info_outline,
              onTap: () => _navigateToInfoPanels(context),
            ),

            const SizedBox(height: 32),

            // Version at bottom (non-clickable)
            _buildVersionInfo(context, l10n),
          ],
        ),
      ),
    );
  }

  Widget _buildGitHubCard(BuildContext context, AppLocalizations l10n) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: InkWell(
        onTap: () => _launchGitHub(),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              const Icon(Icons.code, size: 40, color: AppColors.primary),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.viewOnGitHub,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'github.com/R-Gld/RikaFirenetUnofficialApp',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppColors.textSecondary,
                          ),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.open_in_new, color: AppColors.primary),
            ],
          ),
        ),
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

  Widget _buildThemeSelector(
    BuildContext context,
    WidgetRef ref,
    AppSettings settings,
    AppLocalizations l10n,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.theme,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(height: 12),
          SegmentedButton<AppThemeMode>(
            segments: [
              ButtonSegment<AppThemeMode>(
                value: AppThemeMode.light,
                label: Text(l10n.light),
                icon: const Icon(Icons.light_mode),
              ),
              ButtonSegment<AppThemeMode>(
                value: AppThemeMode.dark,
                label: Text(l10n.dark),
                icon: const Icon(Icons.dark_mode),
              ),
              ButtonSegment<AppThemeMode>(
                value: AppThemeMode.system,
                label: Text(l10n.system),
                icon: const Icon(Icons.settings),
              ),
            ],
            selected: {settings.themeMode},
            onSelectionChanged: (Set<AppThemeMode> newSelection) {
              ref.read(settingsProvider.notifier).updateSetting(
                    (s) => s.copyWith(themeMode: newSelection.first),
                  );
            },
          ),
          const SizedBox(height: 8),
          Text(
            _getThemeDescription(settings.themeMode, l10n),
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.textSecondary,
                  fontStyle: FontStyle.italic,
                ),
          ),
        ],
      ),
    );
  }

  String _getThemeDescription(AppThemeMode mode, AppLocalizations l10n) {
    switch (mode) {
      case AppThemeMode.light:
        return l10n.lightModeActive;
      case AppThemeMode.dark:
        return l10n.darkModeActive;
      case AppThemeMode.system:
        return l10n.systemDescription;
    }
  }

  Widget _buildLanguageSelector(
    BuildContext context,
    WidgetRef ref,
    AppSettings settings,
    AppLocalizations l10n,
  ) {
    return ListTile(
      title: Text(l10n.language),
      subtitle: Text(l10n.languageSubtitle),
      trailing: DropdownButton<Locale?>(
        value: settings.appLocale,
        items: [
          DropdownMenuItem(
            value: null,
            child: Text(l10n.systemDefault),
          ),
          const DropdownMenuItem(
            value: Locale('en'),
            child: Text('English'),
          ),
          const DropdownMenuItem(
            value: Locale('fr'),
            child: Text('Français'),
          ),
        ],
        onChanged: (locale) {
          ref.read(settingsProvider.notifier).updateSetting(
                (s) => s.copyWith(appLocale: locale),
              );
        },
      ),
    );
  }

  Widget _buildAboutInfo(BuildContext context, AppLocalizations l10n) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (_appVersion.isNotEmpty)
            Text(
              l10n.version(_appVersion),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
        ],
      ),
    );
  }

  Widget _buildSubmenuTile(
    BuildContext context, {
    required AppLocalizations l10n,
    required String title,
    required String subtitle,
    required IconData icon,
    Widget? trailing,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: AppColors.primary),
      title: Text(title),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: AppColors.textSecondary,
            ),
      ),
      trailing: trailing ?? const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }

  Widget _buildVersionInfo(BuildContext context, AppLocalizations l10n) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          _appVersion.isNotEmpty ? l10n.version(_appVersion) : '',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: AppColors.textSecondary,
              ),
        ),
      ),
    );
  }

  Future<void> _launchGitHub() async {
    final url = Uri.parse('https://github.com/R-Gld/RikaFirenetUnofficialApp');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Could not open GitHub'),
            duration: Duration(seconds: 2),
          ),
        );
      }
    }
  }

  void _navigateToAdvancedControls(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const AdvancedControlsSettingsScreen(),
      ),
    );
  }

  void _navigateToNotifications(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const NotificationsSettingsScreen(),
      ),
    );
  }

  void _navigateToInfoPanels(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const InfoPanelsSettingsScreen(),
      ),
    );
  }
}
