/// Represents a notification event triggered by a sensor field change
class NotificationEvent {
  final String stoveId;
  final String stoveName;
  final String fieldName;
  final dynamic previousValue;
  final dynamic currentValue;
  final DateTime timestamp;

  NotificationEvent({
    required this.stoveId,
    required this.stoveName,
    required this.fieldName,
    required this.previousValue,
    required this.currentValue,
    required this.timestamp,
  });

  /// Human-readable title for notification
  String get title {
    // Simple mode special events
    if (fieldName == 'statusError') {
      return 'Erreur détectée sur $stoveName';
    }
    if (fieldName == 'statusWarning') {
      return 'Avertissement sur $stoveName';
    }
    if (fieldName == 'statusMainState') {
      return 'Changement d\'état de $stoveName';
    }

    // Advanced mode generic title
    return 'Changement détecté sur $stoveName';
  }

  /// Human-readable body for notification
  String get body {
    // Simple mode: format errors
    if (fieldName == 'statusError') {
      return _formatErrorCode(currentValue as int);
    }

    // Simple mode: format warnings
    if (fieldName == 'statusWarning') {
      return _formatWarningCode(currentValue as int);
    }

    // Simple mode: format state changes
    if (fieldName == 'statusMainState') {
      final prevState = _formatMainState(previousValue as int);
      final currState = _formatMainState(currentValue as int);
      return '$prevState → $currState';
    }

    // Advanced mode: generic field change
    final prev = _formatValue(previousValue);
    final curr = _formatValue(currentValue);
    final field = _formatFieldName(fieldName);
    return '$field : $prev → $curr';
  }

  /// Format value for display
  String _formatValue(dynamic value) {
    if (value is double) {
      return '${value.toStringAsFixed(1)}°C';
    }
    if (value is bool) {
      return value ? 'Actif' : 'Inactif';
    }
    return value.toString();
  }

  /// Format field name to human-readable
  String _formatFieldName(String fieldName) {
    // Will be enhanced by StoveFieldDescriptorService
    // For now, return as-is
    return fieldName;
  }

  /// Format error code to human-readable description
  String _formatErrorCode(int code) {
    if (code == 0) return 'Aucune erreur';

    final List<String> errors = [];

    if ((code & 1) != 0) errors.add('Signal capteur pièce perdu');
    if ((code & 2) != 0) errors.add('Capot à granulés ouvert');
    if ((code & 4) != 0) errors.add('Porte ouverte');
    if ((code & 8) != 0 && (code & 2) == 0 && (code & 4) == 0) {
      errors.add('Capot ou porte ouvert');
    }
    if ((code & 16) != 0 && (code & 2) == 0) errors.add('Capot à granulés ouvert');
    if ((code & 32) != 0) errors.add('Pression insuffisante');
    if ((code & 64) != 0) errors.add('Calibration volets d\'air');
    if ((code & 128) != 0) errors.add('Clapet anti-retour ouvert');
    if ((code & 256) != 0) errors.add('Poêle mal positionné');

    if (errors.isEmpty) {
      return 'Erreur système (code: $code)';
    }

    return errors.join(' + ');
  }

  /// Format warning code to human-readable description
  String _formatWarningCode(int code) {
    if (code == 0) return 'Aucun avertissement';

    final List<String> warnings = [];

    if ((code & 1) != 0) warnings.add('Signal capteur pièce perdu');
    if ((code & 2) != 0) warnings.add('Capot à granulés ouvert');
    if ((code & 4) != 0) warnings.add('Porte ouverte');
    if ((code & 8) != 0 && (code & 2) == 0 && (code & 4) == 0) {
      warnings.add('Capot ou porte ouvert');
    }
    if ((code & 16) != 0 && (code & 2) == 0) warnings.add('Capot à granulés ouvert');
    if ((code & 32) != 0) warnings.add('Pression insuffisante');
    if ((code & 64) != 0) warnings.add('Calibration volets d\'air');
    if ((code & 128) != 0) warnings.add('Clapet anti-retour ouvert');
    if ((code & 256) != 0) warnings.add('Poêle mal positionné');

    if (warnings.isEmpty) {
      return 'Avertissement système (code: $code)';
    }

    return warnings.join(' + ');
  }

  /// Format main state to human-readable description
  String _formatMainState(int state) {
    switch (state) {
      case 1:
        return 'Éteint';
      case 2:
        return 'Allumage en cours';
      case 3:
        return 'Démarrage';
      case 4:
        return 'En fonctionnement';
      case 5:
        return 'Nettoyage';
      case 6:
        return 'Extinction';
      case 11:
      case 13:
      case 14:
      case 16:
      case 17:
      case 50:
        return 'Vérification bûches';
      case 20:
      case 21:
        return 'Mode bûches';
      default:
        return 'État inconnu ($state)';
    }
  }
}
