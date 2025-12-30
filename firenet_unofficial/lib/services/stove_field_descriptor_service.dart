import '../data/models/stove_sensors.dart';

/// Type of field value
enum FieldType {
  integer,
  boolean,
  string,
  double_,
}

/// Category for UI grouping
enum FieldCategory {
  status,
  temperature,
  motors,
  safety,
  consumption,
}

/// Descriptor for a stove sensor field
class StoveFieldDescriptor {
  final String fieldName;
  final String displayName;
  final String description;
  final FieldType type;
  final FieldCategory category;
  final bool supportsThreshold;

  const StoveFieldDescriptor({
    required this.fieldName,
    required this.displayName,
    required this.description,
    required this.type,
    required this.category,
    this.supportsThreshold = false,
  });
}

/// Service to get field descriptors and extract values from StoveSensors
class StoveFieldDescriptorService {
  /// Get all available field descriptors (priority fields for notifications)
  static List<StoveFieldDescriptor> getAllDescriptors() {
    return [
      // État & Status
      const StoveFieldDescriptor(
        fieldName: 'statusMainState',
        displayName: 'État principal',
        description: 'État du poêle (éteint, allumage, fonctionnement, nettoyage...)',
        type: FieldType.integer,
        category: FieldCategory.status,
      ),
      const StoveFieldDescriptor(
        fieldName: 'statusError',
        displayName: 'Code erreur',
        description: 'Code erreur (0 = pas d\'erreur)',
        type: FieldType.integer,
        category: FieldCategory.status,
      ),
      const StoveFieldDescriptor(
        fieldName: 'statusWarning',
        displayName: 'Code warning',
        description: 'Code d\'avertissement (0 = pas de warning)',
        type: FieldType.integer,
        category: FieldCategory.status,
      ),
      const StoveFieldDescriptor(
        fieldName: 'statusSubState',
        displayName: 'Sous-état',
        description: 'Sous-état détaillé',
        type: FieldType.integer,
        category: FieldCategory.status,
      ),
      const StoveFieldDescriptor(
        fieldName: 'statusFrostStarted',
        displayName: 'Protection anti-gel',
        description: 'Protection antigel activée',
        type: FieldType.boolean,
        category: FieldCategory.status,
      ),

      // Températures
      const StoveFieldDescriptor(
        fieldName: 'inputRoomTemperature',
        displayName: 'Température pièce',
        description: 'Température actuelle de la pièce',
        type: FieldType.double_,
        category: FieldCategory.temperature,
        supportsThreshold: true,
      ),
      const StoveFieldDescriptor(
        fieldName: 'inputFlameTemperature',
        displayName: 'Température flamme',
        description: 'Température de la flamme',
        type: FieldType.integer,
        category: FieldCategory.temperature,
        supportsThreshold: true,
      ),
      const StoveFieldDescriptor(
        fieldName: 'inputBakeTemperature',
        displayName: 'Température four',
        description: 'Température du four (si applicable)',
        type: FieldType.string,
        category: FieldCategory.temperature,
      ),

      // Sécurité & Diagnostics
      const StoveFieldDescriptor(
        fieldName: 'inputDoor',
        displayName: 'Porte',
        description: 'État de la porte (true=fermée, false=ouverte)',
        type: FieldType.boolean,
        category: FieldCategory.safety,
      ),
      const StoveFieldDescriptor(
        fieldName: 'inputUpperTemperatureLimiter',
        displayName: 'Limiteur température',
        description: 'Limiteur de température haute (protection surchauffe)',
        type: FieldType.boolean,
        category: FieldCategory.safety,
      ),
      const StoveFieldDescriptor(
        fieldName: 'inputPressureSwitch',
        displayName: 'Contacteur pression',
        description: 'État du contacteur de pression',
        type: FieldType.boolean,
        category: FieldCategory.safety,
      ),
      const StoveFieldDescriptor(
        fieldName: 'inputPressureSensor',
        displayName: 'Capteur pression',
        description: 'Valeur du capteur de pression (Pa)',
        type: FieldType.integer,
        category: FieldCategory.safety,
        supportsThreshold: true,
      ),
      const StoveFieldDescriptor(
        fieldName: 'statusWifiStrength',
        displayName: 'Signal WiFi',
        description: 'Force du signal WiFi (dBm)',
        type: FieldType.integer,
        category: FieldCategory.safety,
      ),

      // Moteurs & Ventilateurs
      const StoveFieldDescriptor(
        fieldName: 'outputDischargeMotor',
        displayName: 'Moteur vis sans fin',
        description: 'Vitesse du moteur d\'extraction (RPM)',
        type: FieldType.integer,
        category: FieldCategory.motors,
        supportsThreshold: true,
      ),
      const StoveFieldDescriptor(
        fieldName: 'outputIDFan',
        displayName: 'Ventilateur extraction',
        description: 'Vitesse actuelle du ventilateur (RPM)',
        type: FieldType.integer,
        category: FieldCategory.motors,
        supportsThreshold: true,
      ),
      const StoveFieldDescriptor(
        fieldName: 'outputIDFanTarget',
        displayName: 'Ventilateur cible',
        description: 'Vitesse cible du ventilateur (RPM)',
        type: FieldType.integer,
        category: FieldCategory.motors,
      ),
      const StoveFieldDescriptor(
        fieldName: 'outputInsertionMotor',
        displayName: 'Moteur insertion',
        description: 'Vitesse du moteur d\'insertion (RPM)',
        type: FieldType.integer,
        category: FieldCategory.motors,
        supportsThreshold: true,
      ),
      const StoveFieldDescriptor(
        fieldName: 'outputIgnition',
        displayName: 'Allumage',
        description: 'Allumage actif',
        type: FieldType.boolean,
        category: FieldCategory.motors,
      ),

      // Consommation & Entretien
      const StoveFieldDescriptor(
        fieldName: 'parameterFeedRateTotal',
        displayName: 'Consommation totale',
        description: 'Consommation totale de pellets (kg)',
        type: FieldType.integer,
        category: FieldCategory.consumption,
      ),
      const StoveFieldDescriptor(
        fieldName: 'parameterServiceCountdownKg',
        displayName: 'Entretien restant (kg)',
        description: 'Kg restants avant entretien',
        type: FieldType.integer,
        category: FieldCategory.consumption,
        supportsThreshold: true,
      ),
      const StoveFieldDescriptor(
        fieldName: 'parameterServiceCountdownTime',
        displayName: 'Entretien restant (h)',
        description: 'Heures restantes avant entretien',
        type: FieldType.integer,
        category: FieldCategory.consumption,
        supportsThreshold: true,
      ),
    ];
  }

