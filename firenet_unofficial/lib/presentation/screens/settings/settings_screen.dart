import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../theme/app_colors.dart';
import '../../../providers/settings_provider.dart';
import '../../../providers/notification_settings_provider.dart';
import '../../../providers/stove_providers.dart';
import '../../../services/stove_field_descriptor_service.dart';
import '../../../services/background_task_handler.dart';
import '../../../services/permission_service.dart';

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

          // Notifications section
          _buildSectionHeader(context, 'Notifications en arrière-plan'),
          _buildNotificationSection(context, ref),

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
    );
  }

  Widget _buildNotificationSection(BuildContext context, WidgetRef ref) {
    final notifSettings = ref.watch(notificationSettingsProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Master toggle
        _buildSwitchTile(
          context,
          ref,
          title: 'Activer les notifications',
          subtitle: 'Surveiller les changements même quand l\'app est fermée',
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
                  'Intervalle de vérification : ${notifSettings.pollingIntervalMinutes} min',
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
                  'Les notifications peuvent être retardées selon l\'optimisation batterie',
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
              'Champs à surveiller (${notifSettings.watchedFields.length} sélectionnés)',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),

          // Field selector by category
          ..._buildFieldSelector(context, ref, notifSettings),

          const Divider(indent: 16, endIndent: 16, height: 24),

          // Test now button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: OutlinedButton.icon(
              onPressed: () => _testNow(context, ref),
              icon: const Icon(Icons.play_arrow),
              label: const Text('Tester maintenant'),
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.primary,
              ),
            ),
          ),
        ],
      ],
    );
  }

  List<Widget> _buildFieldSelector(
    BuildContext context,
    WidgetRef ref,
    notifSettings,
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
                      ),
                      icon: Icon(
                        hasThreshold ? Icons.tune : Icons.add_circle_outline,
                        size: 16,
                      ),
                      label: Text(
                        hasThreshold ? 'Modifier le seuil' : 'Configurer un seuil',
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
    if (value) {
      // Enabling notifications - request permission first
      final permissionService = PermissionService();
      final granted = await permissionService.requestNotificationPermission();

      if (!granted) {
        // Permission denied
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Permission refusée. Activez les notifications dans les paramètres Android.',
              ),
              duration: Duration(seconds: 4),
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
          const SnackBar(
            content: Text('Notifications activées avec succès'),
            duration: Duration(seconds: 2),
            backgroundColor: Colors.green,
          ),
        );
      }
    } else {
      // Disabling notifications - no permission needed
      ref.read(notificationSettingsProvider.notifier).setEnabled(false);

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Notifications désactivées'),
            duration: Duration(seconds: 2),
          ),
        );
      }
    }
  }

  Future<void> _testNow(BuildContext context, WidgetRef ref) async {
    final stoveListAsync = ref.read(stoveListProvider);

    stoveListAsync.when(
      data: (stoves) async {
        if (stoves.isEmpty) {
          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Aucun poêle configuré'),
                duration: Duration(seconds: 2),
              ),
            );
          }
          return;
        }

        // Show loading indicator
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Exécution du test en cours...'),
              duration: Duration(seconds: 2),
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
                  success
                      ? 'Test réussi ! Vérifiez les notifications.'
                      : 'Échec du test. Vérifiez les logs.',
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
                content: Text('Erreur : $e'),
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
            const SnackBar(
              content: Text('Chargement de la liste des poêles...'),
              duration: Duration(seconds: 2),
            ),
          );
        }
      },
      error: (error, stack) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Erreur : $error'),
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
  ) {
    // Get current threshold or defaults
    final currentThreshold = notifSettings.fieldThresholds[field.fieldName];
    double minValue = (currentThreshold?['min'] as num?)?.toDouble() ?? 0.0;
    double maxValue = (currentThreshold?['max'] as num?)?.toDouble() ?? 100.0;

    // Determine sensible ranges based on field type
    double rangeMin = 0.0;
    double rangeMax = 100.0;
    int divisions = 100;

    if (field.fieldName.contains('Temperature')) {
      rangeMin = 0.0;
      rangeMax = 100.0;
      divisions = 100;
    } else if (field.fieldName.contains('Fan') || field.fieldName.contains('Motor')) {
      rangeMin = 0.0;
      rangeMax = 5000.0;
      divisions = 50;
    } else if (field.fieldName.contains('Pressure')) {
      rangeMin = -100.0;
      rangeMax = 100.0;
      divisions = 40;
    } else if (field.fieldName.contains('Service')) {
      rangeMin = 0.0;
      rangeMax = 1000.0;
      divisions = 100;
    }

    showDialog(
      context: context,
      builder: (context) => _ThresholdDialog(
        field: field,
        initialMin: minValue,
        initialMax: maxValue,
        rangeMin: rangeMin,
        rangeMax: rangeMax,
        divisions: divisions,
        onSave: (min, max) {
          ref
              .read(notificationSettingsProvider.notifier)
              .setFieldThreshold(field.fieldName, min, max);
        },
        onRemove: () {
          ref
              .read(notificationSettingsProvider.notifier)
              .removeFieldThreshold(field.fieldName);
        },
      ),
    );
  }
}

