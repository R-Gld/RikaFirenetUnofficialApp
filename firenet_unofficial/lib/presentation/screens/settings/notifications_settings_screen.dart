import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../l10n/app_localizations.dart';
import '../../theme/app_colors.dart';
import '../../../providers/notification_settings_provider.dart';
import '../../../providers/stove_providers.dart';
import '../../../services/stove_field_descriptor_service.dart';
import '../../../services/background_task_handler.dart';
import '../../../services/permission_service.dart';

/// Notifications settings screen
class NotificationsSettingsScreen extends ConsumerWidget {
  const NotificationsSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifSettings = ref.watch(notificationSettingsProvider);
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.notifications),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            // Master toggle
            SwitchListTile(
              title: Text(l10n.enableNotifications),
              subtitle: Text(l10n.monitorChangesInBackground),
              value: notifSettings.enabled,
              onChanged: (value) => _handleNotificationToggle(context, ref, value),
            ),

            // Polling interval slider
            if (notifSettings.enabled) ...[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.pollingInterval(notifSettings.pollingIntervalMinutes),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Slider(
                      value: notifSettings.pollingIntervalMinutes.toDouble(),
                      min: 15,
                      max: 60,
                      divisions: 3, // 15, 30, 45, 60
                      label: '${notifSettings.pollingIntervalMinutes} min',
                      activeColor: AppColors.primary,
                      onChanged: (value) {
                        ref
                            .read(notificationSettingsProvider.notifier)
                            .setPollingInterval(value.toInt());
                      },
                    ),
                    Text(
                      l10n.notificationDelayInfo,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppColors.textSecondary,
                            fontStyle: FontStyle.italic,
                          ),
                    ),
                  ],
                ),
              ),

              const Divider(indent: 16, endIndent: 16),

              // Field selector header
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  l10n.watchedFields(notifSettings.watchedFields.length),
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),

              // Field selector by category
              ..._buildFieldSelector(context, ref, notifSettings, l10n),

              const Divider(indent: 16, endIndent: 16, height: 24),

              // Test now button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: OutlinedButton.icon(
                  onPressed: () => _testNow(context, ref, l10n),
                  icon: const Icon(Icons.play_arrow),
                  label: Text(l10n.testNow),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppColors.primary,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  List<Widget> _buildFieldSelector(
    BuildContext context,
    WidgetRef ref,
    notifSettings,
    AppLocalizations l10n,
  ) {
    final fieldsByCategory = StoveFieldDescriptorService.getFieldsByCategory();
    final categories = [
      FieldCategory.status,
      FieldCategory.temperature,
      FieldCategory.safety,
      FieldCategory.motors,
      FieldCategory.consumption,
    ];

    return categories.map((category) {
      final fields = fieldsByCategory[category] ?? [];
      if (fields.isEmpty) return const SizedBox.shrink();

      return ExpansionTile(
        title: Text(
          StoveFieldDescriptorService.getCategoryName(category),
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        initiallyExpanded: false,
        children: fields.map((field) {
          final isWatched = notifSettings.watchedFields.contains(field.fieldName);
          final hasThreshold = notifSettings.fieldThresholds.containsKey(field.fieldName);

          return CheckboxListTile(
            title: Text(field.displayName),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  field.description,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                ),
                if (isWatched && field.supportsThreshold)
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: TextButton.icon(
                      onPressed: () => _showThresholdDialog(
                        context,
                        ref,
                        field,
                        notifSettings,
                        l10n,
                      ),
                      icon: Icon(
                        hasThreshold ? Icons.tune : Icons.add_circle_outline,
                        size: 16,
                      ),
                      label: Text(
                        hasThreshold ? l10n.editThreshold : l10n.configureThreshold,
                        style: const TextStyle(fontSize: 12),
                      ),
                      style: TextButton.styleFrom(
                        foregroundColor: AppColors.primary,
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ),
              ],
            ),
            value: isWatched,
            activeColor: AppColors.primary,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value) {
              if (value == true) {
                ref
                    .read(notificationSettingsProvider.notifier)
                    .addWatchedField(field.fieldName);
              } else {
                ref
                    .read(notificationSettingsProvider.notifier)
                    .removeWatchedField(field.fieldName);
              }
            },
          );
        }).toList(),
      );
    }).toList();
  }

  Future<void> _handleNotificationToggle(
    BuildContext context,
    WidgetRef ref,
    bool value,
  ) async {
    final l10n = AppLocalizations.of(context)!;

    if (value) {
      // Enabling notifications - request permission first
      final permissionService = PermissionService();
      final granted = await permissionService.requestNotificationPermission();

      if (!granted) {
        // Permission denied
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(l10n.permissionDenied),
              duration: const Duration(seconds: 4),
              backgroundColor: Colors.orange,
            ),
          );
        }
        return; // Don't enable notifications
      }

      // Permission granted - enable notifications
      ref.read(notificationSettingsProvider.notifier).setEnabled(true);

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.notificationsEnabledSuccess),
            duration: const Duration(seconds: 2),
            backgroundColor: Colors.green,
          ),
        );
      }
    } else {
      // Disabling notifications - no permission needed
      ref.read(notificationSettingsProvider.notifier).setEnabled(false);

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.notificationsDisabled),
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }

  Future<void> _testNow(
    BuildContext context,
    WidgetRef ref,
    AppLocalizations l10n,
  ) async {
    final stoveListAsync = ref.read(stoveListProvider);

    stoveListAsync.when(
      data: (stoves) async {
        if (stoves.isEmpty) {
          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(l10n.noStoveConfigured),
                duration: const Duration(seconds: 2),
              ),
            );
          }
          return;
        }

        // Show loading indicator
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(l10n.testInProgress),
              duration: const Duration(seconds: 2),
            ),
          );
        }

        // Execute background task for first stove
        final firstStoveId = stoves.first.id;
        final handler = BackgroundTaskHandler();

        try {
          final success = await handler.execute(firstStoveId);

          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  success ? l10n.testSuccess : l10n.testFailed,
                ),
                duration: const Duration(seconds: 3),
                backgroundColor: success ? Colors.green : Colors.red,
              ),
            );
          }
        } catch (e) {
          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('${l10n.error}: $e'),
                duration: const Duration(seconds: 3),
                backgroundColor: Colors.red,
              ),
            );
          }
        }
      },
      loading: () {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(l10n.loadingStoveList),
              duration: const Duration(seconds: 2),
            ),
          );
        }
      },
      error: (error, stack) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('${l10n.error}: $error'),
              duration: const Duration(seconds: 3),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
    );
  }

  void _showThresholdDialog(
    BuildContext context,
    WidgetRef ref,
    StoveFieldDescriptor field,
    notifSettings,
    AppLocalizations l10n,
  ) {
    // Get current threshold or defaults
    final currentThreshold = notifSettings.fieldThresholds[field.fieldName];
    double minValue = (currentThreshold?['min'] as num?)?.toDouble() ?? 0.0;
    double maxValue = (currentThreshold?['max'] as num?)?.toDouble() ?? 100.0;

    // Determine sensible ranges based on field type
    double rangeMin = 0.0;
    double rangeMax = 100.0;

    if (field.fieldName.contains('Temperature')) {
      rangeMin = 0.0;
      rangeMax = 100.0;
    } else if (field.fieldName.contains('Fan') || field.fieldName.contains('Motor')) {
      rangeMin = 0.0;
      rangeMax = 100.0;
    }

    showDialog<void>(
      context: context,
      builder: (dialogContext) => StatefulBuilder(
        builder: (context, setState) => AlertDialog(
          title: Text(l10n.thresholdDialogTitle(field.displayName)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(l10n.notifyIfValueOutOfRange),
              const SizedBox(height: 16),
              Text(l10n.minimumLabel(minValue.toStringAsFixed(1))),
              Slider(
                value: minValue,
                min: rangeMin,
                max: rangeMax,
                divisions: 100,
                label: minValue.toStringAsFixed(1),
                onChanged: (value) {
                  setState(() {
                    minValue = value;
                  });
                },
              ),
              const SizedBox(height: 8),
              Text(l10n.maximumLabel(maxValue.toStringAsFixed(1))),
              Slider(
                value: maxValue,
                min: rangeMin,
                max: rangeMax,
                divisions: 100,
                label: maxValue.toStringAsFixed(1),
                onChanged: (value) {
                  setState(() {
                    maxValue = value;
                  });
                },
              ),
            ],
          ),
          actions: [
            if (currentThreshold != null)
              TextButton(
                onPressed: () {
                  ref
                      .read(notificationSettingsProvider.notifier)
                      .removeFieldThreshold(field.fieldName);
                  Navigator.of(dialogContext).pop();
                },
                child: Text(l10n.deleteThreshold),
              ),
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(),
              child: Text(l10n.cancel),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(notificationSettingsProvider.notifier).setFieldThreshold(
                      field.fieldName,
                      minValue,
                      maxValue,
                    );
                Navigator.of(dialogContext).pop();
              },
              child: Text(l10n.save),
            ),
          ],
        ),
      ),
    );
  }
}
