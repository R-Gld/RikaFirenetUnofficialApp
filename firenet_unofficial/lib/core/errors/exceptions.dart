/// Base exception for all API-related errors
abstract class RikaException implements Exception {
  final String message;
  final dynamic originalError;

  const RikaException(this.message, [this.originalError]);

  @override
  String toString() => 'RikaException: $message';
}

/// Thrown when authentication fails
class AuthenticationException extends RikaException {
  const AuthenticationException([
    super.message = 'Authentication failed',
    super.originalError,
  ]);
}

/// Thrown when session has expired
class SessionExpiredException extends RikaException {
  const SessionExpiredException([
    super.message = 'Session expired',
    super.originalError,
  ]);
}

/// Thrown when network request fails
class NetworkException extends RikaException {
  const NetworkException([
    super.message = 'Network error',
    super.originalError,
  ]);
}

/// Thrown when API returns unexpected response
class ApiException extends RikaException {
  final int? statusCode;

  const ApiException([
    super.message = 'API error',
    this.statusCode,
    super.originalError,
  ]);
}

/// Thrown when parsing fails
class ParsingException extends RikaException {
  const ParsingException([
    super.message = 'Failed to parse response',
    super.originalError,
  ]);
}

/// Thrown when control update times out
class ControlUpdateException extends RikaException {
  const ControlUpdateException([
    super.message = 'Control update failed',
    super.originalError,
  ]);
}

/// Thrown when timeout occurs
class TimeoutException extends RikaException {
  const TimeoutException([
    super.message = 'Request timeout',
    super.originalError,
  ]);
}
