import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../core/security/secure_deletion_service.dart';

/// Provider for secure deletion service
final secureDeletionServiceProvider = Provider<SecureDeletionService>((ref) {
  return SecureDeletionService();
});
