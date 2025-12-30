// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NotificationSettings _$NotificationSettingsFromJson(Map<String, dynamic> json) {
  return _NotificationSettings.fromJson(json);
}

/// @nodoc
mixin _$NotificationSettings {
  /// Master switch to enable/disable all notifications
  bool get enabled => throw _privateConstructorUsedError;

  /// Polling interval in minutes (15, 30, 45, 60)
  int get pollingIntervalMinutes => throw _privateConstructorUsedError;

  /// List of sensor field names to watch for changes
  /// Example: ["statusMainState", "inputRoomTemperature", "statusError"]
  List<String> get watchedFields => throw _privateConstructorUsedError;

  /// Optional thresholds for numeric fields
  /// Example: {"inputRoomTemperature": {"min": 18.0, "max": 24.0}}
  Map<String, dynamic> get fieldThresholds =>
      throw _privateConstructorUsedError;

  /// Last time a notification was sent (anti-spam)
  DateTime? get lastNotificationTime => throw _privateConstructorUsedError;

  /// Serializes this NotificationSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationSettingsCopyWith<NotificationSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationSettingsCopyWith<$Res> {
  factory $NotificationSettingsCopyWith(
    NotificationSettings value,
    $Res Function(NotificationSettings) then,
  ) = _$NotificationSettingsCopyWithImpl<$Res, NotificationSettings>;
  @useResult
  $Res call({
    bool enabled,
    int pollingIntervalMinutes,
    List<String> watchedFields,
    Map<String, dynamic> fieldThresholds,
    DateTime? lastNotificationTime,
  });
}

/// @nodoc
class _$NotificationSettingsCopyWithImpl<
  $Res,
  $Val extends NotificationSettings
