import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../core/network/rate_limiter.dart';

/// Provider for rate limiter
final rateLimiterProvider = Provider<RateLimiter>((ref) {
  return RateLimiter(
    configs: {
      'getStoveStatus': const RateLimitConfig(
        endpoint: 'getStoveStatus',
        maxRequests: 1,
        window: Duration(seconds: 2),
      ),
      'setStoveControls': const RateLimitConfig(
        endpoint: 'setStoveControls',
        maxRequests: 1,
        window: Duration(seconds: 3),
      ),
      'authenticate': const RateLimitConfig(
        endpoint: 'authenticate',
        maxRequests: 3,
        window: Duration(minutes: 5),
      ),
      'getStoveSummaryHtml': const RateLimitConfig(
        endpoint: 'getStoveSummaryHtml',
        maxRequests: 1,
        window: Duration(seconds: 10),
      ),
    },
  );
});
