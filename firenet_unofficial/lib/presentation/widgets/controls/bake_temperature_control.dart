import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import '../../theme/app_colors.dart';

/// Control for bake oven temperature (100-250°C)
/// Only shown if stove has an oven (inputBakeTemperature != "1024")
class BakeTemperatureControl extends StatefulWidget {
  final int temperature; // Typical range: 100-250°C
  final ValueChanged<int>? onChanged;
  final ValueChanged<int>? onChangeEnd;
  final bool enabled;

  const BakeTemperatureControl({
    super.key,
    required this.temperature,
    this.onChanged,
    this.onChangeEnd,
    this.enabled = true,
  });

  @override
  State<BakeTemperatureControl> createState() => _BakeTemperatureControlState();
}

class _BakeTemperatureControlState extends State<BakeTemperatureControl> {
  late int _currentTemp;

  @override
  void initState() {
    super.initState();
    _currentTemp = widget.temperature;
  }

  @override
  void didUpdateWidget(BakeTemperatureControl oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.temperature != oldWidget.temperature) {
      _currentTemp = widget.temperature;
    }
  }

  void _incrementTemp() {
    if (_currentTemp < 250) {
      setState(() {
        _currentTemp += 5; // Increment by 5°C
      });
      widget.onChangeEnd?.call(_currentTemp);
    }
  }

  void _decrementTemp() {
    if (_currentTemp > 100) {
      setState(() {
        _currentTemp -= 5; // Decrement by 5°C
      });
      widget.onChangeEnd?.call(_currentTemp);
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.bakery_dining, color: AppColors.secondary),
                        const SizedBox(width: 8),
                        Text(
                          l10n.bakeTemperature,
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      l10n.bakeTemperatureDescription,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppColors.textSecondary,
                          ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove_circle_outline),
                      onPressed: widget.enabled ? _decrementTemp : null,
                      iconSize: 28,
                      color: AppColors.secondary,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.secondary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        '$_currentTemp°C',
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.secondary,
                            ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add_circle_outline),
                      onPressed: widget.enabled ? _incrementTemp : null,
                      iconSize: 28,
                      color: AppColors.secondary,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),

            Slider(
              value: _currentTemp.toDouble(),
              min: 100,
              max: 250,
              divisions: 30, // Steps of 5°C
              label: '$_currentTemp°C',
              onChanged: widget.enabled
                  ? (value) {
                      setState(() {
                        _currentTemp = (value / 5).round() * 5; // Round to nearest 5
                      });
                      widget.onChanged?.call(_currentTemp);
                    }
                  : null,
              onChangeEnd: widget.enabled
                  ? (value) {
                      widget.onChangeEnd?.call((value / 5).round() * 5);
                    }
                  : null,
              activeColor: AppColors.secondary,
              inactiveColor: AppColors.textSecondary.withOpacity(0.3),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  l10n.minBakeTemp,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                ),
                Text(
                  l10n.maxBakeTemp,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                ),
              ],
            ),

            if (!widget.enabled) ...[
              const SizedBox(height: 12),
              Text(
                l10n.turnOnStoveToAdjustBakeTemp,
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