>
    implements $NotificationSettingsCopyWith<$Res> {
  _$NotificationSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
    Object? pollingIntervalMinutes = null,
    Object? watchedFields = null,
    Object? fieldThresholds = null,
    Object? lastNotificationTime = freezed,
  }) {
    return _then(
      _value.copyWith(
            enabled: null == enabled
                ? _value.enabled
                : enabled // ignore: cast_nullable_to_non_nullable
                      as bool,
            pollingIntervalMinutes: null == pollingIntervalMinutes
                ? _value.pollingIntervalMinutes
                : pollingIntervalMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
            watchedFields: null == watchedFields
                ? _value.watchedFields
                : watchedFields // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            fieldThresholds: null == fieldThresholds
                ? _value.fieldThresholds
                : fieldThresholds // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            lastNotificationTime: freezed == lastNotificationTime
                ? _value.lastNotificationTime
                : lastNotificationTime // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationSettingsImplCopyWith<$Res>
    implements $NotificationSettingsCopyWith<$Res> {
  factory _$$NotificationSettingsImplCopyWith(
    _$NotificationSettingsImpl value,
    $Res Function(_$NotificationSettingsImpl) then,
  ) = __$$NotificationSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool enabled,
    int pollingIntervalMinutes,
    List<String> watchedFields,
    Map<String, dynamic> fieldThresholds,
    DateTime? lastNotificationTime,
  });
}

/// @nodoc
class __$$NotificationSettingsImplCopyWithImpl<$Res>
    extends _$NotificationSettingsCopyWithImpl<$Res, _$NotificationSettingsImpl>
    implements _$$NotificationSettingsImplCopyWith<$Res> {
  __$$NotificationSettingsImplCopyWithImpl(
    _$NotificationSettingsImpl _value,
    $Res Function(_$NotificationSettingsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
    Object? pollingIntervalMinutes = null,
    Object? watchedFields = null,
    Object? fieldThresholds = null,
    Object? lastNotificationTime = freezed,
  }) {
    return _then(
      _$NotificationSettingsImpl(
        enabled: null == enabled
            ? _value.enabled
            : enabled // ignore: cast_nullable_to_non_nullable
                  as bool,
        pollingIntervalMinutes: null == pollingIntervalMinutes
            ? _value.pollingIntervalMinutes
            : pollingIntervalMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
        watchedFields: null == watchedFields
            ? _value._watchedFields
            : watchedFields // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        fieldThresholds: null == fieldThresholds
            ? _value._fieldThresholds
            : fieldThresholds // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        lastNotificationTime: freezed == lastNotificationTime
            ? _value.lastNotificationTime
            : lastNotificationTime // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationSettingsImpl implements _NotificationSettings {
  const _$NotificationSettingsImpl({
    this.enabled = false,
    this.pollingIntervalMinutes = 30,
    final List<String> watchedFields = const [],
    final Map<String, dynamic> fieldThresholds = const {},
    this.lastNotificationTime,
  }) : _watchedFields = watchedFields,
       _fieldThresholds = fieldThresholds;

  factory _$NotificationSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationSettingsImplFromJson(json);

  /// Master switch to enable/disable all notifications
  @override
  @JsonKey()
  final bool enabled;

  /// Polling interval in minutes (15, 30, 45, 60)
  @override
  @JsonKey()
  final int pollingIntervalMinutes;

  /// List of sensor field names to watch for changes
  /// Example: ["statusMainState", "inputRoomTemperature", "statusError"]
  final List<String> _watchedFields;

  /// List of sensor field names to watch for changes
  /// Example: ["statusMainState", "inputRoomTemperature", "statusError"]
  @override
  @JsonKey()
  List<String> get watchedFields {
    if (_watchedFields is EqualUnmodifiableListView) return _watchedFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_watchedFields);
  }

  /// Optional thresholds for numeric fields
  /// Example: {"inputRoomTemperature": {"min": 18.0, "max": 24.0}}
  final Map<String, dynamic> _fieldThresholds;

  /// Optional thresholds for numeric fields
  /// Example: {"inputRoomTemperature": {"min": 18.0, "max": 24.0}}
  @override
  @JsonKey()
  Map<String, dynamic> get fieldThresholds {
    if (_fieldThresholds is EqualUnmodifiableMapView) return _fieldThresholds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_fieldThresholds);
  }

  /// Last time a notification was sent (anti-spam)
  @override
  final DateTime? lastNotificationTime;

  @override
  String toString() {
    return 'NotificationSettings(enabled: $enabled, pollingIntervalMinutes: $pollingIntervalMinutes, watchedFields: $watchedFields, fieldThresholds: $fieldThresholds, lastNotificationTime: $lastNotificationTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationSettingsImpl &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.pollingIntervalMinutes, pollingIntervalMinutes) ||
                other.pollingIntervalMinutes == pollingIntervalMinutes) &&
            const DeepCollectionEquality().equals(
              other._watchedFields,
              _watchedFields,
            ) &&
            const DeepCollectionEquality().equals(
              other._fieldThresholds,
              _fieldThresholds,
            ) &&
            (identical(other.lastNotificationTime, lastNotificationTime) ||
                other.lastNotificationTime == lastNotificationTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    enabled,
    pollingIntervalMinutes,
    const DeepCollectionEquality().hash(_watchedFields),
    const DeepCollectionEquality().hash(_fieldThresholds),
    lastNotificationTime,
  );

  /// Create a copy of NotificationSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationSettingsImplCopyWith<_$NotificationSettingsImpl>
  get copyWith =>
      __$$NotificationSettingsImplCopyWithImpl<_$NotificationSettingsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationSettingsImplToJson(this);
  }
}

abstract class _NotificationSettings implements NotificationSettings {
  const factory _NotificationSettings({
    final bool enabled,
    final int pollingIntervalMinutes,
    final List<String> watchedFields,
    final Map<String, dynamic> fieldThresholds,
    final DateTime? lastNotificationTime,
  }) = _$NotificationSettingsImpl;

  factory _NotificationSettings.fromJson(Map<String, dynamic> json) =
      _$NotificationSettingsImpl.fromJson;

  /// Master switch to enable/disable all notifications
  @override
  bool get enabled;

  /// Polling interval in minutes (15, 30, 45, 60)
  @override
  int get pollingIntervalMinutes;

  /// List of sensor field names to watch for changes
  /// Example: ["statusMainState", "inputRoomTemperature", "statusError"]
  @override
  List<String> get watchedFields;

  /// Optional thresholds for numeric fields
  /// Example: {"inputRoomTemperature": {"min": 18.0, "max": 24.0}}
  @override
  Map<String, dynamic> get fieldThresholds;

  /// Last time a notification was sent (anti-spam)
  @override
  DateTime? get lastNotificationTime;

  /// Create a copy of NotificationSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationSettingsImplCopyWith<_$NotificationSettingsImpl>
  get copyWith => throw _privateConstructorUsedError;
}
