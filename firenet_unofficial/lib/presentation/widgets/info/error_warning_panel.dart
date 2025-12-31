import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
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
  String _getErrorDescription(BuildContext context, int code, int subCode) {
    final l10n = AppLocalizations.of(context)!;
    // Basic mapping of known error codes
    // Note: Complete mapping would require documentation from Rika
    switch (code) {
      case 0:
        return l10n.noError;
      case 1:
        return l10n.temperatureSensorFailure;
      case 2:
        return l10n.pressureSensorFailure;
      case 3:
        return l10n.feedMotorFailure;
      case 4:
        return l10n.fanFailure;
      case 5:
        return l10n.temperatureTooHigh;
      case 6:
        return l10n.ignitionProblem;
      case 7:
        return l10n.flameFailure;
      case 8:
        return l10n.doorOpen;
      case 9:
        return l10n.thermalOverload;
      case 10:
        return l10n.combustionProblem;
      default:
        return l10n.systemError('$code${subCode != 0 ? "/$subCode" : ""}');
    }
  }

  /// Get warning description from warning code
  String _getWarningDescription(BuildContext context, int code) {
    final l10n = AppLocalizations.of(context)!;
    switch (code) {
      case 0:
        return l10n.noWarning;
      case 1:
        return l10n.pelletLevelLow;
      case 2:
        return l10n.maintenanceNeeded;
      case 3:
        return l10n.cleaningRequired;
      case 4:
        return l10n.ambientTemperatureHigh;
      case 5:
        return l10n.weakWiFiSignal;
      default:
        return l10n.systemWarning(code);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
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
                    hasError ? l10n.errorDetected : l10n.warning,
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
                      _getErrorDescription(context, errorCode, subErrorCode),
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          l10n.errorCode,
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
                      l10n.consultManual,
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
                      _getWarningDescription(context, warningCode),
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          l10n.warningCode,
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
