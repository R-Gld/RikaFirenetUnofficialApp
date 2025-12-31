import 'dart:async';
import 'package:flutter/foundation.dart';
import 'token_bucket.dart';
import '../errors/exceptions.dart';

/// Rate limiter configuration for an endpoint
class RateLimitConfig {
  final String endpoint;
  final int maxRequests;
  final Duration window;

  const RateLimitConfig({
    required this.endpoint,
    required this.maxRequests,
    required this.window,
  });

  /// Calculate refill rate (tokens per second)
  double get refillRate => maxRequests / window.inSeconds;
}

/// Client-side rate limiter using token bucket algorithm
class RateLimiter {
  final Map<String, TokenBucket> _buckets = {};

  // Track failed requests for exponential backoff
  final Map<String, int> _failureCount = {};
  final Map<String, DateTime> _lastFailure = {};

  RateLimiter({required Map<String, RateLimitConfig> configs}) {
    // Initialize buckets for each endpoint
    for (final config in configs.values) {
      _buckets[config.endpoint] = TokenBucket(
        capacity: config.maxRequests,
        refillRate: config.refillRate,
      );
    }
  }

  /// Execute a function with rate limiting
  ///
  /// Returns result of function or throws RateLimitException
  Future<T> execute<T>(
    String endpoint,
    Future<T> Function() fn, {
    bool throwOnLimit = false,
  }) async {
    final bucket = _buckets[endpoint];

    if (bucket == null) {
      // No rate limit configured - execute immediately
      return await _executeWithBackoff(endpoint, fn);
    }

    // Check if we need to wait due to previous failures (exponential backoff)
    final backoffWait = _getBackoffWaitTime(endpoint);
    if (backoffWait > 0) {
      debugPrint('[RateLimit] Exponential backoff for $endpoint: ${backoffWait}ms');
      await Future.delayed(Duration(milliseconds: backoffWait));
    }

    // Try to acquire token
    if (bucket.tryConsume()) {
      return await _executeWithBackoff(endpoint, fn);
    }

    // Rate limited
    final waitTime = bucket.getWaitTime();
    debugPrint('[RateLimit] Rate limited: $endpoint, wait ${waitTime}ms');

    if (throwOnLimit) {
      throw RateLimitException(
        'Rate limit exceeded for $endpoint',
        waitTime,
      );
    }

    // Wait and retry
    await Future.delayed(Duration(milliseconds: waitTime));
    return await execute(endpoint, fn, throwOnLimit: throwOnLimit);
  }

  /// Execute function with exponential backoff tracking
  Future<T> _executeWithBackoff<T>(
    String endpoint,
    Future<T> Function() fn,
  ) async {
    try {
      final result = await fn();

      // Success - reset failure count
      _failureCount[endpoint] = 0;
      _lastFailure.remove(endpoint);

      return result;
    } catch (e) {
      // Failure - increment count for exponential backoff
      _failureCount[endpoint] = (_failureCount[endpoint] ?? 0) + 1;
      _lastFailure[endpoint] = DateTime.now();

      debugPrint('[RateLimit] Request failed for $endpoint (failures: ${_failureCount[endpoint]})');
      rethrow;
    }
  }

  /// Get exponential backoff wait time (in milliseconds)
  int _getBackoffWaitTime(String endpoint) {
    final failures = _failureCount[endpoint] ?? 0;
    if (failures == 0) return 0;

    final lastFailure = _lastFailure[endpoint];
    if (lastFailure == null) return 0;

    // Exponential backoff: 2^failures * 1000ms (max 30 seconds)
    final backoffMs = (1 << failures.clamp(0, 5)) * 1000; // Max 32 seconds
    final timeSinceFailure = DateTime.now().difference(lastFailure).inMilliseconds;

    return (backoffMs - timeSinceFailure).clamp(0, 30000);
  }

  /// Reset rate limits for an endpoint
  void reset(String endpoint) {
    _buckets[endpoint]?.reset();
    _failureCount[endpoint] = 0;
    _lastFailure.remove(endpoint);
  }

  /// Reset all rate limits
  void resetAll() {
    for (final bucket in _buckets.values) {
      bucket.reset();
    }
    _failureCount.clear();
    _lastFailure.clear();
  }

  /// Get current rate limit status for an endpoint
  RateLimitStatus getStatus(String endpoint) {
    final bucket = _buckets[endpoint];
    if (bucket == null) {
      return const RateLimitStatus(
        hasLimit: false,
        availableTokens: 0,
        waitTimeMs: 0,
      );
    }

    return RateLimitStatus(
      hasLimit: true,
      availableTokens: bucket.availableTokens,
      waitTimeMs: bucket.getWaitTime(),
    );
  }
}

/// Rate limit status information
class RateLimitStatus {
  final bool hasLimit;
  final double availableTokens;
  final int waitTimeMs;

  const RateLimitStatus({
    required this.hasLimit,
    required this.availableTokens,
    required this.waitTimeMs,
  });

  bool get canExecute => !hasLimit || waitTimeMs == 0;
}
