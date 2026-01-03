// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Rika Firenet';

  @override
  String get loginSubtitle => 'Log in op uw account';

  @override
  String get myStoves => 'Mijn kachels';

  @override
  String get settings => 'Instellingen';

  @override
  String get email => 'E-mail';

  @override
  String get emailHint => 'uw@email.com';

  @override
  String get password => 'Wachtwoord';

  @override
  String get login => 'Inloggen';

  @override
  String get refresh => 'Vernieuwen';

  @override
  String get testNow => 'Nu testen';

  @override
  String get editThreshold => 'Drempelwaarde bewerken';

  @override
  String get configureThreshold => 'Drempelwaarde configureren';

  @override
  String get reset => 'Herstellen';

  @override
  String get cancel => 'Annuleren';

  @override
  String get save => 'Opslaan';

  @override
  String get deleteThreshold => 'Drempelwaarde verwijderen';

  @override
  String get turnOn => 'Inschakelen';

  @override
  String get turnOff => 'Uitschakelen';

  @override
  String get logout => 'Uitloggen';

  @override
  String get retry => 'Opnieuw proberen';

  @override
  String get pleaseEnterEmail => 'Voer uw e-mailadres in';

  @override
  String get invalidEmail => 'Ongeldig e-mailadres';

  @override
  String get pleaseEnterPassword => 'Voer uw wachtwoord in';

  @override
  String get error => 'Fout';

  @override
  String get connectionError => 'Verbindingsfout';

  @override
  String get logoutTitle => 'Uitloggen';

  @override
  String get logoutConfirmation => 'Wilt u echt uitloggen?';

  @override
  String get turnOnStoveQuestion => 'Kachel inschakelen?';

  @override
  String get turnOffStoveQuestion => 'Kachel uitschakelen?';

  @override
  String get turnOnStoveConfirmation => 'Wilt u de kachel starten?';

  @override
  String get turnOffStoveConfirmation => 'Wilt u de kachel uitschakelen?';

  @override
  String thresholdDialogTitle(String fieldName) {
    return 'Drempelwaarde voor $fieldName';
  }

  @override
  String get notifyIfValueOutOfRange =>
      'Waarschuw als de waarde buiten dit bereik komt:';

  @override
  String minimumLabel(String value) {
    return 'Minimum: $value';
  }

  @override
  String maximumLabel(String value) {
    return 'Maximum: $value';
  }

  @override
  String get loadingStoves => 'Kachels laden...';

  @override
  String get loadingStoveData => 'Kachelgegevens laden...';

  @override
  String get noStoveFound => 'Geen kachel gevonden';

  @override
  String get noStoveAssociated => 'Er is geen kachel gekoppeld aan uw account';

  @override
  String get online => 'Online';

  @override
  String offlineSince(int minutes) {
    return 'Offline sinds $minutes min';
  }

  @override
  String get notificationsEnabledSuccess => 'Meldingen succesvol ingeschakeld';

  @override
  String get permissionDenied =>
      'Toestemming geweigerd. Schakel meldingen in via Android-instellingen.';

  @override
  String get notificationsDisabled => 'Meldingen uitgeschakeld';

  @override
  String get testInProgress => 'Test wordt uitgevoerd...';

  @override
  String get testSuccess => 'Test geslaagd! Controleer meldingen.';

  @override
  String get testFailed => 'Test mislukt. Controleer logboeken.';

  @override
  String get noStoveConfigured => 'Geen kachel geconfigureerd';

  @override
  String get loadingStoveList => 'Kachellijst laden...';

  @override
  String get settingsResetToDefaults =>
      'Instellingen hersteld naar standaardwaarden';

  @override
  String get power => 'Aan/uit';

  @override
  String get stoveOn => 'Kachel aan';

  @override
  String get stoveOff => 'Kachel uit';

  @override
  String get targetTemperature => 'Doeltemperatuur';

  @override
  String get turnOnStoveToAdjustTemperature =>
      'Schakel de kachel in om de temperatuur aan te passen';

  @override
  String get operatingMode => 'Bedrijfsmodus';

  @override
  String get manualMode => 'Handmatig';

  @override
  String get autoMode => 'Auto';

  @override
  String get comfortMode => 'Comfort';

  @override
  String get turnOnStoveToChangeMode =>
      'Schakel de kachel in om de modus te wijzigen';

  @override
  String get heatingPower => 'Verwarmingsvermogen';

  @override
  String get minPower => 'Min (0%)';

  @override
  String get maxPower => 'Max (100%)';

  @override
  String get turnOnStoveToAdjustPower =>
      'Schakel de kachel in om het vermogen aan te passen';

  @override
  String get roomPowerRequest => 'Kamervermogen';

  @override
  String get roomPowerRequestDescription => 'Vermogensvraag voor de kamer';

  @override
  String get minimal => 'Minimaal';

  @override
  String get maximum => 'Maximaal';

  @override
  String get turnOnStoveToAdjustRoomPower =>
      'Schakel de kachel in om het kamervermogen aan te passen';

  @override
  String get ecoMode => 'ECO-modus';

  @override
  String get energySavingEnabled => 'Energiebesparing ingeschakeld';

  @override
  String get energySavingDisabled => 'Energiebesparing uitgeschakeld';

  @override
  String get frostProtection => 'Vorstbeveiliging';

  @override
  String frostProtectionActive(int temp) {
    return 'Beveiliging actief - start als temp < $temp°C';
  }

  @override
  String get frostProtectionInactive => 'Beveiliging uitgeschakeld';

  @override
  String get triggerTemperature => 'Activeringstemperatuur';

  @override
  String get minTemp => 'Min (4°C)';

  @override
  String get maxTemp => 'Max (10°C)';

  @override
  String get turnOnStoveToConfigureFrostProtection =>
      'Schakel de kachel in om de vorstbeveiliging te configureren';

  @override
  String get convectionFans => 'Convectieventilatoren';

  @override
  String fansStatus(String fan1, String fan2) {
    return 'Ventilator 1: $fan1 | Ventilator 2: $fan2';
  }

  @override
  String fanNumber(int number) {
    return 'Ventilator $number';
  }

  @override
  String get active => 'Actief';

  @override
  String get inactive => 'Inactief';

  @override
  String get speedLevel => 'Snelheidsniveau';

  @override
  String get minSpeed => 'Min (0)';

  @override
  String get maxSpeed => 'Max (5)';

  @override
  String get heatingArea => 'Verwarmingsgebied';

  @override
  String get minArea => '-30';

  @override
  String get centerArea => '0';

  @override
  String get maxArea => '+30';

  @override
  String get turnOnStoveToConfigureFans =>
      'Schakel de kachel in om de ventilatoren te configureren';

  @override
  String get temperatureCalibration => 'Temperatuurkalibratie';

  @override
  String get temperatureCalibrationDescription =>
      'Precisieaanpassing van temperatuursensor';

  @override
  String get minOffset => '-3°C';

  @override
  String get zeroOffset => '0°C';

  @override
  String get maxOffset => '+3°C';

  @override
  String get turnOnStoveToCalibrate =>
      'Schakel de kachel in om de temperatuur te kalibreren';

  @override
  String get bakeTemperature => 'Oventemperatuur';

  @override
  String get bakeTemperatureDescription =>
      'Temperatuurinstelling houtgestookte oven';

  @override
  String get minBakeTemp => '100°C';

  @override
  String get maxBakeTemp => '250°C';

  @override
  String get turnOnStoveToAdjustBakeTemp =>
      'Schakel de kachel in om de oventemperatuur aan te passen';

  @override
  String get heatingSchedule => 'Verwarmingsschema';

  @override
  String get activeInComfortMode => 'Actief in comfortmodus';

  @override
  String get setpointTemperature => 'Gewenste temperatuur';

  @override
  String get turnOnStoveToAdjustSchedule =>
      'Schakel de kachel in om het schema aan te passen';

  @override
  String get quickControls => 'Snelle bediening';

  @override
  String get advancedControls => 'Geavanceerde bediening';

  @override
  String get appearance => 'Uiterlijk';

  @override
  String get backgroundNotifications => 'Achtergrondmeldingen';

  @override
  String get informationPanels => 'Informatiepanelen';

  @override
  String watchedFields(int count) {
    return 'Bewaakte velden ($count geselecteerd)';
  }

  @override
  String pollingInterval(int minutes) {
    return 'Controle-interval: $minutes min';
  }

  @override
  String get theme => 'Thema';

  @override
  String get light => 'Licht';

  @override
  String get dark => 'Donker';

  @override
  String get system => 'Systeem';

  @override
  String get systemDescription => 'Systeeminstellingen volgen';

  @override
  String get lightModeActive => 'Lichte modus actief';

  @override
  String get darkModeActive => 'Donkere modus actief';

  @override
  String get language => 'Taal';

  @override
  String get languageSubtitle => 'App-taal selecteren';

  @override
  String get systemDefault => 'Systeemstandaard';

  @override
  String get showEcoMode => 'ECO-modus';

  @override
  String get showEcoModeSubtitle => 'Energiebesparingsschakelaar tonen';

  @override
  String get showHeatingSchedule => 'Verwarmingsschema';

  @override
  String get showHeatingScheduleSubtitle => 'Weekprogrammering tonen';

  @override
  String get showRoomPowerRequest => 'Kamervermogen';

  @override
  String get showRoomPowerRequestSubtitle => 'Niveaukiezer 1-4 tonen';

  @override
  String get showConvectionFans => 'Convectieventilatoren';

  @override
  String get showConvectionFansSubtitle =>
      'Bediening voor 2 ventilatoren tonen';

  @override
  String get showFrostProtection => 'Vorstbeveiliging';

  @override
  String get showFrostProtectionSubtitle => 'Vorstbeveiligingsbediening tonen';

  @override
  String get showTemperatureOffset => 'Temperatuurkalibratie';

  @override
  String get showTemperatureOffsetSubtitle =>
      'Temperatuurafwijking -3 tot +3°C tonen';

  @override
  String get showBakeTemperature => 'Oventemperatuur';

  @override
  String get showBakeTemperatureSubtitle => 'Oventemperatuurbediening tonen';

  @override
  String get enableNotifications => 'Meldingen inschakelen';

  @override
  String get monitorChangesInBackground =>
      'Wijzigingen controleren zelfs wanneer de app gesloten is';

  @override
  String get notificationDelayInfo =>
      'Meldingen kunnen worden vertraagd afhankelijk van batterijoptimalisatie';

  @override
  String get showErrorWarningPanel => 'Fouten en waarschuwingen';

  @override
  String get showErrorWarningPanelSubtitle => 'Actieve foutenpaneel tonen';

  @override
  String get showSafetyStatusPanel => 'Veiligheid en diagnostiek';

  @override
  String get showSafetyStatusPanelSubtitle =>
      'Veiligheidspaneel tonen (deur, WiFi, druk)';

  @override
  String get showSensorInfoPanel => 'Sensorinformatie';

  @override
  String get showSensorInfoPanelSubtitle => 'Sensorgegevens tonen';

  @override
  String get showOutputsInfoPanel => 'Uitganginformatie';

  @override
  String get showOutputsInfoPanelSubtitle =>
      'Uitgangstatus tonen (motoren, ventilatoren)';

  @override
  String get showStatisticsPanel => 'Statistieken en systeem';

  @override
  String get showStatisticsPanelSubtitle => 'Gebruiksstatistieken tonen';

  @override
  String get noError => 'Geen fout';

  @override
  String get errorDetected => 'Fout gedetecteerd';

  @override
  String get warning => 'Waarschuwing';

  @override
  String get errorCode => 'Foutcode:';

  @override
  String get warningCode => 'Waarschuwingscode:';

  @override
  String get consultManual =>
      'Raadpleeg de gebruikershandleiding of neem contact op met de technische dienst.';

  @override
  String get errorRoomSensorSignalLost =>
      'Kamersensor signaal verloren - Schakel over naar HANDMATIGE MODUS';

  @override
  String get errorPelletLidOpen => 'Pelletdeksel open - Sluit het deksel';

  @override
  String get errorDoorOpen => 'Deur open - Sluit de deur';

  @override
  String get errorPelletLidOrDoorOpen => 'Pelletdeksel of deur open';

  @override
  String get errorNotEnoughLowPressure =>
      'Onvoldoende onderdruk - Controleer afvoer';

  @override
  String get errorAirFlapsCalibrating =>
      'Luchtkleppen kalibreren - Even geduld';

  @override
  String get errorBurnBackFlapOpen => 'Terugbrandklep of rookgasklep open';

  @override
  String get errorStoveNotInPosition =>
      'Kachel niet in positie - Controleer plaatsing';

  @override
  String systemError(String code) {
    return 'Systeemfout (code: $code)';
  }

  @override
  String get noWarning => 'Geen waarschuwing';

  @override
  String get warningRoomSensorSignalLost => 'Kamersensor signaal verloren';

  @override
  String get warningPelletLidOpen => 'Pelletdeksel open';

  @override
  String get warningDoorOpen => 'Deur open';

  @override
  String get warningPelletLidOrDoorOpen => 'Pelletdeksel of deur open';

  @override
  String get warningNotEnoughLowPressure => 'Onvoldoende onderdruk';

  @override
  String get warningAirFlapsCalibrating => 'Luchtkleppen kalibreren';

  @override
  String get warningBurnBackFlapOpen => 'Terugbrandklep of rookgasklep open';

  @override
  String get warningStoveNotInPosition => 'Kachel niet in positie';

  @override
  String systemWarning(int code) {
    return 'Systeemwaarschuwing (code: $code)';
  }

  @override
  String get currentTemperature => 'Huidige temperatuur';

  @override
  String get safetyAndDiagnostics => 'Veiligheid en diagnostiek';

  @override
  String get door => 'Deur';

  @override
  String get cover => 'Deksel';

  @override
  String get closed => 'Gesloten';

  @override
  String get open => 'Open';

  @override
  String get wifiSignal => 'WiFi-signaal';

  @override
  String get temperatureLimiter => 'Temperatuurbegrenzer';

  @override
  String get internalTemperatureOK => 'Interne temperatuur OK';

  @override
  String get overheating => 'Oververhitting';

  @override
  String get sensorInformation => 'Sensorinformatie';

  @override
  String get flameTemperature => 'Vlamtemperatuur';

  @override
  String get ambientTemperature => 'Omgevingstemperatuur';

  @override
  String get externalRequest => 'Externe aanvraag';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nee';

  @override
  String get boardTemperature => 'Bordtemperatuur';

  @override
  String get ovenTemperature => 'Oventemperatuur';

  @override
  String get outputs => 'Uitgangen';

  @override
  String get diagonalMotor => 'Diagonale motor';

  @override
  String get horizontalMotor => 'Horizontale motor';

  @override
  String get combustionGasFan => 'Verbrandingsgasventilator';

  @override
  String get airDampers => 'Luchtkleppen';

  @override
  String get ignition => 'Ontsteking';

  @override
  String get on => 'AAN';

  @override
  String get off => 'UIT';

  @override
  String get current => 'Huidige';

  @override
  String get statisticsAndSystem => 'Statistieken en systeem';

  @override
  String get usage => 'Gebruik';

  @override
  String get pelletHours => 'Pelleturen';

  @override
  String get woodHours => 'Houturen';

  @override
  String get onOffCycles => 'AAN/UIT-cycli';

  @override
  String get ignitionCount => 'Ontstekingsteller';

  @override
  String get consumption => 'Verbruik';

  @override
  String get totalConsumption => 'Totaal verbruik';

  @override
  String get beforeMaintenance => 'Vóór onderhoud';

  @override
  String get systemInformation => 'Systeeminformatie';

  @override
  String get model => 'Model';

  @override
  String get manufacturer => 'Fabrikant';

  @override
  String get serialNumber => 'Serienummer';

  @override
  String get firmwareVersion => 'Firmwareversie';

  @override
  String get detailedScheduleEditor => 'Gedetailleerde schema-editor';

  @override
  String get monday => 'Maandag';

  @override
  String get tuesday => 'Dinsdag';

  @override
  String get wednesday => 'Woensdag';

  @override
  String get thursday => 'Donderdag';

  @override
  String get friday => 'Vrijdag';

  @override
  String get saturday => 'Zaterdag';

  @override
  String get sunday => 'Zondag';

  @override
  String get disableThisSlot => 'Dit tijdvak uitschakelen';

  @override
  String get enableScheduleToEdit =>
      'Schakel verwarmingsschema in om de programmering te bewerken';

  @override
  String get viewOnGitHub => 'Bekijken op GitHub';

  @override
  String get about => 'Over';

  @override
  String version(String version) {
    return 'Versie $version';
  }

  @override
  String get configureAdvancedFeatures => 'Geavanceerde functies configureren';

  @override
  String get configureBackgroundNotifications =>
      'Achtergrondmeldingen configureren';

  @override
  String get toggleInfoPanelVisibility =>
      'Zichtbaarheid informatiepaneel schakelen';

  @override
  String get notifications => 'Meldingen';

  @override
  String get statusFrostProtection => 'Vorstbeveiliging';

  @override
  String get statusStoveOff => 'Kachel uit';

  @override
  String get statusStandby => 'Stand-by';

  @override
  String get statusExternalRequest => 'Externe aanvraag';

  @override
  String get statusOff => 'Uit';

  @override
  String get statusIgnitionOn => 'Ontsteking bezig';

  @override
  String get statusStartingUp => 'Opstarten';

  @override
  String get statusRunning => 'Actief';

  @override
  String get statusBigClean => 'Grote schoonmaak';

  @override
  String get statusCleaning => 'Schoonmaken';

  @override
  String get statusBurnOff => 'Uitbranden';

  @override
  String get statusSplitLogCheck => 'Controle brandhout';

  @override
  String get statusSplitLogMode => 'Brandhoutmodus';

  @override
  String statusUnknown(int state) {
    return 'Onbekende status ($state)';
  }

  @override
  String get showChartsPanel => 'Toon grafiekenpaneel';

  @override
  String get showChartsPanelSubtitle =>
      'Toon temperatuurverloop en historische datagrafieken';

  @override
  String get backgroundPolling => 'Achtergrondverversing';

  @override
  String get continuousPolling => 'Continue verversing';

  @override
  String get continuousPollingSubtitle =>
      'Houd verbinding actief zelfs met vergrendeld scherm (vereist uitzondering batterijoptimalisatie)';

  @override
  String get continuousPollingEnabled => 'Continue verversing ingeschakeld';

  @override
  String get continuousPollingDisabled => 'Continue verversing uitgeschakeld';

  @override
  String get continuousPollingNotAvailable =>
      'Continue verversing is alleen beschikbaar op Android';

  @override
  String get batteryOptimizationRequired => 'Batterijoptimalisatie vereist';

  @override
  String get batteryOptimizationExplanation =>
      'Om de verbinding actief te houden wanneer het scherm is vergrendeld, moet batterijoptimalisatie worden uitgeschakeld voor deze app. Dit zorgt voor betrouwbare achtergrondverversing.\n\nU wordt doorgestuurd naar systeeminstellingen waar u deze toestemming kunt verlenen.';

  @override
  String get batteryOptimizationStillEnabled =>
      'Batterijoptimalisatie is nog steeds ingeschakeld. Schakel het uit in de instellingen om continue verversing te gebruiken.';

  @override
  String get openSettings => 'Open instellingen';

  @override
  String get charts => 'Grafieken';

  @override
  String get chartsSubtitle => 'Temperatuurverloop & statistieken';

  @override
  String get temperatureEvolution24h => 'Temperatuurverloop (24u)';

  @override
  String get stateTimelineTitle => 'Kachel Status Tijdlijn (24u)';

  @override
  String get roomTargetAxis => 'Kamer / Doel';

  @override
  String get flameAxis => 'Vlam';

  @override
  String get noDataAvailableYet => 'Nog geen gegevens beschikbaar';

  @override
  String get dataCollectionInProgress => 'Gegevensverzameling bezig...';

  @override
  String dataPointsCollected(int count, int percent) {
    return '$count datapunten verzameld ($percent%)';
  }

  @override
  String minimumPointsNeeded(int count) {
    return 'Minimum $count punten nodig voor grafiek';
  }

  @override
  String get roomTemperature => 'Kamertemperatuur';

  @override
  String get failedToLoadChartData => 'Fout bij laden grafiekgegevens';

  @override
  String get chartAutoUpdateInfo =>
      'Historische gegevens worden automatisch verzameld. Grafiek wordt elke 4 seconden bijgewerkt met nieuwe datapunten.';
}
