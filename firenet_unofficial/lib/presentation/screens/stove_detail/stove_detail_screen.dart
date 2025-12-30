import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../theme/app_colors.dart';
import '../../widgets/common/loading_indicator.dart';
import '../../widgets/common/error_widget.dart';
import '../../widgets/status/status_badge.dart';
import '../../widgets/controls/power_toggle.dart';
import '../../widgets/controls/temperature_slider.dart';
import '../../widgets/controls/mode_selector.dart';
import '../../widgets/controls/heating_times_config.dart';
import '../../widgets/controls/eco_mode_toggle.dart';
import '../../widgets/controls/heating_power_control.dart';
import '../../widgets/controls/room_power_request_control.dart';
import '../../widgets/controls/frost_protection_control.dart';
import '../../widgets/controls/convection_fans_control.dart';
import '../../widgets/controls/temperature_offset_control.dart';
import '../../widgets/controls/bake_temperature_control.dart';
import '../../widgets/info/sensor_info_panel.dart';
import '../../widgets/info/outputs_info_panel.dart';
import '../../widgets/info/statistics_panel.dart';
import '../../widgets/info/safety_status_panel.dart';
import '../../widgets/info/error_warning_panel.dart';
import '../../../providers/stove_providers.dart';
import '../../../providers/polling_provider.dart';

/// Stove detail and control screen
class StoveDetailScreen extends ConsumerWidget {
  final String stoveId;
  final String stoveName;

  const StoveDetailScreen({
    super.key,
    required this.stoveId,
    required this.stoveName,
  });

  Future<void> _handleRefresh(WidgetRef ref) async {
    await ref.read(stoveStateProvider(stoveId).notifier).refreshState();
  }

  Future<void> _handlePowerChange(WidgetRef ref, bool newValue) async {
    try {
      await ref.read(stoveStateProvider(stoveId).notifier).setPower(newValue);
    } catch (e) {
      // Error will be shown via the state provider
    }
  }

  Future<void> _handleTemperatureChange(WidgetRef ref, int temperature) async {
    try {
      await ref.read(stoveStateProvider(stoveId).notifier).setTemperature(temperature);
    } catch (e) {
      // Error will be shown via the state provider
    }
  }

  Future<void> _handleModeChange(WidgetRef ref, int mode) async {
    final currentState = ref.read(stoveStateProvider(stoveId)).valueOrNull;
    if (currentState == null) return;

    final updatedControls = currentState.controls.copyWith(
      operatingMode: mode,
    );

    await ref.read(stoveStateProvider(stoveId).notifier)
       .updateControls(updatedControls);
  }

  Future<void> _handleHeatingTimesActiveChanged(WidgetRef ref, bool active) async {
    final currentState = ref.read(stoveStateProvider(stoveId)).valueOrNull;
    if (currentState == null) return;

    final updatedControls = currentState.controls.copyWith(
      heatingTimesActiveForComfort: active,
    );

    await ref.read(stoveStateProvider(stoveId).notifier)
       .updateControls(updatedControls);
  }

  Future<void> _handleSetBackTempChanged(WidgetRef ref, int temperature) async {
    final currentState = ref.read(stoveStateProvider(stoveId)).valueOrNull;
    if (currentState == null) return;

    final updatedControls = currentState.controls.copyWith(
      setBackTemperature: temperature.toString(), // STRING!
    );

    await ref.read(stoveStateProvider(stoveId).notifier)
       .updateControls(updatedControls);
  }

  // Advanced controls handlers

  Future<void> _handleEcoModeChange(WidgetRef ref, bool active) async {
    final currentState = ref.read(stoveStateProvider(stoveId)).valueOrNull;
    if (currentState == null) return;

    final updatedControls = currentState.controls.copyWith(ecoMode: active);
    await ref.read(stoveStateProvider(stoveId).notifier).updateControls(updatedControls);
  }

  Future<void> _handleHeatingPowerChange(WidgetRef ref, int power) async {
    final currentState = ref.read(stoveStateProvider(stoveId)).valueOrNull;
    if (currentState == null) return;

    final updatedControls = currentState.controls.copyWith(heatingPower: power);
    await ref.read(stoveStateProvider(stoveId).notifier).updateControls(updatedControls);
  }

