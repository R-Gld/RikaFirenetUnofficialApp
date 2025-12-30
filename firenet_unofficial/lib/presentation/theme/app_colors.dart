import 'package:flutter/material.dart';
import '../../data/models/stove_sensors.dart';

/// Application color palette with status-based theming
class AppColors {
  AppColors._();

  // ========== LIGHT THEME COLORS ==========

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

  // ========== DARK THEME COLORS ==========

  // Primary colors (slightly lighter for dark mode)
  static const primaryDark = Color(0xFF42A5F5); // Lighter Blue
  static const secondaryDark = Color(0xFFFFB74D); // Lighter Orange

  // Status-based colors (adjusted for dark mode)
  static const statusOffDark = Color(0xFF757575); // Lighter Gray
  static const statusTransitioningDark = Color(0xFFFFB74D); // Lighter Amber
  static const statusActiveDark = Color(0xFF81C784); // Lighter Green
  static const statusWarningDark = Color(0xFFE57373); // Lighter Red

  // Neutral colors (dark theme)
  static const backgroundDark = Color(0xFF121212); // True dark
  static const surfaceDark = Color(0xFF1E1E1E); // Slightly lighter dark
  static const errorDark = Color(0xFFCF6679); // Lighter error

  // Text colors (dark theme)
  static const textPrimaryDark = Color(0xFFE0E0E0); // Light gray text
  static const textSecondaryDark = Color(0xFFB0B0B0); // Dimmed text
  static const textOnPrimaryDark = Color(0xFF000000); // Black text on bright colors

  /// Maps StoveStatusCategory to appropriate color
  static Color getStatusColor(StoveStatusCategory status, {bool isDark = false}) {
    if (isDark) {
      switch (status) {
        case StoveStatusCategory.off:
          return statusOffDark;
        case StoveStatusCategory.transitioning:
          return statusTransitioningDark;
        case StoveStatusCategory.active:
          return statusActiveDark;
        case StoveStatusCategory.warning:
          return statusWarningDark;
      }
    } else {
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
  static Color getStatusColorLight(StoveStatusCategory status, {bool isDark = false}) {
    return getStatusColor(status, isDark: isDark).withValues(alpha: 0.1);
  }
}
