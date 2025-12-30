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

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Puissance de chauffe',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
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