  /// Get field value from StoveSensors by field name
  static dynamic getFieldValue(StoveSensors sensors, String fieldName) {
    switch (fieldName) {
      // Status
      case 'statusMainState':
        return sensors.statusMainState;
      case 'statusSubState':
        return sensors.statusSubState;
      case 'statusError':
        return sensors.statusError;
      case 'statusWarning':
        return sensors.statusWarning;
      case 'statusFrostStarted':
        return sensors.statusFrostStarted;
      case 'statusWifiStrength':
        return sensors.statusWifiStrength;

      // Temperatures
      case 'inputRoomTemperature':
        return sensors.roomTemperature; // Uses getter
      case 'inputFlameTemperature':
        return sensors.inputFlameTemperature;
      case 'inputBakeTemperature':
        return sensors.inputBakeTemperature;

      // Safety
      case 'inputDoor':
        return sensors.inputDoor;
      case 'inputUpperTemperatureLimiter':
        return sensors.inputUpperTemperatureLimiter;
      case 'inputPressureSwitch':
        return sensors.inputPressureSwitch;
      case 'inputPressureSensor':
        return sensors.inputPressureSensor;

      // Motors
      case 'outputDischargeMotor':
        return sensors.outputDischargeMotor;
      case 'outputIDFan':
        return sensors.outputIDFan;
      case 'outputIDFanTarget':
        return sensors.outputIDFanTarget;
      case 'outputInsertionMotor':
        return sensors.outputInsertionMotor;
      case 'outputIgnition':
        return sensors.outputIgnition;

      // Consumption
      case 'parameterFeedRateTotal':
        return sensors.parameterFeedRateTotal;
      case 'parameterServiceCountdownKg':
        return sensors.parameterServiceCountdownKg;
      case 'parameterServiceCountdownTime':
        return sensors.parameterServiceCountdownTime;

      default:
        throw ArgumentError('Unknown field name: $fieldName');
    }
  }

  /// Get fields grouped by category
  static Map<FieldCategory, List<StoveFieldDescriptor>> getFieldsByCategory() {
    final all = getAllDescriptors();
    final Map<FieldCategory, List<StoveFieldDescriptor>> grouped = {};

    for (final field in all) {
      grouped.putIfAbsent(field.category, () => []).add(field);
    }

    return grouped;
  }

  /// Get human-readable category name
  static String getCategoryName(FieldCategory category) {
    switch (category) {
      case FieldCategory.status:
        return '📊 État & Status';
      case FieldCategory.temperature:
        return '🌡️ Températures';
      case FieldCategory.motors:
        return '🔧 Moteurs & Ventilateurs';
      case FieldCategory.safety:
        return '⚠️ Sécurité & Diagnostics';
      case FieldCategory.consumption:
        return '📈 Consommation & Entretien';
    }
  }
}
