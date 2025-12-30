import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';

/// Temperature slider widget for setting target temperature (16-30°C)
class TemperatureSlider extends StatefulWidget {
  final int value;
  final ValueChanged<int>? onChanged;
  final ValueChanged<int>? onChangeEnd;
  final bool enabled;

  const TemperatureSlider({
    super.key,
    required this.value,
    this.onChanged,
    this.onChangeEnd,
    this.enabled = true,
  });

  @override
  State<TemperatureSlider> createState() => _TemperatureSliderState();
}

class _TemperatureSliderState extends State<TemperatureSlider> {
  late int _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.value;
  }

  @override
  void didUpdateWidget(TemperatureSlider oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != oldWidget.value) {
      _currentValue = widget.value;
    }
  }

  void _handleIncrement() {
    if (_currentValue < 30) {
      final newValue = _currentValue + 1;
      setState(() => _currentValue = newValue);
      widget.onChanged?.call(newValue);
      widget.onChangeEnd?.call(newValue);
    }
  }

  void _handleDecrement() {
    if (_currentValue > 16) {
      final newValue = _currentValue - 1;
      setState(() => _currentValue = newValue);
      widget.onChanged?.call(newValue);
      widget.onChangeEnd?.call(newValue);
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
            Text(
              'Température Cible',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                // Decrement button
                IconButton(
                  icon: const Icon(Icons.remove_circle_outline),
                  iconSize: 32,
                  onPressed: widget.enabled && _currentValue > 16
                      ? _handleDecrement
                      : null,
                  color: widget.enabled
                      ? AppColors.primary
                      : AppColors.textSecondary,
                ),

                // Slider
                Expanded(
                  child: Slider(
                    value: _currentValue.toDouble(),
                    min: 16,
                    max: 30,
                    divisions: 14,
                    label: '$_currentValue°C',
                    onChanged: widget.enabled
                        ? (value) {
                            setState(() => _currentValue = value.round());
                            widget.onChanged?.call(value.round());
                          }
                        : null,
                    onChangeEnd: widget.enabled
                        ? (value) {
                            widget.onChangeEnd?.call(value.round());
                          }
                        : null,
                  ),
                ),

                // Increment button
                IconButton(
                  icon: const Icon(Icons.add_circle_outline),
                  iconSize: 32,
                  onPressed: widget.enabled && _currentValue < 30
                      ? _handleIncrement
                      : null,
                  color: widget.enabled
                      ? AppColors.primary
                      : AppColors.textSecondary,
                ),
              ],
            ),
            const SizedBox(height: 8),

            // Large temperature display
            Center(
              child: Text(
                '$_currentValue°C',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: widget.enabled
                          ? AppColors.primary
                          : AppColors.textSecondary,
                    ),
              ),
            ),

            // Helper text
            if (!widget.enabled) ...[
              const SizedBox(height: 8),
              Center(
                child: Text(
                  'Allumez le poêle pour régler la température',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textSecondary,
                        fontStyle: FontStyle.italic,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
