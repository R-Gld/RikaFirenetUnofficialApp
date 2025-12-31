/// Token bucket for rate limiting
///
/// Implements leaky bucket algorithm: tokens refill at constant rate,
/// requests consume tokens
class TokenBucket {
  final int capacity;
  final double refillRate; // tokens per second

  double _tokens;
  DateTime _lastRefill;

  TokenBucket({
    required this.capacity,
    required this.refillRate,
  })  : _tokens = capacity.toDouble(),
        _lastRefill = DateTime.now();

  /// Try to consume tokens
  ///
  /// Returns true if tokens available, false otherwise
  bool tryConsume({int tokens = 1}) {
    _refill();

    if (_tokens >= tokens) {
      _tokens -= tokens;
      return true;
    }

    return false;
  }

  /// Get time until next token available (in milliseconds)
  int getWaitTime({int tokens = 1}) {
    _refill();

    if (_tokens >= tokens) {
      return 0;
    }

    final tokensNeeded = tokens - _tokens;
    final waitSeconds = tokensNeeded / refillRate;
    return (waitSeconds * 1000).ceil();
  }

  /// Refill tokens based on elapsed time
  void _refill() {
    final now = DateTime.now();
    final elapsedSeconds = now.difference(_lastRefill).inMilliseconds / 1000.0;

    final tokensToAdd = elapsedSeconds * refillRate;
    _tokens = (_tokens + tokensToAdd).clamp(0.0, capacity.toDouble());

    _lastRefill = now;
  }

  /// Get current token count
  double get availableTokens {
    _refill();
    return _tokens;
  }

  /// Reset bucket to full capacity
  void reset() {
    _tokens = capacity.toDouble();
    _lastRefill = DateTime.now();
  }
}
