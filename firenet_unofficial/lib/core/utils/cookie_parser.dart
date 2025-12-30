/// Utility class for parsing cookies from HTTP responses
class CookieParser {
  CookieParser._();

  /// Extracts the connect.sid value from Set-Cookie header
  ///
  /// Example input: "connect.sid=s%3AabcdefG; Path=/; Expires=Thu, 01 Jan 2025 00:00:00 GMT"
  /// Returns: "s%3AabcdefG"
  static String? extractSessionCookie(String cookieHeader) {
    final regex = RegExp(r'connect\.sid=([^;]+)');
    final match = regex.firstMatch(cookieHeader);
    return match?.group(1);
  }

  /// Extracts cookie expiration from Set-Cookie header
  ///
  /// Example input: "connect.sid=abc; Expires=Thu, 01 Jan 2025 00:00:00 GMT"
  /// Returns: DateTime object for the expiration
  static DateTime? extractCookieExpiry(String cookieHeader) {
    final regex = RegExp(r'Expires=([^;]+)', caseSensitive: false);
    final match = regex.firstMatch(cookieHeader);
    if (match != null) {
      try {
        return DateTime.parse(match.group(1)!);
      } catch (e) {
        // If parsing fails, return null
        return null;
      }
    }
    return null;
  }

  /// Checks if a cookie is still valid based on its expiration
  ///
  /// Returns true if the expiry date is in the future, false otherwise
  static bool isCookieValid(DateTime? expiry) {
    if (expiry == null) return false;
    return DateTime.now().isBefore(expiry);
  }
}
