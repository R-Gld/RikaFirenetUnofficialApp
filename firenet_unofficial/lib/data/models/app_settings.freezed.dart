// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AppSettings _$AppSettingsFromJson(Map<String, dynamic> json) {
  return _AppSettings.fromJson(json);
}

/// @nodoc
mixin _$AppSettings {
  // Theme settings
  AppThemeMode get themeMode =>
      throw _privateConstructorUsedError; // Language settings (null = system default)
  @LocaleConverter()
  Locale? get appLocale => throw _privateConstructorUsedError; // Advanced controls visibility
  bool get showEcoMode => throw _privateConstructorUsedError;
  bool get showHeatingSchedule => throw _privateConstructorUsedError;
  bool get showRoomPowerRequest => throw _privateConstructorUsedError;
  bool get showConvectionFans => throw _privateConstructorUsedError;
  bool get showFrostProtection => throw _privateConstructorUsedError;
  bool get showTemperatureOffset => throw _privateConstructorUsedError;
  bool get showBakeTemperature =>
      throw _privateConstructorUsedError; // Info panels visibility
  bool get showErrorWarningPanel => throw _privateConstructorUsedError;
  bool get showSafetyStatusPanel => throw _privateConstructorUsedError;
  bool get showSensorInfoPanel => throw _privateConstructorUsedError;
  bool get showOutputsInfoPanel => throw _privateConstructorUsedError;
  bool get showStatisticsPanel => throw _privateConstructorUsedError;
  bool get showChartsPanel =>
      throw _privateConstructorUsedError; // Background polling
  bool get continuousPollingEnabled => throw _privateConstructorUsedError;

  /// Serializes this AppSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSettingsCopyWith<AppSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsCopyWith<$Res> {
  factory $AppSettingsCopyWith(
    AppSettings value,
    $Res Function(AppSettings) then,
  ) = _$AppSettingsCopyWithImpl<$Res, AppSettings>;
  @useResult
  $Res call({
    AppThemeMode themeMode,
    @LocaleConverter() Locale? appLocale,
    bool showEcoMode,
    bool showHeatingSchedule,
    bool showRoomPowerRequest,
    bool showConvectionFans,
    bool showFrostProtection,
    bool showTemperatureOffset,
    bool showBakeTemperature,
    bool showErrorWarningPanel,
    bool showSafetyStatusPanel,
    bool showSensorInfoPanel,
    bool showOutputsInfoPanel,
    bool showStatisticsPanel,
    bool showChartsPanel,
    bool continuousPollingEnabled,
  });
}

