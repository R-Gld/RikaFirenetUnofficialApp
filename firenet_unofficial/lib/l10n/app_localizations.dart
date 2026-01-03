import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_it.dart';
import 'app_localizations_nl.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('da'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('it'),
    Locale('nl'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Rika Firenet'**
  String get appTitle;

  /// No description provided for @loginSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Log in to your account'**
  String get loginSubtitle;

  /// No description provided for @myStoves.
  ///
  /// In en, this message translates to:
  /// **'My Stoves'**
  String get myStoves;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @emailHint.
  ///
  /// In en, this message translates to:
  /// **'your@email.com'**
  String get emailHint;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Log In'**
  String get login;

  /// No description provided for @refresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get refresh;

  /// No description provided for @testNow.
  ///
  /// In en, this message translates to:
  /// **'Test Now'**
  String get testNow;

  /// No description provided for @editThreshold.
  ///
  /// In en, this message translates to:
  /// **'Edit Threshold'**
  String get editThreshold;

  /// No description provided for @configureThreshold.
  ///
  /// In en, this message translates to:
  /// **'Configure Threshold'**
  String get configureThreshold;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @deleteThreshold.
  ///
  /// In en, this message translates to:
  /// **'Delete Threshold'**
  String get deleteThreshold;

  /// No description provided for @turnOn.
  ///
  /// In en, this message translates to:
  /// **'Turn On'**
  String get turnOn;

  /// No description provided for @turnOff.
  ///
  /// In en, this message translates to:
  /// **'Turn Off'**
  String get turnOff;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @pleaseEnterEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter your email'**
  String get pleaseEnterEmail;

  /// No description provided for @invalidEmail.
  ///
  /// In en, this message translates to:
  /// **'Invalid email'**
  String get invalidEmail;

  /// No description provided for @pleaseEnterPassword.
  ///
  /// In en, this message translates to:
  /// **'Please enter your password'**
  String get pleaseEnterPassword;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @connectionError.
  ///
  /// In en, this message translates to:
  /// **'Connection error'**
  String get connectionError;

  /// No description provided for @logoutTitle.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logoutTitle;

  /// No description provided for @logoutConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Do you really want to log out?'**
  String get logoutConfirmation;

  /// No description provided for @turnOnStoveQuestion.
  ///
  /// In en, this message translates to:
  /// **'Turn on the stove?'**
  String get turnOnStoveQuestion;

  /// No description provided for @turnOffStoveQuestion.
  ///
  /// In en, this message translates to:
  /// **'Turn off the stove?'**
  String get turnOffStoveQuestion;

  /// No description provided for @turnOnStoveConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Do you want to start the stove?'**
  String get turnOnStoveConfirmation;

  /// No description provided for @turnOffStoveConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Do you want to turn off the stove?'**
  String get turnOffStoveConfirmation;

  /// No description provided for @thresholdDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Threshold for {fieldName}'**
  String thresholdDialogTitle(String fieldName);

  /// No description provided for @notifyIfValueOutOfRange.
  ///
  /// In en, this message translates to:
  /// **'Notify if the value goes out of this range:'**
  String get notifyIfValueOutOfRange;

  /// No description provided for @minimumLabel.
  ///
  /// In en, this message translates to:
  /// **'Minimum: {value}'**
  String minimumLabel(String value);

  /// No description provided for @maximumLabel.
  ///
  /// In en, this message translates to:
  /// **'Maximum: {value}'**
  String maximumLabel(String value);

  /// No description provided for @loadingStoves.
  ///
  /// In en, this message translates to:
  /// **'Loading stoves...'**
  String get loadingStoves;

  /// No description provided for @loadingStoveData.
  ///
  /// In en, this message translates to:
  /// **'Loading stove data...'**
  String get loadingStoveData;

  /// No description provided for @noStoveFound.
  ///
  /// In en, this message translates to:
  /// **'No stove found'**
  String get noStoveFound;

  /// No description provided for @noStoveAssociated.
  ///
  /// In en, this message translates to:
  /// **'No stove is associated with your account'**
  String get noStoveAssociated;

  /// No description provided for @online.
  ///
  /// In en, this message translates to:
  /// **'Online'**
  String get online;

  /// No description provided for @offlineSince.
  ///
  /// In en, this message translates to:
  /// **'Offline for {minutes} min'**
  String offlineSince(int minutes);

  /// No description provided for @notificationsEnabledSuccess.
  ///
  /// In en, this message translates to:
  /// **'Notifications enabled successfully'**
  String get notificationsEnabledSuccess;

  /// No description provided for @permissionDenied.
  ///
  /// In en, this message translates to:
  /// **'Permission denied. Enable notifications in Android settings.'**
  String get permissionDenied;

  /// No description provided for @notificationsDisabled.
  ///
  /// In en, this message translates to:
  /// **'Notifications disabled'**
  String get notificationsDisabled;

  /// No description provided for @testInProgress.
  ///
  /// In en, this message translates to:
  /// **'Running test...'**
  String get testInProgress;

  /// No description provided for @testSuccess.
  ///
  /// In en, this message translates to:
  /// **'Test successful! Check notifications.'**
  String get testSuccess;

  /// No description provided for @testFailed.
  ///
  /// In en, this message translates to:
  /// **'Test failed. Check logs.'**
  String get testFailed;

  /// No description provided for @noStoveConfigured.
  ///
  /// In en, this message translates to:
  /// **'No stove configured'**
  String get noStoveConfigured;

  /// No description provided for @loadingStoveList.
  ///
  /// In en, this message translates to:
  /// **'Loading stove list...'**
  String get loadingStoveList;

  /// No description provided for @settingsResetToDefaults.
  ///
  /// In en, this message translates to:
  /// **'Settings reset to defaults'**
  String get settingsResetToDefaults;

  /// No description provided for @power.
  ///
  /// In en, this message translates to:
  /// **'Power'**
  String get power;

  /// No description provided for @stoveOn.
  ///
  /// In en, this message translates to:
  /// **'Stove on'**
  String get stoveOn;

  /// No description provided for @stoveOff.
  ///
  /// In en, this message translates to:
  /// **'Stove off'**
  String get stoveOff;

  /// No description provided for @targetTemperature.
  ///
  /// In en, this message translates to:
  /// **'Target Temperature'**
  String get targetTemperature;

  /// No description provided for @turnOnStoveToAdjustTemperature.
  ///
  /// In en, this message translates to:
  /// **'Turn on the stove to adjust temperature'**
  String get turnOnStoveToAdjustTemperature;

  /// No description provided for @operatingMode.
  ///
  /// In en, this message translates to:
  /// **'Operating Mode'**
  String get operatingMode;

  /// No description provided for @manualMode.
  ///
  /// In en, this message translates to:
  /// **'Manual'**
  String get manualMode;

  /// No description provided for @autoMode.
  ///
  /// In en, this message translates to:
  /// **'Auto'**
  String get autoMode;

  /// No description provided for @comfortMode.
  ///
  /// In en, this message translates to:
  /// **'Comfort'**
  String get comfortMode;

  /// No description provided for @turnOnStoveToChangeMode.
  ///
  /// In en, this message translates to:
  /// **'Turn on the stove to change mode'**
  String get turnOnStoveToChangeMode;

  /// No description provided for @heatingPower.
  ///
  /// In en, this message translates to:
  /// **'Heating Power'**
  String get heatingPower;

  /// No description provided for @minPower.
  ///
  /// In en, this message translates to:
  /// **'Min (0%)'**
  String get minPower;

  /// No description provided for @maxPower.
  ///
  /// In en, this message translates to:
  /// **'Max (100%)'**
  String get maxPower;

  /// No description provided for @turnOnStoveToAdjustPower.
  ///
  /// In en, this message translates to:
  /// **'Turn on the stove to adjust power'**
  String get turnOnStoveToAdjustPower;

  /// No description provided for @roomPowerRequest.
  ///
  /// In en, this message translates to:
  /// **'Room Power Request'**
  String get roomPowerRequest;

  /// No description provided for @roomPowerRequestDescription.
  ///
  /// In en, this message translates to:
  /// **'Power demand level for the room'**
  String get roomPowerRequestDescription;

  /// No description provided for @minimal.
  ///
  /// In en, this message translates to:
  /// **'Minimal'**
  String get minimal;

  /// No description provided for @maximum.
  ///
  /// In en, this message translates to:
  /// **'Maximum'**
  String get maximum;

  /// No description provided for @turnOnStoveToAdjustRoomPower.
  ///
  /// In en, this message translates to:
  /// **'Turn on the stove to adjust room power'**
  String get turnOnStoveToAdjustRoomPower;

  /// No description provided for @ecoMode.
  ///
  /// In en, this message translates to:
  /// **'ECO Mode'**
  String get ecoMode;

  /// No description provided for @energySavingEnabled.
  ///
  /// In en, this message translates to:
  /// **'Energy saving enabled'**
  String get energySavingEnabled;

  /// No description provided for @energySavingDisabled.
  ///
  /// In en, this message translates to:
  /// **'Energy saving disabled'**
  String get energySavingDisabled;

  /// No description provided for @frostProtection.
  ///
  /// In en, this message translates to:
  /// **'Frost Protection'**
  String get frostProtection;

  /// No description provided for @frostProtectionActive.
  ///
  /// In en, this message translates to:
  /// **'Protection active - starts if temp < {temp}°C'**
  String frostProtectionActive(int temp);

  /// No description provided for @frostProtectionInactive.
  ///
  /// In en, this message translates to:
  /// **'Protection disabled'**
  String get frostProtectionInactive;

  /// No description provided for @triggerTemperature.
  ///
  /// In en, this message translates to:
  /// **'Trigger temperature'**
  String get triggerTemperature;

  /// No description provided for @minTemp.
  ///
  /// In en, this message translates to:
  /// **'Min (4°C)'**
  String get minTemp;

  /// No description provided for @maxTemp.
  ///
  /// In en, this message translates to:
  /// **'Max (10°C)'**
  String get maxTemp;

  /// No description provided for @turnOnStoveToConfigureFrostProtection.
  ///
  /// In en, this message translates to:
  /// **'Turn on the stove to configure frost protection'**
  String get turnOnStoveToConfigureFrostProtection;

  /// No description provided for @convectionFans.
  ///
  /// In en, this message translates to:
  /// **'Convection Fans'**
  String get convectionFans;

  /// No description provided for @fansStatus.
  ///
  /// In en, this message translates to:
  /// **'Fan 1: {fan1} | Fan 2: {fan2}'**
  String fansStatus(String fan1, String fan2);

  /// No description provided for @fanNumber.
  ///
  /// In en, this message translates to:
  /// **'Fan {number}'**
  String fanNumber(int number);

  /// No description provided for @active.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get active;

  /// No description provided for @inactive.
  ///
  /// In en, this message translates to:
  /// **'Inactive'**
  String get inactive;

  /// No description provided for @speedLevel.
  ///
  /// In en, this message translates to:
  /// **'Speed level'**
  String get speedLevel;

  /// No description provided for @minSpeed.
  ///
  /// In en, this message translates to:
  /// **'Min (0)'**
  String get minSpeed;

  /// No description provided for @maxSpeed.
  ///
  /// In en, this message translates to:
  /// **'Max (5)'**
  String get maxSpeed;

  /// No description provided for @heatingArea.
  ///
  /// In en, this message translates to:
  /// **'Heating area'**
  String get heatingArea;

  /// No description provided for @minArea.
  ///
  /// In en, this message translates to:
  /// **'-30'**
  String get minArea;

  /// No description provided for @centerArea.
  ///
  /// In en, this message translates to:
  /// **'0'**
  String get centerArea;

  /// No description provided for @maxArea.
  ///
  /// In en, this message translates to:
  /// **'+30'**
  String get maxArea;

  /// No description provided for @turnOnStoveToConfigureFans.
  ///
  /// In en, this message translates to:
  /// **'Turn on the stove to configure fans'**
  String get turnOnStoveToConfigureFans;

  /// No description provided for @temperatureCalibration.
  ///
  /// In en, this message translates to:
  /// **'Temperature Calibration'**
  String get temperatureCalibration;

  /// No description provided for @temperatureCalibrationDescription.
  ///
  /// In en, this message translates to:
  /// **'Precision adjustment of temperature sensor'**
  String get temperatureCalibrationDescription;

  /// No description provided for @minOffset.
  ///
  /// In en, this message translates to:
  /// **'-3°C'**
  String get minOffset;

  /// No description provided for @zeroOffset.
  ///
  /// In en, this message translates to:
  /// **'0°C'**
  String get zeroOffset;

  /// No description provided for @maxOffset.
  ///
  /// In en, this message translates to:
  /// **'+3°C'**
  String get maxOffset;

  /// No description provided for @turnOnStoveToCalibrate.
  ///
  /// In en, this message translates to:
  /// **'Turn on the stove to calibrate temperature'**
  String get turnOnStoveToCalibrate;

  /// No description provided for @bakeTemperature.
  ///
  /// In en, this message translates to:
  /// **'Bake Temperature'**
  String get bakeTemperature;

  /// No description provided for @bakeTemperatureDescription.
  ///
  /// In en, this message translates to:
  /// **'Wood-fired oven temperature setting'**
  String get bakeTemperatureDescription;

  /// No description provided for @minBakeTemp.
  ///
  /// In en, this message translates to:
  /// **'100°C'**
  String get minBakeTemp;

  /// No description provided for @maxBakeTemp.
  ///
  /// In en, this message translates to:
  /// **'250°C'**
  String get maxBakeTemp;

  /// No description provided for @turnOnStoveToAdjustBakeTemp.
  ///
  /// In en, this message translates to:
  /// **'Turn on the stove to adjust bake temperature'**
  String get turnOnStoveToAdjustBakeTemp;

  /// No description provided for @heatingSchedule.
  ///
  /// In en, this message translates to:
  /// **'Heating Schedule'**
  String get heatingSchedule;

  /// No description provided for @activeInComfortMode.
  ///
  /// In en, this message translates to:
  /// **'Active in comfort mode'**
  String get activeInComfortMode;

  /// No description provided for @setpointTemperature.
  ///
  /// In en, this message translates to:
  /// **'Setpoint temperature'**
  String get setpointTemperature;

  /// No description provided for @turnOnStoveToAdjustSchedule.
  ///
  /// In en, this message translates to:
  /// **'Turn on the stove to adjust schedule'**
  String get turnOnStoveToAdjustSchedule;

  /// No description provided for @quickControls.
  ///
  /// In en, this message translates to:
  /// **'Quick Controls'**
  String get quickControls;

  /// No description provided for @advancedControls.
  ///
  /// In en, this message translates to:
  /// **'Advanced Controls'**
  String get advancedControls;

  /// No description provided for @appearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance;

  /// No description provided for @backgroundNotifications.
  ///
  /// In en, this message translates to:
  /// **'Background Notifications'**
  String get backgroundNotifications;

  /// No description provided for @informationPanels.
  ///
  /// In en, this message translates to:
  /// **'Information Panels'**
  String get informationPanels;

  /// No description provided for @watchedFields.
  ///
  /// In en, this message translates to:
  /// **'Watched fields ({count} selected)'**
  String watchedFields(int count);

  /// No description provided for @pollingInterval.
  ///
  /// In en, this message translates to:
  /// **'Check interval: {minutes} min'**
  String pollingInterval(int minutes);

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @light.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get light;

  /// No description provided for @dark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get dark;

  /// No description provided for @system.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get system;

  /// No description provided for @systemDescription.
  ///
  /// In en, this message translates to:
  /// **'Follow system settings'**
  String get systemDescription;

  /// No description provided for @lightModeActive.
  ///
  /// In en, this message translates to:
  /// **'Light mode active'**
  String get lightModeActive;

  /// No description provided for @darkModeActive.
  ///
  /// In en, this message translates to:
  /// **'Dark mode active'**
  String get darkModeActive;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @languageSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Select app language'**
  String get languageSubtitle;

  /// No description provided for @systemDefault.
  ///
  /// In en, this message translates to:
  /// **'System default'**
  String get systemDefault;

  /// No description provided for @showEcoMode.
  ///
  /// In en, this message translates to:
  /// **'ECO mode'**
  String get showEcoMode;

  /// No description provided for @showEcoModeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show energy saving mode toggle'**
  String get showEcoModeSubtitle;

  /// No description provided for @showHeatingSchedule.
  ///
  /// In en, this message translates to:
  /// **'Heating schedule'**
  String get showHeatingSchedule;

  /// No description provided for @showHeatingScheduleSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show weekly programming'**
  String get showHeatingScheduleSubtitle;

  /// No description provided for @showRoomPowerRequest.
  ///
  /// In en, this message translates to:
  /// **'Room power request'**
  String get showRoomPowerRequest;

  /// No description provided for @showRoomPowerRequestSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show level 1-4 selector'**
  String get showRoomPowerRequestSubtitle;

  /// No description provided for @showConvectionFans.
  ///
  /// In en, this message translates to:
  /// **'Convection fans'**
  String get showConvectionFans;

  /// No description provided for @showConvectionFansSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show controls for 2 fans'**
  String get showConvectionFansSubtitle;

  /// No description provided for @showFrostProtection.
  ///
  /// In en, this message translates to:
  /// **'Frost protection'**
  String get showFrostProtection;

  /// No description provided for @showFrostProtectionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show frost protection control'**
  String get showFrostProtectionSubtitle;

  /// No description provided for @showTemperatureOffset.
  ///
  /// In en, this message translates to:
  /// **'Temperature calibration'**
  String get showTemperatureOffset;

  /// No description provided for @showTemperatureOffsetSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show temperature offset -3 to +3°C'**
  String get showTemperatureOffsetSubtitle;

  /// No description provided for @showBakeTemperature.
  ///
  /// In en, this message translates to:
  /// **'Bake temperature'**
  String get showBakeTemperature;

  /// No description provided for @showBakeTemperatureSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show oven temperature control'**
  String get showBakeTemperatureSubtitle;

  /// No description provided for @enableNotifications.
  ///
  /// In en, this message translates to:
  /// **'Enable notifications'**
  String get enableNotifications;

  /// No description provided for @monitorChangesInBackground.
  ///
  /// In en, this message translates to:
  /// **'Monitor changes even when app is closed'**
  String get monitorChangesInBackground;

  /// No description provided for @notificationDelayInfo.
  ///
  /// In en, this message translates to:
  /// **'Notifications may be delayed depending on battery optimization'**
  String get notificationDelayInfo;

  /// No description provided for @showErrorWarningPanel.
  ///
  /// In en, this message translates to:
  /// **'Errors and warnings'**
  String get showErrorWarningPanel;

  /// No description provided for @showErrorWarningPanelSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show active errors panel'**
  String get showErrorWarningPanelSubtitle;

  /// No description provided for @showSafetyStatusPanel.
  ///
  /// In en, this message translates to:
  /// **'Safety and diagnostics'**
  String get showSafetyStatusPanel;

  /// No description provided for @showSafetyStatusPanelSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show safety panel (door, cover, WiFi, temp)'**
  String get showSafetyStatusPanelSubtitle;

  /// No description provided for @showSensorInfoPanel.
  ///
  /// In en, this message translates to:
  /// **'Sensor information'**
  String get showSensorInfoPanel;

  /// No description provided for @showSensorInfoPanelSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show sensor data'**
  String get showSensorInfoPanelSubtitle;

  /// No description provided for @showOutputsInfoPanel.
  ///
  /// In en, this message translates to:
  /// **'Outputs information'**
  String get showOutputsInfoPanel;

  /// No description provided for @showOutputsInfoPanelSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show outputs status (motors, fans)'**
  String get showOutputsInfoPanelSubtitle;

  /// No description provided for @showStatisticsPanel.
  ///
  /// In en, this message translates to:
  /// **'Statistics and system'**
  String get showStatisticsPanel;

  /// No description provided for @showStatisticsPanelSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show usage statistics'**
  String get showStatisticsPanelSubtitle;

  /// No description provided for @noError.
  ///
  /// In en, this message translates to:
  /// **'No error'**
  String get noError;

  /// No description provided for @errorDetected.
  ///
  /// In en, this message translates to:
  /// **'Error detected'**
  String get errorDetected;

  /// No description provided for @warning.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get warning;

  /// No description provided for @errorCode.
  ///
  /// In en, this message translates to:
  /// **'Error code:'**
  String get errorCode;

  /// No description provided for @warningCode.
  ///
  /// In en, this message translates to:
  /// **'Warning code:'**
  String get warningCode;

  /// No description provided for @consultManual.
  ///
  /// In en, this message translates to:
  /// **'Consult the user manual or contact technical service.'**
  String get consultManual;

  /// No description provided for @errorRoomSensorSignalLost.
  ///
  /// In en, this message translates to:
  /// **'Room sensor signal lost - Please switch to MANUAL MODE'**
  String get errorRoomSensorSignalLost;

  /// No description provided for @errorPelletLidOpen.
  ///
  /// In en, this message translates to:
  /// **'Pellet lid open - Please close the pellet lid'**
  String get errorPelletLidOpen;

  /// No description provided for @errorDoorOpen.
  ///
  /// In en, this message translates to:
  /// **'Door open - Please close the door'**
  String get errorDoorOpen;

  /// No description provided for @errorPelletLidOrDoorOpen.
  ///
  /// In en, this message translates to:
  /// **'Pellet lid or door open'**
  String get errorPelletLidOrDoorOpen;

  /// No description provided for @errorNotEnoughLowPressure.
  ///
  /// In en, this message translates to:
  /// **'Not enough low pressure - Check exhaust'**
  String get errorNotEnoughLowPressure;

  /// No description provided for @errorAirFlapsCalibrating.
  ///
  /// In en, this message translates to:
  /// **'Air flaps calibrating - Please wait'**
  String get errorAirFlapsCalibrating;

  /// No description provided for @errorBurnBackFlapOpen.
  ///
  /// In en, this message translates to:
  /// **'Burn back or flue gas flap open'**
  String get errorBurnBackFlapOpen;

  /// No description provided for @errorStoveNotInPosition.
  ///
  /// In en, this message translates to:
  /// **'Stove not in position - Check stove placement'**
  String get errorStoveNotInPosition;

  /// No description provided for @systemError.
  ///
  /// In en, this message translates to:
  /// **'System error (code: {code})'**
  String systemError(String code);

  /// No description provided for @noWarning.
  ///
  /// In en, this message translates to:
  /// **'No warning'**
  String get noWarning;

  /// No description provided for @warningRoomSensorSignalLost.
  ///
  /// In en, this message translates to:
  /// **'Room sensor signal lost'**
  String get warningRoomSensorSignalLost;

  /// No description provided for @warningPelletLidOpen.
  ///
  /// In en, this message translates to:
  /// **'Pellet lid open'**
  String get warningPelletLidOpen;

  /// No description provided for @warningDoorOpen.
  ///
  /// In en, this message translates to:
  /// **'Door open'**
  String get warningDoorOpen;

  /// No description provided for @warningPelletLidOrDoorOpen.
  ///
  /// In en, this message translates to:
  /// **'Pellet lid or door open'**
  String get warningPelletLidOrDoorOpen;

  /// No description provided for @warningNotEnoughLowPressure.
  ///
  /// In en, this message translates to:
  /// **'Not enough low pressure'**
  String get warningNotEnoughLowPressure;

  /// No description provided for @warningAirFlapsCalibrating.
  ///
  /// In en, this message translates to:
  /// **'Air flaps calibrating'**
  String get warningAirFlapsCalibrating;

  /// No description provided for @warningBurnBackFlapOpen.
  ///
  /// In en, this message translates to:
  /// **'Burn back or flue gas flap open'**
  String get warningBurnBackFlapOpen;

  /// No description provided for @warningStoveNotInPosition.
  ///
  /// In en, this message translates to:
  /// **'Stove not in position'**
  String get warningStoveNotInPosition;

  /// No description provided for @systemWarning.
  ///
  /// In en, this message translates to:
  /// **'System warning (code: {code})'**
  String systemWarning(int code);

  /// No description provided for @currentTemperature.
  ///
  /// In en, this message translates to:
  /// **'Current Temperature'**
  String get currentTemperature;

  /// No description provided for @safetyAndDiagnostics.
  ///
  /// In en, this message translates to:
  /// **'Safety & Diagnostics'**
  String get safetyAndDiagnostics;

  /// No description provided for @door.
  ///
  /// In en, this message translates to:
  /// **'Door'**
  String get door;

  /// No description provided for @cover.
  ///
  /// In en, this message translates to:
  /// **'Cover'**
  String get cover;

  /// No description provided for @closed.
  ///
  /// In en, this message translates to:
  /// **'Closed'**
  String get closed;

  /// No description provided for @open.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get open;

  /// No description provided for @wifiSignal.
  ///
  /// In en, this message translates to:
  /// **'WiFi Signal'**
  String get wifiSignal;

  /// No description provided for @temperatureLimiter.
  ///
  /// In en, this message translates to:
  /// **'Temperature limiter'**
  String get temperatureLimiter;

  /// No description provided for @internalTemperatureOK.
  ///
  /// In en, this message translates to:
  /// **'Internal temperature OK'**
  String get internalTemperatureOK;

  /// No description provided for @overheating.
  ///
  /// In en, this message translates to:
  /// **'Overheating'**
  String get overheating;

  /// No description provided for @sensorInformation.
  ///
  /// In en, this message translates to:
  /// **'Sensor Information'**
  String get sensorInformation;

  /// No description provided for @flameTemperature.
  ///
  /// In en, this message translates to:
  /// **'Flame temperature'**
  String get flameTemperature;

  /// No description provided for @ambientTemperature.
  ///
  /// In en, this message translates to:
  /// **'Ambient temperature'**
  String get ambientTemperature;

  /// No description provided for @externalRequest.
  ///
  /// In en, this message translates to:
  /// **'External request'**
  String get externalRequest;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @boardTemperature.
  ///
  /// In en, this message translates to:
  /// **'Board temperature'**
  String get boardTemperature;

  /// No description provided for @ovenTemperature.
  ///
  /// In en, this message translates to:
  /// **'Oven temperature'**
  String get ovenTemperature;

  /// No description provided for @outputs.
  ///
  /// In en, this message translates to:
  /// **'Outputs'**
  String get outputs;

  /// No description provided for @diagonalMotor.
  ///
  /// In en, this message translates to:
  /// **'Diagonal motor'**
  String get diagonalMotor;

  /// No description provided for @horizontalMotor.
  ///
  /// In en, this message translates to:
  /// **'Horizontal motor'**
  String get horizontalMotor;

  /// No description provided for @combustionGasFan.
  ///
  /// In en, this message translates to:
  /// **'Combustion gas fan'**
  String get combustionGasFan;

  /// No description provided for @airDampers.
  ///
  /// In en, this message translates to:
  /// **'Air dampers'**
  String get airDampers;

  /// No description provided for @ignition.
  ///
  /// In en, this message translates to:
  /// **'Ignition'**
  String get ignition;

  /// No description provided for @on.
  ///
  /// In en, this message translates to:
  /// **'ON'**
  String get on;

  /// No description provided for @off.
  ///
  /// In en, this message translates to:
  /// **'OFF'**
  String get off;

  /// No description provided for @current.
  ///
  /// In en, this message translates to:
  /// **'Current'**
  String get current;

  /// No description provided for @statisticsAndSystem.
  ///
  /// In en, this message translates to:
  /// **'Statistics & System'**
  String get statisticsAndSystem;

  /// No description provided for @usage.
  ///
  /// In en, this message translates to:
  /// **'Usage'**
  String get usage;

  /// No description provided for @pelletHours.
  ///
  /// In en, this message translates to:
  /// **'Pellet hours'**
  String get pelletHours;

  /// No description provided for @woodHours.
  ///
  /// In en, this message translates to:
  /// **'Wood hours'**
  String get woodHours;

  /// No description provided for @onOffCycles.
  ///
  /// In en, this message translates to:
  /// **'ON/OFF cycles'**
  String get onOffCycles;

  /// No description provided for @ignitionCount.
  ///
  /// In en, this message translates to:
  /// **'Ignition count'**
  String get ignitionCount;

  /// No description provided for @consumption.
  ///
  /// In en, this message translates to:
  /// **'Consumption'**
  String get consumption;

  /// No description provided for @totalConsumption.
  ///
  /// In en, this message translates to:
  /// **'Total consumption'**
  String get totalConsumption;

  /// No description provided for @beforeMaintenance.
  ///
  /// In en, this message translates to:
  /// **'Before maintenance'**
  String get beforeMaintenance;

  /// No description provided for @systemInformation.
  ///
  /// In en, this message translates to:
  /// **'System Information'**
  String get systemInformation;

  /// No description provided for @model.
  ///
  /// In en, this message translates to:
  /// **'Model'**
  String get model;

  /// No description provided for @manufacturer.
  ///
  /// In en, this message translates to:
  /// **'Manufacturer'**
  String get manufacturer;

  /// No description provided for @serialNumber.
  ///
  /// In en, this message translates to:
  /// **'Serial number'**
  String get serialNumber;

  /// No description provided for @firmwareVersion.
  ///
  /// In en, this message translates to:
  /// **'Firmware version'**
  String get firmwareVersion;

  /// No description provided for @detailedScheduleEditor.
  ///
  /// In en, this message translates to:
  /// **'Detailed Schedule Editor'**
  String get detailedScheduleEditor;

  /// No description provided for @monday.
  ///
  /// In en, this message translates to:
  /// **'Monday'**
  String get monday;

  /// No description provided for @tuesday.
  ///
  /// In en, this message translates to:
  /// **'Tuesday'**
  String get tuesday;

  /// No description provided for @wednesday.
  ///
  /// In en, this message translates to:
  /// **'Wednesday'**
  String get wednesday;

  /// No description provided for @thursday.
  ///
  /// In en, this message translates to:
  /// **'Thursday'**
  String get thursday;

  /// No description provided for @friday.
  ///
  /// In en, this message translates to:
  /// **'Friday'**
  String get friday;

  /// No description provided for @saturday.
  ///
  /// In en, this message translates to:
  /// **'Saturday'**
  String get saturday;

  /// No description provided for @sunday.
  ///
  /// In en, this message translates to:
  /// **'Sunday'**
  String get sunday;

  /// No description provided for @disableThisSlot.
  ///
  /// In en, this message translates to:
  /// **'Disable this slot'**
  String get disableThisSlot;

  /// No description provided for @enableScheduleToEdit.
  ///
  /// In en, this message translates to:
  /// **'Enable heating schedule to edit programming'**
  String get enableScheduleToEdit;

  /// No description provided for @viewOnGitHub.
  ///
  /// In en, this message translates to:
  /// **'View on GitHub'**
  String get viewOnGitHub;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Version {version}'**
  String version(String version);

  /// No description provided for @configureAdvancedFeatures.
  ///
  /// In en, this message translates to:
  /// **'Configure advanced features'**
  String get configureAdvancedFeatures;

  /// No description provided for @configureBackgroundNotifications.
  ///
  /// In en, this message translates to:
  /// **'Configure background notifications'**
  String get configureBackgroundNotifications;

  /// No description provided for @toggleInfoPanelVisibility.
  ///
  /// In en, this message translates to:
  /// **'Toggle info panel visibility'**
  String get toggleInfoPanelVisibility;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @statusFrostProtection.
  ///
  /// In en, this message translates to:
  /// **'Frost Protection'**
  String get statusFrostProtection;

  /// No description provided for @statusStoveOff.
  ///
  /// In en, this message translates to:
  /// **'Stove Off'**
  String get statusStoveOff;

  /// No description provided for @statusStandby.
  ///
  /// In en, this message translates to:
  /// **'Standby'**
  String get statusStandby;

  /// No description provided for @statusExternalRequest.
  ///
  /// In en, this message translates to:
  /// **'External Request'**
  String get statusExternalRequest;

  /// No description provided for @statusOff.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get statusOff;

  /// No description provided for @statusIgnitionOn.
  ///
  /// In en, this message translates to:
  /// **'Ignition On'**
  String get statusIgnitionOn;

  /// No description provided for @statusStartingUp.
  ///
  /// In en, this message translates to:
  /// **'Starting Up'**
  String get statusStartingUp;

  /// No description provided for @statusRunning.
  ///
  /// In en, this message translates to:
  /// **'Running'**
  String get statusRunning;

  /// No description provided for @statusBigClean.
  ///
  /// In en, this message translates to:
  /// **'Big Clean'**
  String get statusBigClean;

  /// No description provided for @statusCleaning.
  ///
  /// In en, this message translates to:
  /// **'Cleaning'**
  String get statusCleaning;

  /// No description provided for @statusBurnOff.
  ///
  /// In en, this message translates to:
  /// **'Burn Off'**
  String get statusBurnOff;

  /// No description provided for @statusSplitLogCheck.
  ///
  /// In en, this message translates to:
  /// **'Split Log Check'**
  String get statusSplitLogCheck;

  /// No description provided for @statusSplitLogMode.
  ///
  /// In en, this message translates to:
  /// **'Split Log Mode'**
  String get statusSplitLogMode;

  /// No description provided for @statusUnknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown State ({state})'**
  String statusUnknown(int state);

  /// No description provided for @showChartsPanel.
  ///
  /// In en, this message translates to:
  /// **'Show Charts Panel'**
  String get showChartsPanel;

  /// No description provided for @showChartsPanelSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Display temperature evolution and historical data charts'**
  String get showChartsPanelSubtitle;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'da',
    'de',
    'en',
    'es',
    'fr',
    'it',
    'nl',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'it':
      return AppLocalizationsIt();
    case 'nl':
      return AppLocalizationsNl();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
