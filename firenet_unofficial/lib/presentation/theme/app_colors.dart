import 'package:flutter/material.dart';
import '../../data/models/stove_sensors.dart';

/// Application color palette with status-based theming
class AppColors {
  AppColors._();

  // Primary colors
  static const primary = Color(0xFF1976D2); // Blue
  static const secondary = Color(0xFFFF6F00); // Orange/Fire

  // Status-based colors (mapped to StoveStatusCategory)
  static const statusOff = Color(0xFF9E9E9E); // Gray
  static const statusTransitioning = Color(0xFFFFA726); // Amber
  static const statusActive = Color(0xFF66BB6A); // Green
  static const statusWarning = Color(0xFFEF5350); // Red

  // Neutral colors
  static const background = Color(0xFFFAFAFA);
  static const surface = Color(0xFFFFFFFF);
  static const error = Color(0xFFB00020);

  // Text colors
  static const textPrimary = Color(0xFF212121);
  static const textSecondary = Color(0xFF757575);
  static const textOnPrimary = Color(0xFFFFFFFF);

  /// Maps StoveStatusCategory to appropriate color
  static Color getStatusColor(StoveStatusCategory status) {
    switch (status) {
      case StoveStatusCategory.off:
        return statusOff;
      case StoveStatusCategory.transitioning:
        return statusTransitioning;
      case StoveStatusCategory.active:
        return statusActive;
      case StoveStatusCategory.warning:
        return statusWarning;
    }
  }

  /// Maps StoveStatusCategory to appropriate icon
  static IconData getStatusIcon(StoveStatusCategory status) {
    switch (status) {
      case StoveStatusCategory.off:
        return Icons.power_off;
      case StoveStatusCategory.transitioning:
        return Icons.sync;
      case StoveStatusCategory.active:
        return Icons.local_fire_department;
      case StoveStatusCategory.warning:
        return Icons.warning;
    }
  }

  /// Gets a lighter shade of the status color (for backgrounds)
  static Color getStatusColorLight(StoveStatusCategory status) {
    return getStatusColor(status).withOpacity(0.1);
  }
}
