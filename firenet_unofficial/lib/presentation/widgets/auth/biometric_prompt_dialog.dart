import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../providers/biometric_auth_provider.dart';

/// Dialog to prompt user to enable biometric authentication
///
/// Shown after successful login if biometric is available and not yet configured
class BiometricPromptDialog extends ConsumerWidget {
  const BiometricPromptDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      title: const Text('Enable Biometric Authentication'),
      content: const Text(
        'Would you like to enable fingerprint or face unlock for faster access to the app?',
      ),
      actions: [
        TextButton(
          onPressed: () {
            // Mark prompt as shown and close dialog
            ref.read(biometricSettingsProvider.notifier).markPromptShown();
            Navigator.of(context).pop(false);
          },
          child: const Text('Not Now'),
        ),
        FilledButton(
          onPressed: () async {
            final biometricService = ref.read(biometricAuthServiceProvider);

            // Test biometric before enabling
            final success = await biometricService.authenticate(
              reason: 'Authenticate to enable biometric unlock',
            );

            if (success) {
              // Enable biometric
              await ref.read(biometricSettingsProvider.notifier).setBiometricEnabled(true);
              await ref.read(biometricSettingsProvider.notifier).markPromptShown();

              if (context.mounted) {
                Navigator.of(context).pop(true);
              }
            } else {
              // Authentication failed, mark prompt shown but don't enable
              await ref.read(biometricSettingsProvider.notifier).markPromptShown();

              if (context.mounted) {
                Navigator.of(context).pop(false);
              }
            }
          },
          child: const Text('Enable'),
        ),
      ],
    );
  }
}
