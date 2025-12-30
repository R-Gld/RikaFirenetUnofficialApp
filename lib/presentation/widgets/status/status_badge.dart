import 'package:flutter/material.dart';
import '../../../data/models/stove_sensors.dart';
import '../../theme/app_colors.dart';

/// Badge displaying stove status with icon and color
class StatusBadge extends StatelessWidget {
  final StoveStatusCategory category;
  final String statusText;
  final bool compact;

  const StatusBadge({
    super.key,
    required this.category,
    required this.statusText,
    this.compact = false,
  });

  @override
  Widget build(BuildContext context) {
    final color = AppColors.getStatusColor(category);
    final icon = AppColors.getStatusIcon(category);

    if (compact) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          icon,
          size: 16,
          color: Colors.white,
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 16,
            color: Colors.white,
          ),
          const SizedBox(width: 6),
          Text(
            statusText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
