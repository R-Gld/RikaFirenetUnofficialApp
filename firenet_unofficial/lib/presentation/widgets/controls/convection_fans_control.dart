import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import '../../theme/app_colors.dart';

/// Settings for both convection fans
class ConvectionFanSettings {
  final bool fan1Active;
  final int fan1Level; // 0-5
  final int fan1Area; // -30 to +30
  final bool fan2Active;
  final int fan2Level; // 0-5
  final int fan2Area; // -30 to +30

  const ConvectionFanSettings({
    required this.fan1Active,
    required this.fan1Level,
    required this.fan1Area,
    required this.fan2Active,
    required this.fan2Level,
    required this.fan2Area,
  });

  ConvectionFanSettings copyWith({
    bool? fan1Active,
    int? fan1Level,
    int? fan1Area,
    bool? fan2Active,
    int? fan2Level,
    int? fan2Area,
  }) {
    return ConvectionFanSettings(
      fan1Active: fan1Active ?? this.fan1Active,
      fan1Level: fan1Level ?? this.fan1Level,
      fan1Area: fan1Area ?? this.fan1Area,
      fan2Active: fan2Active ?? this.fan2Active,
      fan2Level: fan2Level ?? this.fan2Level,
      fan2Area: fan2Area ?? this.fan2Area,
    );
  }
}

/// Control for both convection fans with level and area settings
class ConvectionFansControl extends StatefulWidget {
  final bool fan1Active;
  final int fan1Level; // 0-5
  final int fan1Area; // -30 to +30
  final bool fan2Active;
  final int fan2Level; // 0-5
  final int fan2Area; // -30 to +30
  final ValueChanged<ConvectionFanSettings>? onChanged;
  final bool enabled;

  const ConvectionFansControl({
    super.key,
    required this.fan1Active,
    required this.fan1Level,
    required this.fan1Area,
    required this.fan2Active,
    required this.fan2Level,
    required this.fan2Area,
    this.onChanged,
    this.enabled = true,
  });

  @override
  State<ConvectionFansControl> createState() => _ConvectionFansControlState();
}

class _ConvectionFansControlState extends State<ConvectionFansControl> {
  late bool _fan1Active;
  late int _fan1Level;
  late int _fan1Area;
  late bool _fan2Active;
  late int _fan2Level;
  late int _fan2Area;

  @override
  void initState() {
    super.initState();
    _syncWithWidget();
  }

  @override
  void didUpdateWidget(ConvectionFansControl oldWidget) {
    super.didUpdateWidget(oldWidget);
    _syncWithWidget();
  }

  void _syncWithWidget() {
    _fan1Active = widget.fan1Active;
    _fan1Level = widget.fan1Level;
    _fan1Area = widget.fan1Area;
    _fan2Active = widget.fan2Active;
    _fan2Level = widget.fan2Level;
    _fan2Area = widget.fan2Area;
  }

  void _notifyChange() {
    widget.onChanged?.call(
      ConvectionFanSettings(
        fan1Active: _fan1Active,
        fan1Level: _fan1Level,
        fan1Area: _fan1Area,
        fan2Active: _fan2Active,
        fan2Level: _fan2Level,
        fan2Area: _fan2Area,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Card(
      child: ExpansionTile(
        initiallyExpanded: false,
        leading: const Icon(Icons.air, color: AppColors.secondary),
        title: Text(
          l10n.convectionFans,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          l10n.fansStatus(_fan1Active ? l10n.active : l10n.inactive, _fan2Active ? l10n.active : l10n.inactive),
          style: const TextStyle(fontSize: 13),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Fan 1
                _buildFanSection(
                  context,
                  fanNumber: 1,
                  active: _fan1Active,
                  level: _fan1Level,
                  area: _fan1Area,
                  onActiveChanged: (value) {
                    setState(() => _fan1Active = value);
                    _notifyChange();
                  },
                  onLevelChanged: (value) {
                    setState(() => _fan1Level = value.round());
                    _notifyChange();
                  },
                  onAreaChanged: (value) {
                    setState(() => _fan1Area = value.round());
                    _notifyChange();
                  },
                ),

                const Divider(height: 32),

                // Fan 2
                _buildFanSection(
                  context,
                  fanNumber: 2,
                  active: _fan2Active,
                  level: _fan2Level,
                  area: _fan2Area,
                  onActiveChanged: (value) {
                    setState(() => _fan2Active = value);
                    _notifyChange();
                  },
                  onLevelChanged: (value) {
                    setState(() => _fan2Level = value.round());
                    _notifyChange();
                  },
                  onAreaChanged: (value) {
                    setState(() => _fan2Area = value.round());
                    _notifyChange();
                  },
                ),

                if (!widget.enabled) ...[
                  const SizedBox(height: 16),
                  Text(
                    l10n.turnOnStoveToConfigureFans,
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
        ],
      ),
    );
  }

  Widget _buildFanSection(
    BuildContext context, {
    required int fanNumber,
    required bool active,
    required int level,
    required int area,
    required ValueChanged<bool> onActiveChanged,
    required ValueChanged<double> onLevelChanged,
    required ValueChanged<double> onAreaChanged,
  }) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SwitchListTile(
          title: Text(
            l10n.fanNumber(fanNumber),
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            active ? l10n.active : l10n.inactive,
            style: TextStyle(
              color: active ? AppColors.statusActive : AppColors.textSecondary,
              fontSize: 13,
            ),
          ),
          value: active,
          onChanged: widget.enabled ? onActiveChanged : null,
          activeColor: AppColors.statusActive,
          contentPadding: EdgeInsets.zero,
        ),

        if (active) ...[
          const SizedBox(height: 16),

          // Level control (0-5)
          Text(
            l10n.speedLevel,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Slider(
                  value: level.toDouble(),
                  min: 0,
                  max: 5,
                  divisions: 5,
                  label: level.toString(),
                  onChanged: widget.enabled ? onLevelChanged : null,
                  activeColor: AppColors.primary,
                  inactiveColor: AppColors.textSecondary.withOpacity(0.3),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '$level',
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(l10n.minSpeed, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.textSecondary)),
              Text(l10n.maxSpeed, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.textSecondary)),
            ],
          ),

          const SizedBox(height: 16),

          // Area control (-30 to +30)
          Text(
            l10n.heatingArea,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Slider(
                  value: area.toDouble(),
                  min: -30,
                  max: 30,
                  divisions: 60,
                  label: area > 0 ? '+$area' : area.toString(),
                  onChanged: widget.enabled ? onAreaChanged : null,
                  activeColor: AppColors.secondary,
                  inactiveColor: AppColors.textSecondary.withOpacity(0.3),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: AppColors.secondary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  area > 0 ? '+$area' : area.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.secondary,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(l10n.minArea, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.textSecondary)),
              Text(l10n.centerArea, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.textSecondary)),
              Text(l10n.maxArea, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.textSecondary)),
            ],
          ),
        ],
      ],
    );
  }
}
