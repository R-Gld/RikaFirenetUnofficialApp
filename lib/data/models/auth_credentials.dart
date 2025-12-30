import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_credentials.freezed.dart';
part 'auth_credentials.g.dart';

/// User credentials for authentication
@freezed
class AuthCredentials with _$AuthCredentials {
  const factory AuthCredentials({
    required String email,
    required String password,
  }) = _AuthCredentials;

  factory AuthCredentials.fromJson(Map<String, dynamic> json) =>
      _$AuthCredentialsFromJson(json);
}

/// Session data including cookie and expiration
@freezed
class SessionData with _$SessionData {
  const SessionData._();

  const factory SessionData({
    required String sessionCookie,
    required DateTime expiresAt,
  }) = _SessionData;

  factory SessionData.fromJson(Map<String, dynamic> json) =>
      _$SessionDataFromJson(json);

  /// Checks if the session is still valid
  bool get isValid => DateTime.now().isBefore(expiresAt);
}
