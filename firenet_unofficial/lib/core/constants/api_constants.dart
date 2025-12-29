/// API constants for Rika Firenet integration
class ApiConstants {
  ApiConstants._();

  // Base Configuration
  static const String baseUrl = 'https://www.rika-firenet.com';
  static const Duration requestTimeout = Duration(seconds: 10);
  static const Duration connectTimeout = Duration(seconds: 10);
  static const Duration receiveTimeout = Duration(seconds: 10);

  // Endpoints
  static const String loginEndpoint = '/web/login';
  static const String summaryEndpoint = '/web/summary';

  /// Returns the status endpoint for a given stove ID
  static String statusEndpoint(String stoveId) => '/api/client/$stoveId/status';

  /// Returns the controls endpoint for a given stove ID
  static String controlsEndpoint(String stoveId) => '/api/client/$stoveId/controls';

  // Cookie Configuration
  static const String sessionCookieName = 'connect.sid';

  // Polling Configuration
  static const Duration foregroundPollingInterval = Duration(seconds: 15);
  static const Duration backgroundPollingInterval = Duration(seconds: 60);
  static const Duration minPollingInterval = Duration(seconds: 10);

  // Retry Configuration
  static const int maxControlUpdateRetries = 10;
  static const Duration controlUpdateRetryDelay = Duration(seconds: 2);
  static const int maxAuthRetries = 3;

  // Success Indicators
  static const String loginSuccessIndicator = '/logout';
  static const String controlUpdateSuccessIndicator = 'OK';
}
