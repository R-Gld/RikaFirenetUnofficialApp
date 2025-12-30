// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_credentials.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthCredentialsImpl _$$AuthCredentialsImplFromJson(
  Map<String, dynamic> json,
) => _$AuthCredentialsImpl(
  email: json['email'] as String,
  password: json['password'] as String,
);

Map<String, dynamic> _$$AuthCredentialsImplToJson(
  _$AuthCredentialsImpl instance,
) => <String, dynamic>{'email': instance.email, 'password': instance.password};

_$SessionDataImpl _$$SessionDataImplFromJson(Map<String, dynamic> json) =>
    _$SessionDataImpl(
      sessionCookie: json['sessionCookie'] as String,
      expiresAt: DateTime.parse(json['expiresAt'] as String),
    );

Map<String, dynamic> _$$SessionDataImplToJson(_$SessionDataImpl instance) =>
    <String, dynamic>{
      'sessionCookie': instance.sessionCookie,
      'expiresAt': instance.expiresAt.toIso8601String(),
    };
