// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AuthCredentials _$AuthCredentialsFromJson(Map<String, dynamic> json) {
  return _AuthCredentials.fromJson(json);
}

/// @nodoc
mixin _$AuthCredentials {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this AuthCredentials to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthCredentials
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthCredentialsCopyWith<AuthCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthCredentialsCopyWith<$Res> {
  factory $AuthCredentialsCopyWith(
    AuthCredentials value,
    $Res Function(AuthCredentials) then,
  ) = _$AuthCredentialsCopyWithImpl<$Res, AuthCredentials>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$AuthCredentialsCopyWithImpl<$Res, $Val extends AuthCredentials>
    implements $AuthCredentialsCopyWith<$Res> {
  _$AuthCredentialsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthCredentials
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? password = null}) {
    return _then(
      _value.copyWith(
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            password: null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AuthCredentialsImplCopyWith<$Res>
    implements $AuthCredentialsCopyWith<$Res> {
  factory _$$AuthCredentialsImplCopyWith(
    _$AuthCredentialsImpl value,
    $Res Function(_$AuthCredentialsImpl) then,
  ) = __$$AuthCredentialsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$AuthCredentialsImplCopyWithImpl<$Res>
    extends _$AuthCredentialsCopyWithImpl<$Res, _$AuthCredentialsImpl>
    implements _$$AuthCredentialsImplCopyWith<$Res> {
  __$$AuthCredentialsImplCopyWithImpl(
    _$AuthCredentialsImpl _value,
    $Res Function(_$AuthCredentialsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthCredentials
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? password = null}) {
    return _then(
      _$AuthCredentialsImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthCredentialsImpl implements _AuthCredentials {
  const _$AuthCredentialsImpl({required this.email, required this.password});

  factory _$AuthCredentialsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthCredentialsImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthCredentials(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthCredentialsImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthCredentials
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthCredentialsImplCopyWith<_$AuthCredentialsImpl> get copyWith =>
      __$$AuthCredentialsImplCopyWithImpl<_$AuthCredentialsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthCredentialsImplToJson(this);
  }
}

abstract class _AuthCredentials implements AuthCredentials {
  const factory _AuthCredentials({
    required final String email,
    required final String password,
  }) = _$AuthCredentialsImpl;

  factory _AuthCredentials.fromJson(Map<String, dynamic> json) =
      _$AuthCredentialsImpl.fromJson;

  @override
  String get email;
  @override
  String get password;

  /// Create a copy of AuthCredentials
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthCredentialsImplCopyWith<_$AuthCredentialsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionData _$SessionDataFromJson(Map<String, dynamic> json) {
  return _SessionData.fromJson(json);
}

/// @nodoc
mixin _$SessionData {
  String get sessionCookie => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;

  /// Serializes this SessionData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionDataCopyWith<SessionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionDataCopyWith<$Res> {
  factory $SessionDataCopyWith(
    SessionData value,
    $Res Function(SessionData) then,
  ) = _$SessionDataCopyWithImpl<$Res, SessionData>;
  @useResult
  $Res call({String sessionCookie, DateTime expiresAt});
}

/// @nodoc
class _$SessionDataCopyWithImpl<$Res, $Val extends SessionData>
    implements $SessionDataCopyWith<$Res> {
  _$SessionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sessionCookie = null, Object? expiresAt = null}) {
    return _then(
      _value.copyWith(
            sessionCookie: null == sessionCookie
                ? _value.sessionCookie
                : sessionCookie // ignore: cast_nullable_to_non_nullable
                      as String,
            expiresAt: null == expiresAt
                ? _value.expiresAt
                : expiresAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SessionDataImplCopyWith<$Res>
    implements $SessionDataCopyWith<$Res> {
  factory _$$SessionDataImplCopyWith(
    _$SessionDataImpl value,
    $Res Function(_$SessionDataImpl) then,
  ) = __$$SessionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sessionCookie, DateTime expiresAt});
}

/// @nodoc
class __$$SessionDataImplCopyWithImpl<$Res>
    extends _$SessionDataCopyWithImpl<$Res, _$SessionDataImpl>
    implements _$$SessionDataImplCopyWith<$Res> {
  __$$SessionDataImplCopyWithImpl(
    _$SessionDataImpl _value,
    $Res Function(_$SessionDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SessionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sessionCookie = null, Object? expiresAt = null}) {
    return _then(
      _$SessionDataImpl(
        sessionCookie: null == sessionCookie
            ? _value.sessionCookie
            : sessionCookie // ignore: cast_nullable_to_non_nullable
                  as String,
        expiresAt: null == expiresAt
            ? _value.expiresAt
            : expiresAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionDataImpl extends _SessionData {
  const _$SessionDataImpl({
    required this.sessionCookie,
    required this.expiresAt,
  }) : super._();

  factory _$SessionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionDataImplFromJson(json);

  @override
  final String sessionCookie;
  @override
  final DateTime expiresAt;

  @override
  String toString() {
    return 'SessionData(sessionCookie: $sessionCookie, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionDataImpl &&
            (identical(other.sessionCookie, sessionCookie) ||
                other.sessionCookie == sessionCookie) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sessionCookie, expiresAt);

  /// Create a copy of SessionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionDataImplCopyWith<_$SessionDataImpl> get copyWith =>
      __$$SessionDataImplCopyWithImpl<_$SessionDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionDataImplToJson(this);
  }
}

abstract class _SessionData extends SessionData {
  const factory _SessionData({
    required final String sessionCookie,
    required final DateTime expiresAt,
  }) = _$SessionDataImpl;
  const _SessionData._() : super._();

  factory _SessionData.fromJson(Map<String, dynamic> json) =
      _$SessionDataImpl.fromJson;

  @override
  String get sessionCookie;
  @override
  DateTime get expiresAt;

  /// Create a copy of SessionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionDataImplCopyWith<_$SessionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