/// @nodoc
class _$AppSettingsCopyWithImpl<$Res, $Val extends AppSettings>
    implements $AppSettingsCopyWith<$Res> {
  _$AppSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? appLocale = freezed,
    Object? showEcoMode = null,
    Object? showHeatingSchedule = null,
    Object? showRoomPowerRequest = null,
    Object? showConvectionFans = null,
    Object? showFrostProtection = null,
    Object? showTemperatureOffset = null,
    Object? showBakeTemperature = null,
    Object? showErrorWarningPanel = null,
    Object? showSafetyStatusPanel = null,
    Object? showSensorInfoPanel = null,
    Object? showOutputsInfoPanel = null,
    Object? showStatisticsPanel = null,
    Object? showChartsPanel = null,
    Object? continuousPollingEnabled = null,
  }) {
    return _then(
      _value.copyWith(
            themeMode: null == themeMode
                ? _value.themeMode
                : themeMode // ignore: cast_nullable_to_non_nullable
                      as AppThemeMode,
            appLocale: freezed == appLocale
                ? _value.appLocale
                : appLocale // ignore: cast_nullable_to_non_nullable
                      as Locale?,
            showEcoMode: null == showEcoMode
                ? _value.showEcoMode
                : showEcoMode // ignore: cast_nullable_to_non_nullable
                      as bool,
            showHeatingSchedule: null == showHeatingSchedule
                ? _value.showHeatingSchedule
                : showHeatingSchedule // ignore: cast_nullable_to_non_nullable
                      as bool,
            showRoomPowerRequest: null == showRoomPowerRequest
                ? _value.showRoomPowerRequest
                : showRoomPowerRequest // ignore: cast_nullable_to_non_nullable
                      as bool,
            showConvectionFans: null == showConvectionFans
                ? _value.showConvectionFans
                : showConvectionFans // ignore: cast_nullable_to_non_nullable
                      as bool,
            showFrostProtection: null == showFrostProtection
                ? _value.showFrostProtection
                : showFrostProtection // ignore: cast_nullable_to_non_nullable
                      as bool,
            showTemperatureOffset: null == showTemperatureOffset
                ? _value.showTemperatureOffset
                : showTemperatureOffset // ignore: cast_nullable_to_non_nullable
                      as bool,
            showBakeTemperature: null == showBakeTemperature
                ? _value.showBakeTemperature
                : showBakeTemperature // ignore: cast_nullable_to_non_nullable
                      as bool,
            showErrorWarningPanel: null == showErrorWarningPanel
                ? _value.showErrorWarningPanel
                : showErrorWarningPanel // ignore: cast_nullable_to_non_nullable
                      as bool,
            showSafetyStatusPanel: null == showSafetyStatusPanel
                ? _value.showSafetyStatusPanel
                : showSafetyStatusPanel // ignore: cast_nullable_to_non_nullable
                      as bool,
            showSensorInfoPanel: null == showSensorInfoPanel
                ? _value.showSensorInfoPanel
                : showSensorInfoPanel // ignore: cast_nullable_to_non_nullable
                      as bool,
            showOutputsInfoPanel: null == showOutputsInfoPanel
                ? _value.showOutputsInfoPanel
                : showOutputsInfoPanel // ignore: cast_nullable_to_non_nullable
                      as bool,
            showStatisticsPanel: null == showStatisticsPanel
                ? _value.showStatisticsPanel
                : showStatisticsPanel // ignore: cast_nullable_to_non_nullable
                      as bool,
            showChartsPanel: null == showChartsPanel
                ? _value.showChartsPanel
                : showChartsPanel // ignore: cast_nullable_to_non_nullable
                      as bool,
            continuousPollingEnabled: null == continuousPollingEnabled
                ? _value.continuousPollingEnabled
                : continuousPollingEnabled // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AppSettingsImplCopyWith<$Res>
    implements $AppSettingsCopyWith<$Res> {
  factory _$$AppSettingsImplCopyWith(
    _$AppSettingsImpl value,
    $Res Function(_$AppSettingsImpl) then,
  ) = __$$AppSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    AppThemeMode themeMode,
    @LocaleConverter() Locale? appLocale,
    bool showEcoMode,
    bool showHeatingSchedule,
    bool showRoomPowerRequest,
    bool showConvectionFans,
    bool showFrostProtection,
    bool showTemperatureOffset,
    bool showBakeTemperature,
    bool showErrorWarningPanel,
    bool showSafetyStatusPanel,
    bool showSensorInfoPanel,
    bool showOutputsInfoPanel,
    bool showStatisticsPanel,
    bool showChartsPanel,
    bool continuousPollingEnabled,
  });
}

/// @nodoc
class __$$AppSettingsImplCopyWithImpl<$Res>
    extends _$AppSettingsCopyWithImpl<$Res, _$AppSettingsImpl>
    implements _$$AppSettingsImplCopyWith<$Res> {
  __$$AppSettingsImplCopyWithImpl(
    _$AppSettingsImpl _value,
    $Res Function(_$AppSettingsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? appLocale = freezed,
    Object? showEcoMode = null,
    Object? showHeatingSchedule = null,
    Object? showRoomPowerRequest = null,
    Object? showConvectionFans = null,
    Object? showFrostProtection = null,
    Object? showTemperatureOffset = null,
    Object? showBakeTemperature = null,
    Object? showErrorWarningPanel = null,
    Object? showSafetyStatusPanel = null,
    Object? showSensorInfoPanel = null,
    Object? showOutputsInfoPanel = null,
    Object? showStatisticsPanel = null,
    Object? showChartsPanel = null,
    Object? continuousPollingEnabled = null,
  }) {
    return _then(
      _$AppSettingsImpl(
        themeMode: null == themeMode
            ? _value.themeMode
            : themeMode // ignore: cast_nullable_to_non_nullable
                  as AppThemeMode,
        appLocale: freezed == appLocale
            ? _value.appLocale
            : appLocale // ignore: cast_nullable_to_non_nullable
                  as Locale?,
        showEcoMode: null == showEcoMode
            ? _value.showEcoMode
            : showEcoMode // ignore: cast_nullable_to_non_nullable
                  as bool,
        showHeatingSchedule: null == showHeatingSchedule
            ? _value.showHeatingSchedule
            : showHeatingSchedule // ignore: cast_nullable_to_non_nullable
                  as bool,
        showRoomPowerRequest: null == showRoomPowerRequest
            ? _value.showRoomPowerRequest
            : showRoomPowerRequest // ignore: cast_nullable_to_non_nullable
                  as bool,
        showConvectionFans: null == showConvectionFans
            ? _value.showConvectionFans
            : showConvectionFans // ignore: cast_nullable_to_non_nullable
                  as bool,
        showFrostProtection: null == showFrostProtection
            ? _value.showFrostProtection
            : showFrostProtection // ignore: cast_nullable_to_non_nullable
                  as bool,
        showTemperatureOffset: null == showTemperatureOffset
            ? _value.showTemperatureOffset
            : showTemperatureOffset // ignore: cast_nullable_to_non_nullable
                  as bool,
        showBakeTemperature: null == showBakeTemperature
            ? _value.showBakeTemperature
            : showBakeTemperature // ignore: cast_nullable_to_non_nullable
                  as bool,
        showErrorWarningPanel: null == showErrorWarningPanel
            ? _value.showErrorWarningPanel
            : showErrorWarningPanel // ignore: cast_nullable_to_non_nullable
                  as bool,
        showSafetyStatusPanel: null == showSafetyStatusPanel
            ? _value.showSafetyStatusPanel
            : showSafetyStatusPanel // ignore: cast_nullable_to_non_nullable
                  as bool,
        showSensorInfoPanel: null == showSensorInfoPanel
            ? _value.showSensorInfoPanel
            : showSensorInfoPanel // ignore: cast_nullable_to_non_nullable
                  as bool,
        showOutputsInfoPanel: null == showOutputsInfoPanel
            ? _value.showOutputsInfoPanel
            : showOutputsInfoPanel // ignore: cast_nullable_to_non_nullable
                  as bool,
        showStatisticsPanel: null == showStatisticsPanel
            ? _value.showStatisticsPanel
            : showStatisticsPanel // ignore: cast_nullable_to_non_nullable
                  as bool,
        showChartsPanel: null == showChartsPanel
            ? _value.showChartsPanel
            : showChartsPanel // ignore: cast_nullable_to_non_nullable
                  as bool,
        continuousPollingEnabled: null == continuousPollingEnabled
            ? _value.continuousPollingEnabled
            : continuousPollingEnabled // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AppSettingsImpl implements _AppSettings {
  const _$AppSettingsImpl({
    this.themeMode = AppThemeMode.system,
    @LocaleConverter() this.appLocale,
    this.showEcoMode = true,
    this.showHeatingSchedule = true,
    this.showRoomPowerRequest = false,
    this.showConvectionFans = false,
    this.showFrostProtection = false,
    this.showTemperatureOffset = false,
    this.showBakeTemperature = false,
    this.showErrorWarningPanel = true,
    this.showSafetyStatusPanel = true,
    this.showSensorInfoPanel = true,
    this.showOutputsInfoPanel = true,
    this.showStatisticsPanel = true,
    this.showChartsPanel = true,
    this.continuousPollingEnabled = false,
  });

  factory _$AppSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppSettingsImplFromJson(json);

  // Theme settings
  @override
  @JsonKey()
  final AppThemeMode themeMode;
  // Language settings (null = system default)
  @override
  @LocaleConverter()
  final Locale? appLocale;
  // Advanced controls visibility
  @override
  @JsonKey()
  final bool showEcoMode;
  @override
  @JsonKey()
  final bool showHeatingSchedule;
  @override
  @JsonKey()
  final bool showRoomPowerRequest;
  @override
  @JsonKey()
  final bool showConvectionFans;
  @override
  @JsonKey()
  final bool showFrostProtection;
  @override
  @JsonKey()
  final bool showTemperatureOffset;
  @override
  @JsonKey()
  final bool showBakeTemperature;
  // Info panels visibility
  @override
  @JsonKey()
  final bool showErrorWarningPanel;
  @override
  @JsonKey()
  final bool showSafetyStatusPanel;
  @override
  @JsonKey()
  final bool showSensorInfoPanel;
  @override
  @JsonKey()
  final bool showOutputsInfoPanel;
  @override
  @JsonKey()
  final bool showStatisticsPanel;
  @override
  @JsonKey()
  final bool showChartsPanel;
  // Background polling
  @override
  @JsonKey()
  final bool continuousPollingEnabled;

  @override
  String toString() {
    return 'AppSettings(themeMode: $themeMode, appLocale: $appLocale, showEcoMode: $showEcoMode, showHeatingSchedule: $showHeatingSchedule, showRoomPowerRequest: $showRoomPowerRequest, showConvectionFans: $showConvectionFans, showFrostProtection: $showFrostProtection, showTemperatureOffset: $showTemperatureOffset, showBakeTemperature: $showBakeTemperature, showErrorWarningPanel: $showErrorWarningPanel, showSafetyStatusPanel: $showSafetyStatusPanel, showSensorInfoPanel: $showSensorInfoPanel, showOutputsInfoPanel: $showOutputsInfoPanel, showStatisticsPanel: $showStatisticsPanel, showChartsPanel: $showChartsPanel, continuousPollingEnabled: $continuousPollingEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingsImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.appLocale, appLocale) ||
                other.appLocale == appLocale) &&
            (identical(other.showEcoMode, showEcoMode) ||
                other.showEcoMode == showEcoMode) &&
            (identical(other.showHeatingSchedule, showHeatingSchedule) ||
                other.showHeatingSchedule == showHeatingSchedule) &&
            (identical(other.showRoomPowerRequest, showRoomPowerRequest) ||
                other.showRoomPowerRequest == showRoomPowerRequest) &&
            (identical(other.showConvectionFans, showConvectionFans) ||
                other.showConvectionFans == showConvectionFans) &&
            (identical(other.showFrostProtection, showFrostProtection) ||
                other.showFrostProtection == showFrostProtection) &&
            (identical(other.showTemperatureOffset, showTemperatureOffset) ||
                other.showTemperatureOffset == showTemperatureOffset) &&
            (identical(other.showBakeTemperature, showBakeTemperature) ||
                other.showBakeTemperature == showBakeTemperature) &&
            (identical(other.showErrorWarningPanel, showErrorWarningPanel) ||
                other.showErrorWarningPanel == showErrorWarningPanel) &&
            (identical(other.showSafetyStatusPanel, showSafetyStatusPanel) ||
                other.showSafetyStatusPanel == showSafetyStatusPanel) &&
            (identical(other.showSensorInfoPanel, showSensorInfoPanel) ||
                other.showSensorInfoPanel == showSensorInfoPanel) &&
            (identical(other.showOutputsInfoPanel, showOutputsInfoPanel) ||
                other.showOutputsInfoPanel == showOutputsInfoPanel) &&
            (identical(other.showStatisticsPanel, showStatisticsPanel) ||
                other.showStatisticsPanel == showStatisticsPanel) &&
            (identical(other.showChartsPanel, showChartsPanel) ||
                other.showChartsPanel == showChartsPanel) &&
            (identical(
                  other.continuousPollingEnabled,
                  continuousPollingEnabled,
                ) ||
                other.continuousPollingEnabled == continuousPollingEnabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    themeMode,
    appLocale,
    showEcoMode,
    showHeatingSchedule,
    showRoomPowerRequest,
    showConvectionFans,
    showFrostProtection,
    showTemperatureOffset,
    showBakeTemperature,
    showErrorWarningPanel,
    showSafetyStatusPanel,
    showSensorInfoPanel,
    showOutputsInfoPanel,
    showStatisticsPanel,
    showChartsPanel,
    continuousPollingEnabled,
  );

  /// Create a copy of AppSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingsImplCopyWith<_$AppSettingsImpl> get copyWith =>
      __$$AppSettingsImplCopyWithImpl<_$AppSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppSettingsImplToJson(this);
  }
}

abstract class _AppSettings implements AppSettings {
  const factory _AppSettings({
    final AppThemeMode themeMode,
    @LocaleConverter() final Locale? appLocale,
    final bool showEcoMode,
    final bool showHeatingSchedule,
    final bool showRoomPowerRequest,
    final bool showConvectionFans,
    final bool showFrostProtection,
    final bool showTemperatureOffset,
    final bool showBakeTemperature,
    final bool showErrorWarningPanel,
    final bool showSafetyStatusPanel,
    final bool showSensorInfoPanel,
    final bool showOutputsInfoPanel,
    final bool showStatisticsPanel,
    final bool showChartsPanel,
    final bool continuousPollingEnabled,
  }) = _$AppSettingsImpl;

  factory _AppSettings.fromJson(Map<String, dynamic> json) =
      _$AppSettingsImpl.fromJson;

  // Theme settings
  @override
  AppThemeMode get themeMode; // Language settings (null = system default)
  @override
  @LocaleConverter()
  Locale? get appLocale; // Advanced controls visibility
  @override
  bool get showEcoMode;
  @override
  bool get showHeatingSchedule;
  @override
  bool get showRoomPowerRequest;
  @override
  bool get showConvectionFans;
  @override
  bool get showFrostProtection;
  @override
  bool get showTemperatureOffset;
  @override
  bool get showBakeTemperature; // Info panels visibility
  @override
  bool get showErrorWarningPanel;
  @override
  bool get showSafetyStatusPanel;
  @override
  bool get showSensorInfoPanel;
  @override
  bool get showOutputsInfoPanel;
  @override
  bool get showStatisticsPanel;
  @override
  bool get showChartsPanel; // Background polling
  @override
  bool get continuousPollingEnabled;

  /// Create a copy of AppSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingsImplCopyWith<_$AppSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