  Future<void> _handleRoomPowerRequestChange(WidgetRef ref, int level) async {
    final currentState = ref.read(stoveStateProvider(stoveId)).valueOrNull;
    if (currentState == null) return;

    final updatedControls = currentState.controls.copyWith(roomPowerRequest: level);
    await ref.read(stoveStateProvider(stoveId).notifier).updateControls(updatedControls);
  }

  Future<void> _handleFrostProtectionActiveChange(WidgetRef ref, bool active) async {
    final currentState = ref.read(stoveStateProvider(stoveId)).valueOrNull;
    if (currentState == null) return;

    final updatedControls = currentState.controls.copyWith(frostProtectionActive: active);
    await ref.read(stoveStateProvider(stoveId).notifier).updateControls(updatedControls);
  }

  Future<void> _handleFrostProtectionTempChange(WidgetRef ref, int temperature) async {
    final currentState = ref.read(stoveStateProvider(stoveId)).valueOrNull;
    if (currentState == null) return;

    final updatedControls = currentState.controls.copyWith(
      frostProtectionTemperature: temperature.toString(), // STRING!
    );
    await ref.read(stoveStateProvider(stoveId).notifier).updateControls(updatedControls);
  }

  Future<void> _handleConvectionFansChange(WidgetRef ref, ConvectionFanSettings settings) async {
    final currentState = ref.read(stoveStateProvider(stoveId)).valueOrNull;
    if (currentState == null) return;

    final updatedControls = currentState.controls.copyWith(
      convectionFan1Active: settings.fan1Active,
      convectionFan1Level: settings.fan1Level,
      convectionFan1Area: settings.fan1Area,
      convectionFan2Active: settings.fan2Active,
      convectionFan2Level: settings.fan2Level,
      convectionFan2Area: settings.fan2Area,
    );
    await ref.read(stoveStateProvider(stoveId).notifier).updateControls(updatedControls);
  }

  Future<void> _handleTemperatureOffsetChange(WidgetRef ref, int offset) async {
    final currentState = ref.read(stoveStateProvider(stoveId)).valueOrNull;
    if (currentState == null) return;

    final updatedControls = currentState.controls.copyWith(
      temperatureOffset: offset.toString(), // STRING!
    );
    await ref.read(stoveStateProvider(stoveId).notifier).updateControls(updatedControls);
  }

  Future<void> _handleBakeTemperatureChange(WidgetRef ref, int temperature) async {
    final currentState = ref.read(stoveStateProvider(stoveId)).valueOrNull;
    if (currentState == null) return;

    final updatedControls = currentState.controls.copyWith(
      bakeTemperature: temperature.toString(), // STRING!
    );
    await ref.read(stoveStateProvider(stoveId).notifier).updateControls(updatedControls);
  }

