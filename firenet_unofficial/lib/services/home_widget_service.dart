import 'package:home_widget/home_widget.dart';
import 'package:logger/logger.dart';
import '../data/models/stove_state.dart';

/// Service for managing home screen widget updates
class HomeWidgetService {
  final Logger _logger = Logger();

  /// Updates the home widget with stove data
  Future<void> updateWidget(StoveData stoveData) async {
    try {
      // Save data to shared preferences for widget
      await HomeWidget.saveWidgetData<String>('stove_name', stoveData.name);
      await HomeWidget.saveWidgetData<String>(
        'current_temperature',
        stoveData.currentTemperature.toStringAsFixed(1),
      );
      await HomeWidget.saveWidgetData<String>(
        'target_temperature',
        stoveData.targetTemperature.toStringAsFixed(1),
      );
      await HomeWidget.saveWidgetData<String>(
        'flame_temperature',
        stoveData.sensors.inputFlameTemperature.toString(),
      );
      await HomeWidget.saveWidgetData<String>(
        'status',
        stoveData.sensors.statusText,
      );
      await HomeWidget.saveWidgetData<bool>('is_on', stoveData.isOn);
      await HomeWidget.saveWidgetData<bool>('is_burning', stoveData.isBurning);
      await HomeWidget.saveWidgetData<bool>('is_online', stoveData.isOnline);
      await HomeWidget.saveWidgetData<String>(
        'pellets_consumption',
        stoveData.sensors.parameterFeedRateTotal.toString(),
      );
      await HomeWidget.saveWidgetData<int>(
        'last_update',
        DateTime.now().millisecondsSinceEpoch,
      );

      // Update the widget
      await HomeWidget.updateWidget(
        name: 'StoveStatusWidgetProvider',
        androidName: 'StoveStatusWidgetProvider',
      );

      _logger.i('Widget updated successfully for ${stoveData.name}');
    } catch (e) {
      _logger.e('Failed to update widget: $e');
    }
  }

  /// Updates widget with error state
  Future<void> updateWidgetError(String errorMessage) async {
    try {
      await HomeWidget.saveWidgetData<String>('error_message', errorMessage);
      await HomeWidget.saveWidgetData<bool>('has_error', true);

      await HomeWidget.updateWidget(
        name: 'StoveStatusWidgetProvider',
        androidName: 'StoveStatusWidgetProvider',
      );

      _logger.i('Widget updated with error state');
    } catch (e) {
      _logger.e('Failed to update widget error: $e');
    }
  }

  /// Clears widget data
  Future<void> clearWidget() async {
    try {
      await HomeWidget.saveWidgetData<String>('stove_name', 'Non connecté');
      await HomeWidget.saveWidgetData<bool>('has_error', false);

      await HomeWidget.updateWidget(
        name: 'StoveStatusWidgetProvider',
        androidName: 'StoveStatusWidgetProvider',
      );

      _logger.i('Widget cleared');
    } catch (e) {
      _logger.e('Failed to clear widget: $e');
    }
  }
}
