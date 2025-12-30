import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';

/// Control for heating power (0-100%)
class HeatingPowerControl extends StatefulWidget {
  final int power; // 0-100
  final ValueChanged<int>? onChanged;
  final ValueChanged<int>? onChangeEnd;
  final bool enabled;

  const HeatingPowerControl({
    super.key,
    required this.power,
    this.onChanged,
    this.onChangeEnd,
    this.enabled = true,
  });

  @override
  State<HeatingPowerControl> createState() => _HeatingPowerControlState();
}

class _HeatingPowerControlState extends State<HeatingPowerControl> {
  late int _currentPower;

  @override
  void initState() {
    super.initState();
    _currentPower = widget.power;
  }

  @override
  void didUpdateWidget(HeatingPowerControl oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.power != oldWidget.power) {
      _currentPower = widget.power;
    }
  }

  void _incrementPower() {
    if (_currentPower < 100) {
      setState(() {
        _currentPower++;
      });
      widget.onChangeEnd?.call(_currentPower);
    }
  }

  void _decrementPower() {
    if (_currentPower > 0) {
      setState(() {
        _currentPower--;
      });
      widget.onChangeEnd?.call(_currentPower);
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Puissance de chauffe',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove_circle_outline),
                      onPressed: widget.enabled ? _decrementPower : null,
                      iconSize: 28,
                      color: AppColors.secondary,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        '$_currentPower%',
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.primary,
                            ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add_circle_outline),
                      onPressed: widget.enabled ? _incrementPower : null,
                      iconSize: 28,
                      color: AppColors.secondary,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Linear progress indicator
            LinearProgressIndicator(
              value: _currentPower / 100,
              backgroundColor: AppColors.textSecondary.withOpacity(0.2),
              color: AppColors.primary,
              minHeight: 8,
            ),
            const SizedBox(height: 16),

            // Slider
            Slider(
              value: _currentPower.toDouble(),
              min: 0,
              max: 100,
              divisions: 100,
              label: '$_currentPower%',
              onChanged: widget.enabled
                  ? (value) {
                      setState(() {
                        _currentPower = value.round();
                      });
                      widget.onChanged?.call(_currentPower);
                    }
                  : null,
              onChangeEnd: widget.enabled
                  ? (value) {
                      widget.onChangeEnd?.call(value.round());
                    }
                  : null,
              activeColor: AppColors.primary,
              inactiveColor: AppColors.textSecondary.withOpacity(0.3),
            ),
            const SizedBox(height: 8),

            // Labels
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Min (0%)',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                ),
                Text(
                  'Max (100%)',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                ),
              ],
            ),

            if (!widget.enabled) ...[
              const SizedBox(height: 12),
              Text(
                'Allumez le poêle pour modifier la puissance',
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
