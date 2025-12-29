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
    String message = 'Authentication failed',
    dynamic error,
  ]) : super(message, error);
}

/// Thrown when session has expired
class SessionExpiredException extends RikaException {
  const SessionExpiredException([
    String message = 'Session expired',
    dynamic error,
  ]) : super(message, error);
}

/// Thrown when network request fails
class NetworkException extends RikaException {
  const NetworkException([
    String message = 'Network error',
    dynamic error,
  ]) : super(message, error);
}

/// Thrown when API returns unexpected response
class ApiException extends RikaException {
  final int? statusCode;

  const ApiException([
    String message = 'API error',
    this.statusCode,
    dynamic error,
  ]) : super(message, error);
}

/// Thrown when parsing fails
class ParsingException extends RikaException {
  const ParsingException([
    String message = 'Failed to parse response',
    dynamic error,
  ]) : super(message, error);
}

/// Thrown when control update times out
class ControlUpdateException extends RikaException {
  const ControlUpdateException([
    String message = 'Control update failed',
    dynamic error,
  ]) : super(message, error);
}

/// Thrown when timeout occurs
class TimeoutException extends RikaException {
  const TimeoutException([
    String message = 'Request timeout',
    dynamic error,
  ]) : super(message, error);
}