  Future<void> _handleScheduleChange(WidgetRef ref, Map<String, String> schedule) async {
    final currentState = ref.read(stoveStateProvider(stoveId)).valueOrNull;
    if (currentState == null) return;

    final updatedControls = currentState.controls.copyWith(
      heatingTimeMon1: schedule['Mon1'] ?? "00000000",
      heatingTimeMon2: schedule['Mon2'] ?? "00000000",
      heatingTimeTue1: schedule['Tue1'] ?? "00000000",
      heatingTimeTue2: schedule['Tue2'] ?? "00000000",
      heatingTimeWed1: schedule['Wed1'] ?? "00000000",
      heatingTimeWed2: schedule['Wed2'] ?? "00000000",
      heatingTimeThu1: schedule['Thu1'] ?? "00000000",
      heatingTimeThu2: schedule['Thu2'] ?? "00000000",
      heatingTimeFri1: schedule['Fri1'] ?? "00000000",
      heatingTimeFri2: schedule['Fri2'] ?? "00000000",
      heatingTimeSat1: schedule['Sat1'] ?? "00000000",
      heatingTimeSat2: schedule['Sat2'] ?? "00000000",
      heatingTimeSun1: schedule['Sun1'] ?? "00000000",
      heatingTimeSun2: schedule['Sun2'] ?? "00000000",
    );
    await ref.read(stoveStateProvider(stoveId).notifier).updateControls(updatedControls);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Activate automatic polling for this stove
    ref.watch(stovePollingProvider(stoveId));

    // Watch the stove state
    final stoveState = ref.watch(stoveStateProvider(stoveId));

    return Scaffold(
      appBar: AppBar(
        title: Text(stoveName),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => _handleRefresh(ref),
            tooltip: 'Actualiser',
          ),
        ],
      ),
      body: stoveState.when(
        loading: () => const LoadingIndicator(
          message: 'Chargement des données du poêle...',
        ),
        error: (error, stackTrace) => AppErrorWidget(
          errorMessage: error.toString(),
          onRetry: () => _handleRefresh(ref),
        ),
        data: (data) => RefreshIndicator(
          onRefresh: () => _handleRefresh(ref),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Header with status and temperatures
                  _buildHeader(context, data),
                  const SizedBox(height: 16),
                  const Divider(),
                  const SizedBox(height: 16),

                  // Quick controls section
                  Text(
                    'Contrôles Rapides',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 16),

                  // Power toggle
                  PowerToggle(
                    isOn: data.controls.onOff,
                    onChanged: (value) => _handlePowerChange(ref, value),
                    enabled: data.isOnline,
                  ),
                  const SizedBox(height: 16),

                  // Temperature control (Comfort mode) OR Power control (Auto/Manual mode)
                  if (data.controls.operatingMode == 2) ...[
                    // Comfort mode: Temperature slider
                    TemperatureSlider(
                      value: int.tryParse(data.controls.targetTemperature) ?? 20,
                      onChanged: null, // Only update on change end
                      onChangeEnd: (value) => _handleTemperatureChange(ref, value),
                      enabled: data.controls.onOff && data.isOnline,
                    ),
                  ] else ...[
                    // Auto/Manual mode: Heating power slider
                    HeatingPowerControl(
                      power: data.controls.heatingPower,
                      onChangeEnd: (value) => _handleHeatingPowerChange(ref, value),
                      enabled: data.controls.onOff && data.isOnline,
                    ),
                  ],
                  const SizedBox(height: 16),
                  const Divider(),
                  const SizedBox(height: 16),

                  // Operating mode selector
                  OperatingModeSelector(
                    currentMode: data.controls.operatingMode,
                    onChanged: (mode) => _handleModeChange(ref, mode),
                    enabled: data.controls.onOff && data.isOnline,
                  ),
                  const SizedBox(height: 16),
                  const Divider(),
                  const SizedBox(height: 16),

                  // Advanced controls section
                  Text(
                    'Contrôles Avancés',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 16),

                  EcoModeToggle(
                    isActive: data.controls.ecoMode,
                    onChanged: (value) => _handleEcoModeChange(ref, value),
                    enabled: data.controls.onOff && data.isOnline,
                  ),
                  const SizedBox(height: 8),

                  RoomPowerRequestControl(
                    level: data.controls.roomPowerRequest,
                    onChanged: (value) => _handleRoomPowerRequestChange(ref, value),
                    enabled: data.controls.onOff && data.isOnline,
                  ),
                  const SizedBox(height: 8),

                  ConvectionFansControl(
                    fan1Active: data.controls.convectionFan1Active,
                    fan1Level: data.controls.convectionFan1Level,
                    fan1Area: data.controls.convectionFan1Area,
                    fan2Active: data.controls.convectionFan2Active,
                    fan2Level: data.controls.convectionFan2Level,
                    fan2Area: data.controls.convectionFan2Area,
                    onChanged: (settings) => _handleConvectionFansChange(ref, settings),
                    enabled: data.controls.onOff && data.isOnline,
                  ),
                  const SizedBox(height: 8),

                  FrostProtectionControl(
                    active: data.controls.frostProtectionActive,
                    temperature: int.tryParse(data.controls.frostProtectionTemperature) ?? 4,
                    onActiveChanged: (value) => _handleFrostProtectionActiveChange(ref, value),
                    onTemperatureChanged: (value) => _handleFrostProtectionTempChange(ref, value),
                    enabled: data.controls.onOff && data.isOnline,
                  ),
                  const SizedBox(height: 8),

                  TemperatureOffsetControl(
                    offset: int.tryParse(data.controls.temperatureOffset) ?? 0,
                    onChangeEnd: (value) => _handleTemperatureOffsetChange(ref, value),
                    enabled: data.controls.onOff && data.isOnline,
                  ),
                  const SizedBox(height: 8),

                  // Bake temperature control (conditional - only if oven available)
                  if (data.sensors.inputBakeTemperature != "1024") ...[
                    BakeTemperatureControl(
                      temperature: int.tryParse(data.controls.bakeTemperature) ?? 180,
                      onChangeEnd: (value) => _handleBakeTemperatureChange(ref, value),
                      enabled: data.controls.onOff && data.isOnline,
                    ),
                    const SizedBox(height: 8),
                  ],

                  const Divider(),
                  const SizedBox(height: 16),

                  // Information panels (expandable)
                  // Error/Warning panel (conditional - visible only if active)
                  if (data.sensors.statusError != 0 || data.sensors.statusWarning != 0) ...[
                    ErrorWarningPanel(
                      errorCode: data.sensors.statusError,
                      subErrorCode: data.sensors.statusSubError,
                      warningCode: data.sensors.statusWarning,
                    ),
                    const SizedBox(height: 8),
                  ],

                  SafetyStatusPanel(sensors: data.sensors),
                  const SizedBox(height: 8),

                  SensorInfoPanel(sensors: data.sensors),
                  const SizedBox(height: 8),

                  OutputsInfoPanel(sensors: data.sensors),
                  const SizedBox(height: 8),

                  StatisticsPanel(
                    sensors: data.sensors,
                    stoveType: data.stoveType,
                    oem: data.oem,
                  ),
                  const SizedBox(height: 16),
                  const Divider(),
                  const SizedBox(height: 16),

                  // Heating times configuration with detailed schedule editor
                  HeatingTimesConfig(
                    active: data.controls.heatingTimesActiveForComfort,
                    setBackTemperature: int.tryParse(data.controls.setBackTemperature) ?? 16,
                    schedule: {
                      'Mon1': data.controls.heatingTimeMon1,
                      'Mon2': data.controls.heatingTimeMon2,
                      'Tue1': data.controls.heatingTimeTue1,
                      'Tue2': data.controls.heatingTimeTue2,
                      'Wed1': data.controls.heatingTimeWed1,
                      'Wed2': data.controls.heatingTimeWed2,
                      'Thu1': data.controls.heatingTimeThu1,
                      'Thu2': data.controls.heatingTimeThu2,
                      'Fri1': data.controls.heatingTimeFri1,
                      'Fri2': data.controls.heatingTimeFri2,
                      'Sat1': data.controls.heatingTimeSat1,
                      'Sat2': data.controls.heatingTimeSat2,
                      'Sun1': data.controls.heatingTimeSun1,
                      'Sun2': data.controls.heatingTimeSun2,
                    },
                    onActiveChanged: (value) => _handleHeatingTimesActiveChanged(ref, value),
                    onSetBackTempChanged: (value) => _handleSetBackTempChanged(ref, value),
                    onScheduleChanged: (schedule) => _handleScheduleChange(ref, schedule),
                    enabled: data.controls.onOff && data.isOnline,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, dynamic data) {
    final statusCategory = data.sensors.statusCategory;
    final currentTemp = double.tryParse(data.sensors.inputRoomTemperature) ?? 0.0;
    final targetTemp = int.tryParse(data.controls.targetTemperature) ?? 20;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Status badge
            StatusBadge(
              category: statusCategory,
              statusText: data.sensors.statusText,
              compact: false,
            ),
            const SizedBox(height: 16),

            // Temperature display
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Column(
                    children: [
                      Text(
                        'Température Actuelle',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: AppColors.textSecondary,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${currentTemp.toStringAsFixed(1)}°C',
                        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.primary,
                            ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Icon(
                  Icons.arrow_forward,
                  color: AppColors.textSecondary,
                  size: 24,
                ),
                const SizedBox(width: 16),
                Flexible(
                  child: Column(
                    children: [
                      Text(
                        'Température Cible',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: AppColors.textSecondary,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '$targetTemp°C',
                        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.secondary,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Connection status
            if (!data.isOnline) ...[
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: AppColors.statusWarning.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: AppColors.statusWarning,
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.cloud_off,
                      color: AppColors.statusWarning,
                      size: 16,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Hors ligne depuis ${data.lastSeenMinutes} min',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppColors.statusWarning,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
              ),
            ] else ...[
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.cloud_done,
                    color: AppColors.statusActive,
                    size: 16,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'En ligne',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.statusActive,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
