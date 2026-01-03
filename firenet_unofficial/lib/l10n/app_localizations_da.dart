// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get appTitle => 'Rika Firenet';

  @override
  String get loginSubtitle => 'Log ind på din konto';

  @override
  String get myStoves => 'Mine Ovne';

  @override
  String get settings => 'Indstillinger';

  @override
  String get email => 'E-mail';

  @override
  String get emailHint => 'din@email.dk';

  @override
  String get password => 'Adgangskode';

  @override
  String get login => 'Log ind';

  @override
  String get refresh => 'Opdater';

  @override
  String get testNow => 'Test nu';

  @override
  String get editThreshold => 'Rediger tærskel';

  @override
  String get configureThreshold => 'Konfigurer tærskel';

  @override
  String get reset => 'Nulstil';

  @override
  String get cancel => 'Annuller';

  @override
  String get save => 'Gem';

  @override
  String get deleteThreshold => 'Slet tærskel';

  @override
  String get turnOn => 'Tænd';

  @override
  String get turnOff => 'Sluk';

  @override
  String get logout => 'Log ud';

  @override
  String get retry => 'Prøv igen';

  @override
  String get pleaseEnterEmail => 'Indtast venligst din e-mail';

  @override
  String get invalidEmail => 'Ugyldig e-mail';

  @override
  String get pleaseEnterPassword => 'Indtast venligst din adgangskode';

  @override
  String get error => 'Fejl';

  @override
  String get connectionError => 'Forbindelsesfejl';

  @override
  String get logoutTitle => 'Log ud';

  @override
  String get logoutConfirmation => 'Vil du virkelig logge ud?';

  @override
  String get turnOnStoveQuestion => 'Tænd ovnen?';

  @override
  String get turnOffStoveQuestion => 'Sluk ovnen?';

  @override
  String get turnOnStoveConfirmation => 'Vil du starte ovnen?';

  @override
  String get turnOffStoveConfirmation => 'Vil du slukke ovnen?';

  @override
  String thresholdDialogTitle(String fieldName) {
    return 'Tærskel for $fieldName';
  }

  @override
  String get notifyIfValueOutOfRange =>
      'Giv besked, hvis værdien er uden for dette interval:';

  @override
  String minimumLabel(String value) {
    return 'Minimum: $value';
  }

  @override
  String maximumLabel(String value) {
    return 'Maximum: $value';
  }

  @override
  String get loadingStoves => 'Indlæser ovne...';

  @override
  String get loadingStoveData => 'Indlæser ovndata...';

  @override
  String get noStoveFound => 'Ingen ovn fundet';

  @override
  String get noStoveAssociated => 'Ingen ovn er tilknyttet din konto';

  @override
  String get online => 'Online';

  @override
  String offlineSince(int minutes) {
    return 'Offline i $minutes min';
  }

  @override
  String get notificationsEnabledSuccess => 'Notifikationer aktiveret';

  @override
  String get permissionDenied =>
      'Tilladelse nægtet. Aktiver notifikationer i Android-indstillinger.';

  @override
  String get notificationsDisabled => 'Notifikationer deaktiveret';

  @override
  String get testInProgress => 'Kører test...';

  @override
  String get testSuccess => 'Test vellykket! Tjek notifikationer.';

  @override
  String get testFailed => 'Test mislykkedes. Tjek logfiler.';

  @override
  String get noStoveConfigured => 'Ingen ovn konfigureret';

  @override
  String get loadingStoveList => 'Indlæser ovnliste...';

  @override
  String get settingsResetToDefaults => 'Indstillinger nulstillet til standard';

  @override
  String get power => 'Strøm';

  @override
  String get stoveOn => 'Ovn tændt';

  @override
  String get stoveOff => 'Ovn slukket';

  @override
  String get targetTemperature => 'Måltemperatur';

  @override
  String get turnOnStoveToAdjustTemperature =>
      'Tænd ovnen for at justere temperaturen';

  @override
  String get operatingMode => 'Driftstilstand';

  @override
  String get manualMode => 'Manuel';

  @override
  String get autoMode => 'Auto';

  @override
  String get comfortMode => 'Komfort';

  @override
  String get turnOnStoveToChangeMode => 'Tænd ovnen for at ændre tilstand';

  @override
  String get heatingPower => 'Varmeeffekt';

  @override
  String get minPower => 'Min (0%)';

  @override
  String get maxPower => 'Max (100%)';

  @override
  String get turnOnStoveToAdjustPower => 'Tænd ovnen for at justere effekten';

  @override
  String get roomPowerRequest => 'Rumeffektanmodning';

  @override
  String get roomPowerRequestDescription => 'Effektanmodningsniveau for rummet';

  @override
  String get minimal => 'Minimal';

  @override
  String get maximum => 'Maksimal';

  @override
  String get turnOnStoveToAdjustRoomPower =>
      'Tænd ovnen for at justere rumeffekt';

  @override
  String get ecoMode => 'ECO-tilstand';

  @override
  String get energySavingEnabled => 'Energibesparelse aktiveret';

  @override
  String get energySavingDisabled => 'Energibesparelse deaktiveret';

  @override
  String get frostProtection => 'Frostbeskyttelse';

  @override
  String frostProtectionActive(int temp) {
    return 'Beskyttelse aktiv - starter hvis temp < $temp°C';
  }

  @override
  String get frostProtectionInactive => 'Beskyttelse deaktiveret';

  @override
  String get triggerTemperature => 'Udløsningstemperatur';

  @override
  String get minTemp => 'Min (4°C)';

  @override
  String get maxTemp => 'Max (10°C)';

  @override
  String get turnOnStoveToConfigureFrostProtection =>
      'Tænd ovnen for at konfigurere frostbeskyttelse';

  @override
  String get convectionFans => 'Konvektionsblæsere';

  @override
  String fansStatus(String fan1, String fan2) {
    return 'Blæser 1: $fan1 | Blæser 2: $fan2';
  }

  @override
  String fanNumber(int number) {
    return 'Blæser $number';
  }

  @override
  String get active => 'Aktiv';

  @override
  String get inactive => 'Inaktiv';

  @override
  String get speedLevel => 'Hastighedsniveau';

  @override
  String get minSpeed => 'Min (0)';

  @override
  String get maxSpeed => 'Max (5)';

  @override
  String get heatingArea => 'Varmeområde';

  @override
  String get minArea => '-30';

  @override
  String get centerArea => '0';

  @override
  String get maxArea => '+30';

  @override
  String get turnOnStoveToConfigureFans =>
      'Tænd ovnen for at konfigurere blæsere';

  @override
  String get temperatureCalibration => 'Temperaturkalibrering';

  @override
  String get temperatureCalibrationDescription =>
      'Præcisionsjustering af temperatursensor';

  @override
  String get minOffset => '-3°C';

  @override
  String get zeroOffset => '0°C';

  @override
  String get maxOffset => '+3°C';

  @override
  String get turnOnStoveToCalibrate => 'Tænd ovnen for at kalibrere temperatur';

  @override
  String get bakeTemperature => 'Bagetemperatur';

  @override
  String get bakeTemperatureDescription => 'Brændeovnstemperaturindstilling';

  @override
  String get minBakeTemp => '100°C';

  @override
  String get maxBakeTemp => '250°C';

  @override
  String get turnOnStoveToAdjustBakeTemp =>
      'Tænd ovnen for at justere bagetemperatur';

  @override
  String get heatingSchedule => 'Varmeplan';

  @override
  String get activeInComfortMode => 'Aktiv i komforttilstand';

  @override
  String get setpointTemperature => 'Setpunktstemperatur';

  @override
  String get turnOnStoveToAdjustSchedule => 'Tænd ovnen for at justere plan';

  @override
  String get quickControls => 'Hurtige kontroller';

  @override
  String get advancedControls => 'Avancerede kontroller';

  @override
  String get appearance => 'Udseende';

  @override
  String get backgroundNotifications => 'Baggrundsnotifikationer';

  @override
  String get informationPanels => 'Informationspaneler';

  @override
  String watchedFields(int count) {
    return 'Overvågede felter ($count valgt)';
  }

  @override
  String pollingInterval(int minutes) {
    return 'Kontrolinterval: $minutes min';
  }

  @override
  String get theme => 'Tema';

  @override
  String get light => 'Lys';

  @override
  String get dark => 'Mørk';

  @override
  String get system => 'System';

  @override
  String get systemDescription => 'Følg systemindstillinger';

  @override
  String get lightModeActive => 'Lys tilstand aktiv';

  @override
  String get darkModeActive => 'Mørk tilstand aktiv';

  @override
  String get language => 'Sprog';

  @override
  String get languageSubtitle => 'Vælg app-sprog';

  @override
  String get systemDefault => 'Systemstandard';

  @override
  String get showEcoMode => 'ECO-tilstand';

  @override
  String get showEcoModeSubtitle => 'Vis energibesparelsestilstand';

  @override
  String get showHeatingSchedule => 'Varmeplan';

  @override
  String get showHeatingScheduleSubtitle => 'Vis ugeprogrammering';

  @override
  String get showRoomPowerRequest => 'Rumeffektanmodning';

  @override
  String get showRoomPowerRequestSubtitle => 'Vis niveau 1-4 vælger';

  @override
  String get showConvectionFans => 'Konvektionsblæsere';

  @override
  String get showConvectionFansSubtitle => 'Vis kontroller for 2 blæsere';

  @override
  String get showFrostProtection => 'Frostbeskyttelse';

  @override
  String get showFrostProtectionSubtitle => 'Vis frostbeskyttelseskontrol';

  @override
  String get showTemperatureOffset => 'Temperaturkalibrering';

  @override
  String get showTemperatureOffsetSubtitle =>
      'Vis temperaturoffset -3 til +3°C';

  @override
  String get showBakeTemperature => 'Bagetemperatur';

  @override
  String get showBakeTemperatureSubtitle => 'Vis ovntemperaturkontrol';

  @override
  String get enableNotifications => 'Aktiver notifikationer';

  @override
  String get monitorChangesInBackground =>
      'Overvåg ændringer selv når appen er lukket';

  @override
  String get notificationDelayInfo =>
      'Notifikationer kan være forsinket afhængigt af batterioptimering';

  @override
  String get showErrorWarningPanel => 'Fejl og advarsler';

  @override
  String get showErrorWarningPanelSubtitle => 'Vis aktive fejlpanel';

  @override
  String get showSafetyStatusPanel => 'Sikkerhed og diagnostik';

  @override
  String get showSafetyStatusPanelSubtitle =>
      'Vis sikkerhedspanel (dør, WiFi, tryk)';

  @override
  String get showSensorInfoPanel => 'Sensorinformation';

  @override
  String get showSensorInfoPanelSubtitle => 'Vis sensordata';

  @override
  String get showOutputsInfoPanel => 'Udgangsinformation';

  @override
  String get showOutputsInfoPanelSubtitle =>
      'Vis udgangsstatus (motorer, blæsere)';

  @override
  String get showStatisticsPanel => 'Statistik og system';

  @override
  String get showStatisticsPanelSubtitle => 'Vis brugsstatistik';

  @override
  String get noError => 'Ingen fejl';

  @override
  String get errorDetected => 'Fejl registreret';

  @override
  String get warning => 'Advarsel';

  @override
  String get errorCode => 'Fejlkode:';

  @override
  String get warningCode => 'Advarselskode:';

  @override
  String get consultManual =>
      'Se brugermanualen eller kontakt teknisk service.';

  @override
  String get errorRoomSensorSignalLost =>
      'Rumsensorsignal tabt - Skift til MANUEL TILSTAND';

  @override
  String get errorPelletLidOpen => 'Pelletlåg åbent - Luk låget';

  @override
  String get errorDoorOpen => 'Dør åben - Luk døren';

  @override
  String get errorPelletLidOrDoorOpen => 'Pelletlåg eller dør åben';

  @override
  String get errorNotEnoughLowPressure =>
      'Ikke nok undertryk - Kontroller udstødning';

  @override
  String get errorAirFlapsCalibrating =>
      'Kalibrerer luftklapper - Vent venligst';

  @override
  String get errorBurnBackFlapOpen => 'Tilbageslagsklap eller røggasklap åben';

  @override
  String get errorStoveNotInPosition =>
      'Ovn ikke i position - Kontroller placering';

  @override
  String systemError(String code) {
    return 'Systemfejl (kode: $code)';
  }

  @override
  String get noWarning => 'Ingen advarsel';

  @override
  String get warningRoomSensorSignalLost => 'Rumsensorsignal tabt';

  @override
  String get warningPelletLidOpen => 'Pelletlåg åbent';

  @override
  String get warningDoorOpen => 'Dør åben';

  @override
  String get warningPelletLidOrDoorOpen => 'Pelletlåg eller dør åben';

  @override
  String get warningNotEnoughLowPressure => 'Ikke nok undertryk';

  @override
  String get warningAirFlapsCalibrating => 'Kalibrerer luftklapper';

  @override
  String get warningBurnBackFlapOpen =>
      'Tilbageslagsklap eller røggasklap åben';

  @override
  String get warningStoveNotInPosition => 'Ovn ikke i position';

  @override
  String systemWarning(int code) {
    return 'Systemadvarsel (kode: $code)';
  }

  @override
  String get currentTemperature => 'Nuværende temperatur';

  @override
  String get safetyAndDiagnostics => 'Sikkerhed & diagnostik';

  @override
  String get door => 'Dør';

  @override
  String get cover => 'Afdækning';

  @override
  String get closed => 'Lukket';

  @override
  String get open => 'Åben';

  @override
  String get wifiSignal => 'WiFi-signal';

  @override
  String get temperatureLimiter => 'Temperaturbegrænser';

  @override
  String get internalTemperatureOK => 'Intern temperatur OK';

  @override
  String get overheating => 'Overophedning';

  @override
  String get sensorInformation => 'Sensorinformation';

  @override
  String get flameTemperature => 'Flammetemperatur';

  @override
  String get ambientTemperature => 'Omgivelsestemperatur';

  @override
  String get externalRequest => 'Ekstern anmodning';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nej';

  @override
  String get boardTemperature => 'Korttemperatur';

  @override
  String get ovenTemperature => 'Ovntemperatur';

  @override
  String get outputs => 'Udgange';

  @override
  String get diagonalMotor => 'Diagonal motor';

  @override
  String get horizontalMotor => 'Horisontal motor';

  @override
  String get combustionGasFan => 'Forbrændingsgasblæser';

  @override
  String get airDampers => 'Luftspjæld';

  @override
  String get ignition => 'Tænding';

  @override
  String get on => 'TIL';

  @override
  String get off => 'FRA';

  @override
  String get current => 'Strøm';

  @override
  String get statisticsAndSystem => 'Statistik & system';

  @override
  String get usage => 'Forbrug';

  @override
  String get pelletHours => 'Pilletimer';

  @override
  String get woodHours => 'Brændetimer';

  @override
  String get onOffCycles => 'TIL/FRA-cyklusser';

  @override
  String get ignitionCount => 'Antal tændinger';

  @override
  String get consumption => 'Forbrug';

  @override
  String get totalConsumption => 'Samlet forbrug';

  @override
  String get beforeMaintenance => 'Før vedligeholdelse';

  @override
  String get systemInformation => 'Systeminformation';

  @override
  String get model => 'Model';

  @override
  String get manufacturer => 'Producent';

  @override
  String get serialNumber => 'Serienummer';

  @override
  String get firmwareVersion => 'Firmwareversion';

  @override
  String get detailedScheduleEditor => 'Detaljeret planeditor';

  @override
  String get monday => 'Mandag';

  @override
  String get tuesday => 'Tirsdag';

  @override
  String get wednesday => 'Onsdag';

  @override
  String get thursday => 'Torsdag';

  @override
  String get friday => 'Fredag';

  @override
  String get saturday => 'Lørdag';

  @override
  String get sunday => 'Søndag';

  @override
  String get disableThisSlot => 'Deaktiver denne slot';

  @override
  String get enableScheduleToEdit =>
      'Aktiver varmeplan for at redigere programmering';

  @override
  String get viewOnGitHub => 'Se på GitHub';

  @override
  String get about => 'Om';

  @override
  String version(String version) {
    return 'Version $version';
  }

  @override
  String get configureAdvancedFeatures => 'Konfigurer avancerede funktioner';

  @override
  String get configureBackgroundNotifications =>
      'Konfigurer baggrundsnotifikationer';

  @override
  String get toggleInfoPanelVisibility => 'Skift infopanelsynlighed';

  @override
  String get notifications => 'Notifikationer';

  @override
  String get statusFrostProtection => 'Frostbeskyttelse';

  @override
  String get statusStoveOff => 'Ovn slukket';

  @override
  String get statusStandby => 'Standby';

  @override
  String get statusExternalRequest => 'Ekstern anmodning';

  @override
  String get statusOff => 'Slukket';

  @override
  String get statusIgnitionOn => 'Tænding i gang';

  @override
  String get statusStartingUp => 'Starter op';

  @override
  String get statusRunning => 'Kører';

  @override
  String get statusBigClean => 'Stor rengøring';

  @override
  String get statusCleaning => 'Rengøring';

  @override
  String get statusBurnOff => 'Slukker';

  @override
  String get statusSplitLogCheck => 'Brændetjek';

  @override
  String get statusSplitLogMode => 'Brændetilstand';

  @override
  String statusUnknown(int state) {
    return 'Ukendt tilstand ($state)';
  }

  @override
  String get showChartsPanel => 'Vis diagrampanel';

  @override
  String get showChartsPanelSubtitle =>
      'Vis temperaturudvikling og historiske datadiagrammer';

  @override
  String get backgroundPolling => 'Baggrundsopdatering';

  @override
  String get continuousPolling => 'Kontinuerlig opdatering';

  @override
  String get continuousPollingSubtitle =>
      'Hold forbindelsen aktiv selv når skærmen er låst (kræver undtagelse fra batterioptimering)';

  @override
  String get continuousPollingEnabled => 'Kontinuerlig opdatering aktiveret';

  @override
  String get continuousPollingDisabled => 'Kontinuerlig opdatering deaktiveret';

  @override
  String get continuousPollingNotAvailable =>
      'Kontinuerlig opdatering er kun tilgængelig på Android';

  @override
  String get batteryOptimizationRequired => 'Batterioptimering påkrævet';

  @override
  String get batteryOptimizationExplanation =>
      'For at holde forbindelsen aktiv når skærmen er låst, skal batterioptimering deaktiveres for denne app. Dette sikrer pålidelig baggrundsopdatering.\n\nDu vil blive omdirigeret til systemindstillinger, hvor du kan give denne tilladelse.';

  @override
  String get batteryOptimizationStillEnabled =>
      'Batterioptimering er stadig aktiveret. Deaktiver det i indstillinger for at bruge kontinuerlig opdatering.';

  @override
  String get openSettings => 'Åbn indstillinger';

  @override
  String get charts => 'Diagrammer';

  @override
  String get chartsSubtitle => 'Temperaturudvikling & statistik';

  @override
  String get temperatureEvolution24h => 'Temperaturudvikling (24t)';

  @override
  String get roomTargetAxis => 'Rum / Mål';

  @override
  String get flameAxis => 'Flamme';

  @override
  String get noDataAvailableYet => 'Ingen data tilgængelig endnu';

  @override
  String get dataCollectionInProgress => 'Dataindsamling i gang...';

  @override
  String dataPointsCollected(int count, int percent) {
    return '$count datapunkter indsamlet ($percent%)';
  }

  @override
  String minimumPointsNeeded(int count) {
    return 'Minimum $count punkter nødvendige for diagram';
  }

  @override
  String get roomTemperature => 'Rumtemperatur';

  @override
  String get failedToLoadChartData => 'Kunne ikke indlæse diagramdata';

  @override
  String get chartAutoUpdateInfo =>
      'Historiske data indsamles automatisk. Diagrammet opdateres hvert 4. sekund med nye datapunkter.';
}
