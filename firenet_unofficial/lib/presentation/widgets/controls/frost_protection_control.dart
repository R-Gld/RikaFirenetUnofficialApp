import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import '../../theme/app_colors.dart';

/// Control for frost protection with activation switch and temperature threshold
class FrostProtectionControl extends StatefulWidget {
  final bool active;
  final int temperature; // 4-10°C
  final ValueChanged<bool>? onActiveChanged;
  final ValueChanged<int>? onTemperatureChanged;
  final bool enabled;

  const FrostProtectionControl({
    super.key,
    required this.active,
    required this.temperature,
    this.onActiveChanged,
    this.onTemperatureChanged,
    this.enabled = true,
  });

  @override
  State<FrostProtectionControl> createState() => _FrostProtectionControlState();
}

class _FrostProtectionControlState extends State<FrostProtectionControl> {
  late int _currentTemp;

  @override
  void initState() {
    super.initState();
    _currentTemp = widget.temperature;
  }

  @override
  void didUpdateWidget(FrostProtectionControl oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.temperature != oldWidget.temperature) {
      _currentTemp = widget.temperature;
    }
  }

  void _incrementTemp() {
    if (_currentTemp < 10) {
      setState(() {
        _currentTemp++;
      });
      widget.onTemperatureChanged?.call(_currentTemp);
    }
  }

  void _decrementTemp() {
    if (_currentTemp > 4) {
      setState(() {
        _currentTemp--;
      });
      widget.onTemperatureChanged?.call(_currentTemp);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SwitchListTile(
              title: Text(
                l10n.frostProtection,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                widget.active
                    ? l10n.frostProtectionActive(_currentTemp)
                    : l10n.frostProtectionInactive,
                style: TextStyle(
                  color: widget.active ? AppColors.statusActive : AppColors.textSecondary,
                  fontSize: 13,
                ),
              ),
              secondary: Icon(
                Icons.ac_unit,
                color: widget.active ? AppColors.statusActive : AppColors.textSecondary,
                size: 28,
              ),
              value: widget.active,
              onChanged: widget.enabled ? widget.onActiveChanged : null,
              activeColor: AppColors.statusActive,
              contentPadding: EdgeInsets.zero,
            ),

            if (widget.active) ...[
              const Divider(height: 24),

              Text(
                l10n.triggerTemperature,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove_circle_outline),
                    onPressed: widget.enabled ? _decrementTemp : null,
                    iconSize: 32,
                    color: AppColors.secondary,
                  ),
                  const SizedBox(width: 16),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: AppColors.primary.withOpacity(0.3),
                        width: 2,
                      ),
                    ),
                    child: Text(
                      '$_currentTemp°C',
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  IconButton(
                    icon: const Icon(Icons.add_circle_outline),
                    onPressed: widget.enabled ? _incrementTemp : null,
                    iconSize: 32,
                    color: AppColors.secondary,
                  ),
                ],
              ),

              const SizedBox(height: 16),

              Slider(
                value: _currentTemp.toDouble(),
                min: 4,
                max: 10,
                divisions: 6,
                label: '$_currentTemp°C',
                onChanged: widget.enabled
                    ? (value) {
                        setState(() {
                          _currentTemp = value.round();
                        });
                      }
                    : null,
                onChangeEnd: widget.enabled
                    ? (value) {
                        widget.onTemperatureChanged?.call(value.round());
                      }
                    : null,
                activeColor: AppColors.primary,
                inactiveColor: AppColors.textSecondary.withOpacity(0.3),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    l10n.minTemp,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.textSecondary,
                        ),
                  ),
                  Text(
                    l10n.maxTemp,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.textSecondary,
                        ),
                  ),
                ],
              ),
            ],

            if (!widget.enabled) ...[
              const SizedBox(height: 12),
              Text(
                l10n.turnOnStoveToConfigureFrostProtection,
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
