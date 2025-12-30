import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';

/// Configuration panel for heating time schedules
///
/// Allows enabling/disabling schedules and setting setback temperature
class HeatingTimesConfig extends StatefulWidget {
  final bool active;
  final int setBackTemperature; // 14-30°C
  final ValueChanged<bool>? onActiveChanged;
  final ValueChanged<int>? onSetBackTempChanged;
  final bool enabled;

  const HeatingTimesConfig({
    super.key,
    required this.active,
    required this.setBackTemperature,
    this.onActiveChanged,
    this.onSetBackTempChanged,
    this.enabled = true,
  });

  @override
  State<HeatingTimesConfig> createState() => _HeatingTimesConfigState();
}

class _HeatingTimesConfigState extends State<HeatingTimesConfig> {
  late int _currentTemp;

  @override
  void initState() {
    super.initState();
    _currentTemp = widget.setBackTemperature;
  }

  @override
  void didUpdateWidget(HeatingTimesConfig oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.setBackTemperature != oldWidget.setBackTemperature) {
      _currentTemp = widget.setBackTemperature;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Activation switch
            SwitchListTile(
              title: const Text(
                'Plages horaires',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                widget.active
                    ? 'Actif en mode confort'
                    : 'Inactif',
              ),
              value: widget.active,
              secondary: Icon(
                Icons.schedule,
                color: widget.active ? AppColors.primary : AppColors.textSecondary,
              ),
              onChanged: widget.enabled ? widget.onActiveChanged : null,
              contentPadding: EdgeInsets.zero,
            ),

            if (widget.active) ...[
              const SizedBox(height: 16),
              const Divider(),
              const SizedBox(height: 16),

              // Setback temperature slider
              Text(
                'Température de maintien',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(height: 8),

              Row(
                children: [
                  // Decrement button
                  IconButton(
                    icon: const Icon(Icons.remove_circle_outline),
                    iconSize: 28,
                    onPressed: widget.enabled && _currentTemp > 14
                        ? () {
                            final newTemp = _currentTemp - 1;
                            setState(() => _currentTemp = newTemp);
                            widget.onSetBackTempChanged?.call(newTemp);
                          }
                        : null,
                    color: widget.enabled
                        ? AppColors.primary
                        : AppColors.textSecondary,
                  ),

                  // Slider
                  Expanded(
                    child: Slider(
                      value: _currentTemp.toDouble(),
                      min: 14,
                      max: 30,
                      divisions: 16,
                      label: '$_currentTemp°C',
                      onChanged: widget.enabled
                          ? (value) {
                              setState(() => _currentTemp = value.round());
                            }
                          : null,
                      onChangeEnd: widget.enabled
                          ? (value) {
                              widget.onSetBackTempChanged?.call(value.round());
                            }
                          : null,
                    ),
                  ),

                  // Increment button
                  IconButton(
                    icon: const Icon(Icons.add_circle_outline),
                    iconSize: 28,
                    onPressed: widget.enabled && _currentTemp < 30
                        ? () {
                            final newTemp = _currentTemp + 1;
                            setState(() => _currentTemp = newTemp);
                            widget.onSetBackTempChanged?.call(newTemp);
                          }
                        : null,
                    color: widget.enabled
                        ? AppColors.primary
                        : AppColors.textSecondary,
                  ),
                ],
              ),

              // Current temperature display
              Center(
                child: Text(
                  '$_currentTemp°C',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: widget.enabled
                            ? AppColors.secondary
                            : AppColors.textSecondary,
                      ),
                ),
              ),

            ],

            if (!widget.enabled) ...[
              const SizedBox(height: 8),
              Text(
                'Allumez le poêle pour modifier les plages horaires',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.textSecondary,
                      fontStyle: FontStyle.italic,
                    ),
                textAlign: TextAlign.center,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
