import 'package:flutter/material.dart';
import '../../../data/helpers/time_range.dart';
import '../../theme/app_colors.dart';

/// Widget for editing the 14 heating time slots (7 days × 2 slots each)
class HeatingScheduleEditor extends StatefulWidget {
  final Map<String, String> schedule; // e.g., "Mon1" → "08001800"
  final ValueChanged<Map<String, String>>? onChanged;
  final bool enabled;

  const HeatingScheduleEditor({
    super.key,
    required this.schedule,
    this.onChanged,
    this.enabled = true,
  });

  @override
  State<HeatingScheduleEditor> createState() => _HeatingScheduleEditorState();
}

class _HeatingScheduleEditorState extends State<HeatingScheduleEditor> {
  late Map<String, TimeRange?> _timeRanges;

  final List<_DayInfo> _days = const [
    _DayInfo(label: 'Lundi', key: 'Mon'),
    _DayInfo(label: 'Mardi', key: 'Tue'),
    _DayInfo(label: 'Mercredi', key: 'Wed'),
    _DayInfo(label: 'Jeudi', key: 'Thu'),
    _DayInfo(label: 'Vendredi', key: 'Fri'),
    _DayInfo(label: 'Samedi', key: 'Sat'),
    _DayInfo(label: 'Dimanche', key: 'Sun'),
  ];

  @override
  void initState() {
    super.initState();
    _parseSchedule();
  }

  @override
  void didUpdateWidget(HeatingScheduleEditor oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.schedule != oldWidget.schedule) {
      _parseSchedule();
    }
  }

  void _parseSchedule() {
    _timeRanges = {};
    for (final day in _days) {
      for (int slot = 1; slot <= 2; slot++) {
        final key = '${day.key}$slot';
        final apiValue = widget.schedule[key] ?? TimeRange.disabled;
        _timeRanges[key] = TimeRange.fromApiFormat(apiValue);
      }
    }
  }

  void _notifyChange() {
    final newSchedule = <String, String>{};
    _timeRanges.forEach((key, timeRange) {
      newSchedule[key] = timeRange?.toApiFormat() ?? TimeRange.disabled;
    });
    widget.onChanged?.call(newSchedule);
  }

  Future<void> _selectTime(String slotKey, bool isStart) async {
    final currentRange = _timeRanges[slotKey];
    final initialTime = isStart
        ? (currentRange?.start ?? const TimeOfDay(hour: 8, minute: 0))
        : (currentRange?.end ?? const TimeOfDay(hour: 18, minute: 0));

    final pickedTime = await showTimePicker(
      context: context,
      initialTime: initialTime,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            timePickerTheme: TimePickerThemeData(
              backgroundColor: Colors.white,
              hourMinuteTextColor: AppColors.primary,
              dialHandColor: AppColors.primary,
              dialBackgroundColor: AppColors.primary.withOpacity(0.1),
            ),
          ),
          child: child!,
        );
      },
    );

    if (pickedTime != null && mounted) {
      setState(() {
        if (currentRange == null) {
          // Create new range
          if (isStart) {
            _timeRanges[slotKey] = TimeRange(
              start: pickedTime,
              end: const TimeOfDay(hour: 18, minute: 0),
            );
          } else {
            _timeRanges[slotKey] = TimeRange(
              start: const TimeOfDay(hour: 8, minute: 0),
              end: pickedTime,
            );
          }
        } else {
          // Update existing range
          _timeRanges[slotKey] = TimeRange(
            start: isStart ? pickedTime : currentRange.start,
            end: isStart ? currentRange.end : pickedTime,
          );
        }
      });
      _notifyChange();
    }
  }

  void _clearSlot(String slotKey) {
    setState(() {
      _timeRanges[slotKey] = null;
    });
    _notifyChange();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.event, color: AppColors.secondary, size: 20),
            const SizedBox(width: 8),
            Text(
              'Programmation horaires détaillée',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        for (final day in _days) ...[
          _buildDaySchedule(day),
          if (day != _days.last) const Divider(height: 24),
        ],
        if (!widget.enabled) ...[
          const SizedBox(height: 16),
          Text(
            'Activez les plages horaires pour éditer la programmation',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.textSecondary,
                  fontStyle: FontStyle.italic,
                ),
            textAlign: TextAlign.center,
          ),
        ],
      ],
    );
  }

  Widget _buildDaySchedule(_DayInfo day) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          day.label,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        const SizedBox(height: 12),
        _buildTimeSlot(day, 1),
        const SizedBox(height: 8),
        _buildTimeSlot(day, 2),
      ],
    );
  }

  Widget _buildTimeSlot(_DayInfo day, int slot) {
    final slotKey = '${day.key}$slot';
    final timeRange = _timeRanges[slotKey];
    final hasTime = timeRange != null;

    // Extract time strings for display
    String startTimeText = '--:--';
    String endTimeText = '--:--';
    if (hasTime) {
      startTimeText = timeRange.start.formatHHMM;
      endTimeText = timeRange.end.formatHHMM;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: hasTime
            ? AppColors.primary.withOpacity(0.05)
            : AppColors.textSecondary.withOpacity(0.05),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: hasTime
              ? AppColors.primary.withOpacity(0.2)
              : AppColors.textSecondary.withOpacity(0.2),
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: hasTime ? AppColors.primary : AppColors.textSecondary,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              'Plage $slot',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Start time button
                TextButton.icon(
                  onPressed: widget.enabled ? () => _selectTime(slotKey, true) : null,
                  icon: const Icon(Icons.access_time, size: 16),
                  label: Text(
                    startTimeText,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: Icon(Icons.arrow_forward, size: 16),
                ),
                // End time button
                TextButton.icon(
                  onPressed: widget.enabled ? () => _selectTime(slotKey, false) : null,
                  icon: const Icon(Icons.access_time, size: 16),
                  label: Text(
                    endTimeText,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          // Clear button
          IconButton(
            icon: const Icon(Icons.clear, size: 20),
            onPressed: widget.enabled && hasTime ? () => _clearSlot(slotKey) : null,
            tooltip: 'Désactiver cette plage',
            color: AppColors.textSecondary,
          ),
        ],
      ),
    );
  }
}

class _DayInfo {
  final String label;
  final String key;

  const _DayInfo({required this.label, required this.key});
}
