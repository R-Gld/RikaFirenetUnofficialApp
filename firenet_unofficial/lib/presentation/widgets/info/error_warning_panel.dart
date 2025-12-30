import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';

/// Panel displaying active errors and warnings
/// Only visible when error or warning is active (code != 0)
class ErrorWarningPanel extends StatelessWidget {
  final int errorCode;
  final int subErrorCode;
  final int warningCode;

  const ErrorWarningPanel({
    super.key,
    required this.errorCode,
    required this.subErrorCode,
    required this.warningCode,
  });

  /// Get error description from error code
  String _getErrorDescription(int code, int subCode) {
    // Basic mapping of known error codes
    // Note: Complete mapping would require documentation from Rika
    switch (code) {
      case 0:
        return 'Aucune erreur';
      case 1:
        return 'Défaut sonde de température';
      case 2:
        return 'Défaut capteur de pression';
      case 3:
        return 'Défaut moteur alimentation';
      case 4:
        return 'Défaut ventilateur';
      case 5:
        return 'Température trop élevée';
      case 6:
        return 'Problème d\'allumage';
      case 7:
        return 'Défaut de flamme';
      case 8:
        return 'Porte ouverte';
      case 9:
        return 'Surcharge thermique';
      case 10:
        return 'Problème de combustion';
      default:
        return 'Erreur système (code: $code${subCode != 0 ? "/$subCode" : ""})';
    }
  }

  /// Get warning description from warning code
  String _getWarningDescription(int code) {
    switch (code) {
      case 0:
        return 'Aucun avertissement';
      case 1:
        return 'Niveau de granulés faible';
      case 2:
        return 'Entretien nécessaire';
      case 3:
        return 'Nettoyage requis';
      case 4:
        return 'Température ambiante élevée';
      case 5:
        return 'Signal WiFi faible';
      default:
        return 'Avertissement système (code: $code)';
    }
  }

  @override
  Widget build(BuildContext context) {
    final hasError = errorCode != 0;
    final hasWarning = warningCode != 0;

    return Card(
      color: hasError
          ? AppColors.statusWarning.withOpacity(0.1)
          : Colors.orange.withOpacity(0.1),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  hasError ? Icons.error : Icons.warning,
                  color: hasError ? AppColors.statusWarning : Colors.orange,
                  size: 28,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    hasError ? 'Erreur détectée' : 'Avertissement',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: hasError ? AppColors.statusWarning : Colors.orange,
                        ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            if (hasError) ...[
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.statusWarning.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: AppColors.statusWarning.withOpacity(0.3),
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _getErrorDescription(errorCode, subErrorCode),
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          'Code d\'erreur: ',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: AppColors.textSecondary,
                              ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: AppColors.statusWarning.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            '$errorCode${subErrorCode != 0 ? " (sub: $subErrorCode)" : ""}',
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'monospace',
                                ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Consultez le manuel d\'utilisation ou contactez le service technique.',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppColors.textSecondary,
                            fontStyle: FontStyle.italic,
                          ),
                    ),
                  ],
                ),
              ),
            ],

            if (hasWarning) ...[
              if (hasError) const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.orange.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.orange.withOpacity(0.3),
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _getWarningDescription(warningCode),
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          'Code avertissement: ',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: AppColors.textSecondary,
                              ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: Colors.orange.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            '$warningCode',
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'monospace',
                                ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
