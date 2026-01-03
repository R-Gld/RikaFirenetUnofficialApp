import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/foreground_service_provider.dart';

/// Widget that manages the foreground service lifecycle
///
/// This widget should wrap the app to ensure the foreground service
/// is started/stopped based on authentication and notification settings.
class ForegroundServiceManager extends ConsumerWidget {
  final Widget child;

  const ForegroundServiceManager({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the foreground service manager to keep it active
    ref.watch(foregroundServiceManagerProvider);

    return child;
  }
}
