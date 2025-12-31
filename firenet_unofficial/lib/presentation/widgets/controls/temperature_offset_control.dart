import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import '../../theme/app_colors.dart';

/// Control for temperature calibration offset (-3 to +3°C)
class TemperatureOffsetControl extends StatefulWidget {
  final int offset; // -3 to +3
  final ValueChanged<int>? onChanged;
  final ValueChanged<int>? onChangeEnd;
  final bool enabled;

  const TemperatureOffsetControl({
    super.key,
    required this.offset,
    this.onChanged,
    this.onChangeEnd,
    this.enabled = true,
  });

  @override
  State<TemperatureOffsetControl> createState() => _TemperatureOffsetControlState();
}

class _TemperatureOffsetControlState extends State<TemperatureOffsetControl> {
  late int _currentOffset;

  @override
  void initState() {
    super.initState();
    _currentOffset = widget.offset;
  }

  @override
  void didUpdateWidget(TemperatureOffsetControl oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.offset != oldWidget.offset) {
      _currentOffset = widget.offset;
    }
  }

  void _incrementOffset() {
    if (_currentOffset < 3) {
      setState(() {
        _currentOffset++;
      });
      widget.onChangeEnd?.call(_currentOffset);
    }
  }

  void _decrementOffset() {
    if (_currentOffset > -3) {
      setState(() {
        _currentOffset--;
      });
      widget.onChangeEnd?.call(_currentOffset);
    }
  }

  String _formatOffset(int offset) {
    if (offset > 0) {
      return '+$offset°C';
    } else if (offset < 0) {
      return '$offset°C';
    } else {
      return '0°C';
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
            Text(
              l10n.temperatureCalibration,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const SizedBox(height: 4),
            Text(
              l10n.temperatureCalibrationDescription,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.textSecondary,
                  ),
            ),
            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.remove_circle_outline),
                  onPressed: widget.enabled ? _decrementOffset : null,
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
                    color: _currentOffset == 0
                        ? AppColors.statusActive.withOpacity(0.1)
                        : AppColors.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: _currentOffset == 0
                          ? AppColors.statusActive.withOpacity(0.3)
                          : AppColors.primary.withOpacity(0.3),
                      width: 2,
                    ),
                  ),
                  child: Text(
                    _formatOffset(_currentOffset),
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: _currentOffset == 0
                              ? AppColors.statusActive
                              : AppColors.primary,
                        ),
                  ),
                ),
                const SizedBox(width: 16),
                IconButton(
                  icon: const Icon(Icons.add_circle_outline),
                  onPressed: widget.enabled ? _incrementOffset : null,
                  iconSize: 32,
                  color: AppColors.secondary,
                ),
              ],
            ),

            const SizedBox(height: 16),

            Slider(
              value: _currentOffset.toDouble(),
              min: -3,
              max: 3,
              divisions: 6,
              label: _formatOffset(_currentOffset),
              onChanged: widget.enabled
                  ? (value) {
                      setState(() {
                        _currentOffset = value.round();
                      });
                      widget.onChanged?.call(_currentOffset);
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

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  l10n.minOffset,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                ),
                Text(
                  l10n.zeroOffset,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.statusActive,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Text(
                  l10n.maxOffset,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                ),
              ],
            ),

            if (!widget.enabled) ...[
              const SizedBox(height: 12),
              Text(
                l10n.turnOnStoveToCalibrate,
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
