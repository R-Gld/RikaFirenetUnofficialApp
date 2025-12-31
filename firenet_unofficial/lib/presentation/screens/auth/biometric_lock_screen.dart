import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../providers/biometric_auth_provider.dart';

/// Full-screen biometric authentication gate
///
/// Shown on app launch when biometric authentication is enabled.
/// User must authenticate with biometric (or fallback to password) before accessing the app.
class BiometricLockScreen extends ConsumerStatefulWidget {
  final VoidCallback onSuccess;
  final VoidCallback onFallbackToPassword;

  const BiometricLockScreen({
    super.key,
    required this.onSuccess,
    required this.onFallbackToPassword,
  });

  @override
  ConsumerState<BiometricLockScreen> createState() => _BiometricLockScreenState();
}

class _BiometricLockScreenState extends ConsumerState<BiometricLockScreen> {
  bool _isAuthenticating = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    // Trigger biometric prompt immediately on screen load
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _authenticate();
    });
  }

  Future<void> _authenticate() async {
    if (_isAuthenticating) return;

    setState(() {
      _isAuthenticating = true;
      _errorMessage = null;
    });

    try {
      final biometricService = ref.read(biometricAuthServiceProvider);
      final success = await biometricService.authenticate(
        reason: 'Authenticate to access the app',
      );

      if (mounted) {
        if (success) {
          widget.onSuccess();
        } else {
          setState(() {
            _isAuthenticating = false;
            _errorMessage = 'Authentication failed. Please try again.';
          });
        }
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isAuthenticating = false;
          _errorMessage = 'An error occurred. Please try again.';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // App icon or logo
                Icon(
                  Icons.fingerprint,
                  size: 80,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(height: 32),

                // Title
                Text(
                  'Biometric Authentication',
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),

                // Message
                Text(
                  'Use your fingerprint or face to unlock the app',
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),

                // Error message
                if (_errorMessage != null)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Text(
                      _errorMessage!,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                // Retry button
                if (!_isAuthenticating && _errorMessage != null)
                  FilledButton.icon(
                    onPressed: _authenticate,
                    icon: const Icon(Icons.refresh),
                    label: const Text('Try Again'),
                  ),

                const SizedBox(height: 16),

                // Fallback to password
                TextButton(
                  onPressed: _isAuthenticating ? null : widget.onFallbackToPassword,
                  child: const Text('Use Password Instead'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