/// Threshold configuration dialog
class _ThresholdDialog extends StatefulWidget {
  final StoveFieldDescriptor field;
  final double initialMin;
  final double initialMax;
  final double rangeMin;
  final double rangeMax;
  final int divisions;
  final void Function(double min, double max) onSave;
  final VoidCallback onRemove;

  const _ThresholdDialog({
    required this.field,
    required this.initialMin,
    required this.initialMax,
    required this.rangeMin,
    required this.rangeMax,
    required this.divisions,
    required this.onSave,
    required this.onRemove,
  });

  @override
  State<_ThresholdDialog> createState() => _ThresholdDialogState();
}

class _ThresholdDialogState extends State<_ThresholdDialog> {
  late double _minValue;
  late double _maxValue;

  @override
  void initState() {
    super.initState();
    _minValue = widget.initialMin;
    _maxValue = widget.initialMax;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Seuil pour ${widget.field.displayName}'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.field.description,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.textSecondary,
                ),
          ),
          const SizedBox(height: 16),
          Text(
            'Notifier si la valeur sort de cette plage :',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(height: 16),
          Text('Minimum : ${_minValue.toStringAsFixed(1)}'),
          Slider(
            value: _minValue,
            min: widget.rangeMin,
            max: widget.rangeMax,
            divisions: widget.divisions,
            label: _minValue.toStringAsFixed(1),
            activeColor: AppColors.primary,
            onChanged: (value) {
              setState(() {
                _minValue = value;
                if (_minValue > _maxValue) {
                  _maxValue = _minValue;
                }
              });
            },
          ),
          const SizedBox(height: 8),
          Text('Maximum : ${_maxValue.toStringAsFixed(1)}'),
          Slider(
            value: _maxValue,
            min: widget.rangeMin,
            max: widget.rangeMax,
            divisions: widget.divisions,
            label: _maxValue.toStringAsFixed(1),
            activeColor: AppColors.primary,
            onChanged: (value) {
              setState(() {
                _maxValue = value;
                if (_maxValue < _minValue) {
                  _minValue = _maxValue;
                }
              });
            },
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            widget.onRemove();
            Navigator.of(context).pop();
          },
          child: const Text('Supprimer seuil'),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Annuler'),
        ),
        FilledButton(
          onPressed: () {
            widget.onSave(_minValue, _maxValue);
            Navigator.of(context).pop();
          },
          style: FilledButton.styleFrom(
            backgroundColor: AppColors.primary,
          ),
          child: const Text('Enregistrer'),
        ),
      ],
    );
  }
}
