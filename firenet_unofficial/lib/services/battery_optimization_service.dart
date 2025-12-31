import 'package:flutter/services.dart';
import 'package:logger/logger.dart';

/// Service to handle battery optimization settings
class BatteryOptimizationService {
  static const MethodChannel _channel =
      MethodChannel('com.example.firenet_unofficial/battery');

  final Logger _logger = Logger();

  /// Check if battery optimizations are ignored for this app
  Future<bool> isBatteryOptimizationDisabled() async {
    try {
      final bool result = await _channel.invokeMethod('isBatteryOptimizationDisabled');
      return result;
    } catch (e) {
      _logger.e('Error checking battery optimization: $e');
      return false;
    }
  }

  /// Request to disable battery optimizations
  /// Opens system settings for the user to disable manually
  Future<void> requestDisableBatteryOptimization() async {
    try {
      await _channel.invokeMethod('requestDisableBatteryOptimization');
    } catch (e) {
      _logger.e('Error requesting battery optimization exemption: $e');
    }
  }
}
