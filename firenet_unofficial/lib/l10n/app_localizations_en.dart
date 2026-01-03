// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Rika Firenet';

  @override
  String get loginSubtitle => 'Log in to your account';

  @override
  String get myStoves => 'My Stoves';

  @override
  String get settings => 'Settings';

  @override
  String get email => 'Email';

  @override
  String get emailHint => 'your@email.com';

  @override
  String get password => 'Password';

  @override
  String get login => 'Log In';

  @override
  String get refresh => 'Refresh';

  @override
  String get testNow => 'Test Now';

  @override
  String get editThreshold => 'Edit Threshold';

  @override
  String get configureThreshold => 'Configure Threshold';

  @override
  String get reset => 'Reset';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get deleteThreshold => 'Delete Threshold';

  @override
  String get turnOn => 'Turn On';

  @override
  String get turnOff => 'Turn Off';

  @override
  String get logout => 'Logout';

  @override
  String get retry => 'Retry';

  @override
  String get pleaseEnterEmail => 'Please enter your email';

  @override
  String get invalidEmail => 'Invalid email';

  @override
  String get pleaseEnterPassword => 'Please enter your password';

  @override
  String get error => 'Error';

  @override
  String get connectionError => 'Connection error';

  @override
  String get logoutTitle => 'Logout';

  @override
  String get logoutConfirmation => 'Do you really want to log out?';

  @override
  String get turnOnStoveQuestion => 'Turn on the stove?';

  @override
  String get turnOffStoveQuestion => 'Turn off the stove?';

  @override
  String get turnOnStoveConfirmation => 'Do you want to start the stove?';

  @override
  String get turnOffStoveConfirmation => 'Do you want to turn off the stove?';

  @override
  String thresholdDialogTitle(String fieldName) {
    return 'Threshold for $fieldName';
  }

  @override
  String get notifyIfValueOutOfRange =>
      'Notify if the value goes out of this range:';

  @override
  String minimumLabel(String value) {
    return 'Minimum: $value';
  }

  @override
  String maximumLabel(String value) {
    return 'Maximum: $value';
  }

  @override
  String get loadingStoves => 'Loading stoves...';

  @override
  String get loadingStoveData => 'Loading stove data...';

  @override
  String get noStoveFound => 'No stove found';

  @override
  String get noStoveAssociated => 'No stove is associated with your account';

  @override
  String get online => 'Online';

  @override
  String offlineSince(int minutes) {
    return 'Offline for $minutes min';
  }

  @override
  String get notificationsEnabledSuccess =>
      'Notifications enabled successfully';

  @override
  String get permissionDenied =>
      'Permission denied. Enable notifications in Android settings.';

  @override
  String get notificationsDisabled => 'Notifications disabled';

  @override
  String get testInProgress => 'Running test...';

  @override
  String get testSuccess => 'Test successful! Check notifications.';

  @override
  String get testFailed => 'Test failed. Check logs.';

  @override
  String get noStoveConfigured => 'No stove configured';

  @override
  String get loadingStoveList => 'Loading stove list...';

  @override
  String get settingsResetToDefaults => 'Settings reset to defaults';

  @override
  String get power => 'Power';

  @override
  String get stoveOn => 'Stove on';

  @override
  String get stoveOff => 'Stove off';

  @override
  String get targetTemperature => 'Target Temperature';

  @override
  String get turnOnStoveToAdjustTemperature =>
      'Turn on the stove to adjust temperature';

  @override
  String get operatingMode => 'Operating Mode';

  @override
  String get manualMode => 'Manual';

  @override
  String get autoMode => 'Auto';

  @override
  String get comfortMode => 'Comfort';

  @override
  String get turnOnStoveToChangeMode => 'Turn on the stove to change mode';

  @override
  String get heatingPower => 'Heating Power';

  @override
  String get minPower => 'Min (0%)';

  @override
  String get maxPower => 'Max (100%)';

  @override
  String get turnOnStoveToAdjustPower => 'Turn on the stove to adjust power';

  @override
  String get roomPowerRequest => 'Room Power Request';

  @override
  String get roomPowerRequestDescription => 'Power demand level for the room';

  @override
  String get minimal => 'Minimal';

  @override
  String get maximum => 'Maximum';

  @override
  String get turnOnStoveToAdjustRoomPower =>
      'Turn on the stove to adjust room power';

  @override
  String get ecoMode => 'ECO Mode';

  @override
  String get energySavingEnabled => 'Energy saving enabled';

  @override
  String get energySavingDisabled => 'Energy saving disabled';

  @override
  String get frostProtection => 'Frost Protection';

  @override
  String frostProtectionActive(int temp) {
    return 'Protection active - starts if temp < $temp°C';
  }

  @override
  String get frostProtectionInactive => 'Protection disabled';

  @override
  String get triggerTemperature => 'Trigger temperature';

  @override
  String get minTemp => 'Min (4°C)';

  @override
  String get maxTemp => 'Max (10°C)';

  @override
  String get turnOnStoveToConfigureFrostProtection =>
      'Turn on the stove to configure frost protection';

  @override
  String get convectionFans => 'Convection Fans';

  @override
  String fansStatus(String fan1, String fan2) {
    return 'Fan 1: $fan1 | Fan 2: $fan2';
  }

  @override
  String fanNumber(int number) {
    return 'Fan $number';
  }

  @override
  String get active => 'Active';

  @override
  String get inactive => 'Inactive';

  @override
  String get speedLevel => 'Speed level';

  @override
  String get minSpeed => 'Min (0)';

  @override
  String get maxSpeed => 'Max (5)';

  @override
  String get heatingArea => 'Heating area';

  @override
  String get minArea => '-30';

  @override
  String get centerArea => '0';

  @override
  String get maxArea => '+30';

  @override
  String get turnOnStoveToConfigureFans =>
      'Turn on the stove to configure fans';

  @override
  String get temperatureCalibration => 'Temperature Calibration';

  @override
  String get temperatureCalibrationDescription =>
      'Precision adjustment of temperature sensor';

  @override
  String get minOffset => '-3°C';

  @override
  String get zeroOffset => '0°C';

  @override
  String get maxOffset => '+3°C';

  @override
  String get turnOnStoveToCalibrate =>
      'Turn on the stove to calibrate temperature';

  @override
  String get bakeTemperature => 'Bake Temperature';

  @override
  String get bakeTemperatureDescription =>
      'Wood-fired oven temperature setting';

  @override
  String get minBakeTemp => '100°C';

  @override
  String get maxBakeTemp => '250°C';

  @override
  String get turnOnStoveToAdjustBakeTemp =>
      'Turn on the stove to adjust bake temperature';

  @override
  String get heatingSchedule => 'Heating Schedule';

  @override
  String get activeInComfortMode => 'Active in comfort mode';

  @override
  String get setpointTemperature => 'Setpoint temperature';

  @override
  String get turnOnStoveToAdjustSchedule =>
      'Turn on the stove to adjust schedule';

  @override
  String get quickControls => 'Quick Controls';

  @override
  String get advancedControls => 'Advanced Controls';

  @override
  String get appearance => 'Appearance';

  @override
  String get backgroundNotifications => 'Background Notifications';

  @override
  String get informationPanels => 'Information Panels';

  @override
  String watchedFields(int count) {
    return 'Watched fields ($count selected)';
  }

  @override
  String pollingInterval(int minutes) {
    return 'Check interval: $minutes min';
  }

  @override
  String get theme => 'Theme';

  @override
  String get light => 'Light';

  @override
  String get dark => 'Dark';

  @override
  String get system => 'System';

  @override
  String get systemDescription => 'Follow system settings';

  @override
  String get lightModeActive => 'Light mode active';

  @override
  String get darkModeActive => 'Dark mode active';

  @override
  String get language => 'Language';

  @override
  String get languageSubtitle => 'Select app language';

  @override
  String get systemDefault => 'System default';

  @override
  String get showEcoMode => 'ECO mode';

  @override
  String get showEcoModeSubtitle => 'Show energy saving mode toggle';

  @override
  String get showHeatingSchedule => 'Heating schedule';

  @override
  String get showHeatingScheduleSubtitle => 'Show weekly programming';

  @override
  String get showRoomPowerRequest => 'Room power request';

  @override
  String get showRoomPowerRequestSubtitle => 'Show level 1-4 selector';

  @override
  String get showConvectionFans => 'Convection fans';

  @override
  String get showConvectionFansSubtitle => 'Show controls for 2 fans';

  @override
  String get showFrostProtection => 'Frost protection';

  @override
  String get showFrostProtectionSubtitle => 'Show frost protection control';

  @override
  String get showTemperatureOffset => 'Temperature calibration';

  @override
  String get showTemperatureOffsetSubtitle =>
      'Show temperature offset -3 to +3°C';

  @override
  String get showBakeTemperature => 'Bake temperature';

  @override
  String get showBakeTemperatureSubtitle => 'Show oven temperature control';

  @override
  String get enableNotifications => 'Enable notifications';

  @override
  String get monitorChangesInBackground =>
      'Monitor changes even when app is closed';

  @override
  String get notificationDelayInfo =>
      'Notifications may be delayed depending on battery optimization';

  @override
  String get showErrorWarningPanel => 'Errors and warnings';

  @override
  String get showErrorWarningPanelSubtitle => 'Show active errors panel';

  @override
  String get showSafetyStatusPanel => 'Safety and diagnostics';

  @override
  String get showSafetyStatusPanelSubtitle =>
      'Show safety panel (door, cover, WiFi, temp)';

  @override
  String get showSensorInfoPanel => 'Sensor information';

  @override
  String get showSensorInfoPanelSubtitle => 'Show sensor data';

  @override
  String get showOutputsInfoPanel => 'Outputs information';

  @override
  String get showOutputsInfoPanelSubtitle =>
      'Show outputs status (motors, fans)';

  @override
  String get showStatisticsPanel => 'Statistics and system';

  @override
  String get showStatisticsPanelSubtitle => 'Show usage statistics';

  @override
  String get noError => 'No error';

  @override
  String get errorDetected => 'Error detected';

  @override
  String get warning => 'Warning';

  @override
  String get errorCode => 'Error code:';

  @override
  String get warningCode => 'Warning code:';

  @override
  String get consultManual =>
      'Consult the user manual or contact technical service.';

  @override
  String get errorRoomSensorSignalLost =>
      'Room sensor signal lost - Please switch to MANUAL MODE';

  @override
  String get errorPelletLidOpen =>
      'Pellet lid open - Please close the pellet lid';

  @override
  String get errorDoorOpen => 'Door open - Please close the door';

  @override
  String get errorPelletLidOrDoorOpen => 'Pellet lid or door open';

  @override
  String get errorNotEnoughLowPressure =>
      'Not enough low pressure - Check exhaust';

  @override
  String get errorAirFlapsCalibrating => 'Air flaps calibrating - Please wait';

  @override
  String get errorBurnBackFlapOpen => 'Burn back or flue gas flap open';

  @override
  String get errorStoveNotInPosition =>
      'Stove not in position - Check stove placement';

  @override
  String systemError(String code) {
    return 'System error (code: $code)';
  }

  @override
  String get noWarning => 'No warning';

  @override
  String get warningRoomSensorSignalLost => 'Room sensor signal lost';

  @override
  String get warningPelletLidOpen => 'Pellet lid open';

  @override
  String get warningDoorOpen => 'Door open';

  @override
  String get warningPelletLidOrDoorOpen => 'Pellet lid or door open';

  @override
  String get warningNotEnoughLowPressure => 'Not enough low pressure';

  @override
  String get warningAirFlapsCalibrating => 'Air flaps calibrating';

  @override
  String get warningBurnBackFlapOpen => 'Burn back or flue gas flap open';

  @override
  String get warningStoveNotInPosition => 'Stove not in position';

  @override
  String systemWarning(int code) {
    return 'System warning (code: $code)';
  }

  @override
  String get currentTemperature => 'Current Temperature';

  @override
  String get safetyAndDiagnostics => 'Safety & Diagnostics';

  @override
  String get door => 'Door';

  @override
  String get cover => 'Cover';

  @override
  String get closed => 'Closed';

  @override
  String get open => 'Open';

  @override
  String get wifiSignal => 'WiFi Signal';

  @override
  String get temperatureLimiter => 'Temperature limiter';

  @override
  String get internalTemperatureOK => 'Internal temperature OK';

  @override
  String get overheating => 'Overheating';

  @override
  String get sensorInformation => 'Sensor Information';

  @override
  String get flameTemperature => 'Flame temperature';

  @override
  String get ambientTemperature => 'Ambient temperature';

  @override
  String get externalRequest => 'External request';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get boardTemperature => 'Board temperature';

  @override
  String get ovenTemperature => 'Oven temperature';

  @override
  String get outputs => 'Outputs';

  @override
  String get diagonalMotor => 'Diagonal motor';

  @override
  String get horizontalMotor => 'Horizontal motor';

  @override
  String get combustionGasFan => 'Combustion gas fan';

  @override
  String get airDampers => 'Air dampers';

  @override
  String get ignition => 'Ignition';

  @override
  String get on => 'ON';

  @override
  String get off => 'OFF';

  @override
  String get current => 'Current';

  @override
  String get statisticsAndSystem => 'Statistics & System';

  @override
  String get usage => 'Usage';

  @override
  String get pelletHours => 'Pellet hours';

  @override
  String get woodHours => 'Wood hours';

  @override
  String get onOffCycles => 'ON/OFF cycles';

  @override
  String get ignitionCount => 'Ignition count';

  @override
  String get consumption => 'Consumption';

  @override
  String get totalConsumption => 'Total consumption';

  @override
  String get beforeMaintenance => 'Before maintenance';

  @override
  String get systemInformation => 'System Information';

  @override
  String get model => 'Model';

  @override
  String get manufacturer => 'Manufacturer';

  @override
  String get serialNumber => 'Serial number';

  @override
  String get firmwareVersion => 'Firmware version';

  @override
  String get detailedScheduleEditor => 'Detailed Schedule Editor';

  @override
  String get monday => 'Monday';

  @override
  String get tuesday => 'Tuesday';

  @override
  String get wednesday => 'Wednesday';

  @override
  String get thursday => 'Thursday';

  @override
  String get friday => 'Friday';

  @override
  String get saturday => 'Saturday';

  @override
  String get sunday => 'Sunday';

  @override
  String get disableThisSlot => 'Disable this slot';

  @override
  String get enableScheduleToEdit =>
      'Enable heating schedule to edit programming';

  @override
  String get viewOnGitHub => 'View on GitHub';

  @override
  String get about => 'About';

  @override
  String version(String version) {
    return 'Version $version';
  }

  @override
  String get configureAdvancedFeatures => 'Configure advanced features';

  @override
  String get configureBackgroundNotifications =>
      'Configure background notifications';

  @override
  String get toggleInfoPanelVisibility => 'Toggle info panel visibility';

  @override
  String get notifications => 'Notifications';

  @override
  String get statusFrostProtection => 'Frost Protection';

  @override
  String get statusStoveOff => 'Stove Off';

  @override
  String get statusStandby => 'Standby';

  @override
  String get statusExternalRequest => 'External Request';

  @override
  String get statusOff => 'Off';

  @override
  String get statusIgnitionOn => 'Ignition On';

  @override
  String get statusStartingUp => 'Starting Up';

  @override
  String get statusRunning => 'Running';

  @override
  String get statusBigClean => 'Big Clean';

  @override
  String get statusCleaning => 'Cleaning';

  @override
  String get statusBurnOff => 'Burn Off';

  @override
  String get statusSplitLogCheck => 'Split Log Check';

  @override
  String get statusSplitLogMode => 'Split Log Mode';

  @override
  String statusUnknown(int state) {
    return 'Unknown State ($state)';
  }
}
