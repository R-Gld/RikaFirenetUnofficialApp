// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Rika Firenet';

  @override
  String get loginSubtitle => 'Melden Sie sich bei Ihrem Konto an';

  @override
  String get myStoves => 'Meine Öfen';

  @override
  String get settings => 'Einstellungen';

  @override
  String get email => 'E-Mail';

  @override
  String get emailHint => 'ihre@email.de';

  @override
  String get password => 'Passwort';

  @override
  String get login => 'Anmelden';

  @override
  String get refresh => 'Aktualisieren';

  @override
  String get testNow => 'Jetzt testen';

  @override
  String get editThreshold => 'Schwellenwert bearbeiten';

  @override
  String get configureThreshold => 'Schwellenwert konfigurieren';

  @override
  String get reset => 'Zurücksetzen';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get save => 'Speichern';

  @override
  String get deleteThreshold => 'Schwellenwert löschen';

  @override
  String get turnOn => 'Einschalten';

  @override
  String get turnOff => 'Ausschalten';

  @override
  String get logout => 'Abmelden';

  @override
  String get retry => 'Erneut versuchen';

  @override
  String get pleaseEnterEmail => 'Bitte geben Sie Ihre E-Mail ein';

  @override
  String get invalidEmail => 'Ungültige E-Mail';

  @override
  String get pleaseEnterPassword => 'Bitte geben Sie Ihr Passwort ein';

  @override
  String get error => 'Fehler';

  @override
  String get connectionError => 'Verbindungsfehler';

  @override
  String get logoutTitle => 'Abmelden';

  @override
  String get logoutConfirmation => 'Möchten Sie sich wirklich abmelden?';

  @override
  String get turnOnStoveQuestion => 'Ofen einschalten?';

  @override
  String get turnOffStoveQuestion => 'Ofen ausschalten?';

  @override
  String get turnOnStoveConfirmation => 'Möchten Sie den Ofen starten?';

  @override
  String get turnOffStoveConfirmation => 'Möchten Sie den Ofen ausschalten?';

  @override
  String thresholdDialogTitle(String fieldName) {
    return 'Schwellenwert für $fieldName';
  }

  @override
  String get notifyIfValueOutOfRange =>
      'Benachrichtigen, wenn der Wert außerhalb dieses Bereichs liegt:';

  @override
  String minimumLabel(String value) {
    return 'Minimum: $value';
  }

  @override
  String maximumLabel(String value) {
    return 'Maximum: $value';
  }

  @override
  String get loadingStoves => 'Lade Öfen...';

  @override
  String get loadingStoveData => 'Lade Ofendaten...';

  @override
  String get noStoveFound => 'Kein Ofen gefunden';

  @override
  String get noStoveAssociated => 'Kein Ofen ist mit Ihrem Konto verknüpft';

  @override
  String get online => 'Online';

  @override
  String offlineSince(int minutes) {
    return 'Offline seit $minutes Min';
  }

  @override
  String get notificationsEnabledSuccess =>
      'Benachrichtigungen erfolgreich aktiviert';

  @override
  String get permissionDenied =>
      'Berechtigung verweigert. Aktivieren Sie Benachrichtigungen in den Android-Einstellungen.';

  @override
  String get notificationsDisabled => 'Benachrichtigungen deaktiviert';

  @override
  String get testInProgress => 'Test läuft...';

  @override
  String get testSuccess =>
      'Test erfolgreich! Überprüfen Sie die Benachrichtigungen.';

  @override
  String get testFailed =>
      'Test fehlgeschlagen. Überprüfen Sie die Protokolle.';

  @override
  String get noStoveConfigured => 'Kein Ofen konfiguriert';

  @override
  String get loadingStoveList => 'Lade Ofenliste...';

  @override
  String get settingsResetToDefaults =>
      'Einstellungen auf Standard zurückgesetzt';

  @override
  String get power => 'Leistung';

  @override
  String get stoveOn => 'Ofen an';

  @override
  String get stoveOff => 'Ofen aus';

  @override
  String get targetTemperature => 'Zieltemperatur';

  @override
  String get turnOnStoveToAdjustTemperature =>
      'Schalten Sie den Ofen ein, um die Temperatur anzupassen';

  @override
  String get operatingMode => 'Betriebsmodus';

  @override
  String get manualMode => 'Manuell';

  @override
  String get autoMode => 'Auto';

  @override
  String get comfortMode => 'Komfort';

  @override
  String get turnOnStoveToChangeMode =>
      'Schalten Sie den Ofen ein, um den Modus zu ändern';

  @override
  String get heatingPower => 'Heizleistung';

  @override
  String get minPower => 'Min (0%)';

  @override
  String get maxPower => 'Max (100%)';

  @override
  String get turnOnStoveToAdjustPower =>
      'Schalten Sie den Ofen ein, um die Leistung anzupassen';

  @override
  String get roomPowerRequest => 'Raumleistungsanforderung';

  @override
  String get roomPowerRequestDescription =>
      'Leistungsanforderungsstufe für den Raum';

  @override
  String get minimal => 'Minimal';

  @override
  String get maximum => 'Maximal';

  @override
  String get turnOnStoveToAdjustRoomPower =>
      'Schalten Sie den Ofen ein, um die Raumleistung anzupassen';

  @override
  String get ecoMode => 'ECO-Modus';

  @override
  String get energySavingEnabled => 'Energiesparen aktiviert';

  @override
  String get energySavingDisabled => 'Energiesparen deaktiviert';

  @override
  String get frostProtection => 'Frostschutz';

  @override
  String frostProtectionActive(int temp) {
    return 'Schutz aktiv - startet bei Temp < $temp°C';
  }

  @override
  String get frostProtectionInactive => 'Schutz deaktiviert';

  @override
  String get triggerTemperature => 'Auslösetemperatur';

  @override
  String get minTemp => 'Min (4°C)';

  @override
  String get maxTemp => 'Max (10°C)';

  @override
  String get turnOnStoveToConfigureFrostProtection =>
      'Schalten Sie den Ofen ein, um den Frostschutz zu konfigurieren';

  @override
  String get convectionFans => 'Konvektionslüfter';

  @override
  String fansStatus(String fan1, String fan2) {
    return 'Lüfter 1: $fan1 | Lüfter 2: $fan2';
  }

  @override
  String fanNumber(int number) {
    return 'Lüfter $number';
  }

  @override
  String get active => 'Aktiv';

  @override
  String get inactive => 'Inaktiv';

  @override
  String get speedLevel => 'Geschwindigkeitsstufe';

  @override
  String get minSpeed => 'Min (0)';

  @override
  String get maxSpeed => 'Max (5)';

  @override
  String get heatingArea => 'Heizbereich';

  @override
  String get minArea => '-30';

  @override
  String get centerArea => '0';

  @override
  String get maxArea => '+30';

  @override
  String get turnOnStoveToConfigureFans =>
      'Schalten Sie den Ofen ein, um die Lüfter zu konfigurieren';

  @override
  String get temperatureCalibration => 'Temperaturkalibrierung';

  @override
  String get temperatureCalibrationDescription =>
      'Präzisionsanpassung des Temperatursensors';

  @override
  String get minOffset => '-3°C';

  @override
  String get zeroOffset => '0°C';

  @override
  String get maxOffset => '+3°C';

  @override
  String get turnOnStoveToCalibrate =>
      'Schalten Sie den Ofen ein, um die Temperatur zu kalibrieren';

  @override
  String get bakeTemperature => 'Backtemperatur';

  @override
  String get bakeTemperatureDescription => 'Holzofentemperatureinstellung';

  @override
  String get minBakeTemp => '100°C';

  @override
  String get maxBakeTemp => '250°C';

  @override
  String get turnOnStoveToAdjustBakeTemp =>
      'Schalten Sie den Ofen ein, um die Backtemperatur anzupassen';

  @override
  String get heatingSchedule => 'Heizplan';

  @override
  String get activeInComfortMode => 'Aktiv im Komfortmodus';

  @override
  String get setpointTemperature => 'Solltemperatur';

  @override
  String get turnOnStoveToAdjustSchedule =>
      'Schalten Sie den Ofen ein, um den Plan anzupassen';

  @override
  String get quickControls => 'Schnellsteuerung';

  @override
  String get advancedControls => 'Erweiterte Steuerung';

  @override
  String get appearance => 'Erscheinungsbild';

  @override
  String get backgroundNotifications => 'Hintergrundbenachrichtigungen';

  @override
  String get informationPanels => 'Informationspanels';

  @override
  String watchedFields(int count) {
    return 'Überwachte Felder ($count ausgewählt)';
  }

  @override
  String pollingInterval(int minutes) {
    return 'Prüfintervall: $minutes Min';
  }

  @override
  String get theme => 'Design';

  @override
  String get light => 'Hell';

  @override
  String get dark => 'Dunkel';

  @override
  String get system => 'System';

  @override
  String get systemDescription => 'Systemeinstellungen folgen';

  @override
  String get lightModeActive => 'Heller Modus aktiv';

  @override
  String get darkModeActive => 'Dunkler Modus aktiv';

  @override
  String get language => 'Sprache';

  @override
  String get languageSubtitle => 'App-Sprache auswählen';

  @override
  String get systemDefault => 'Systemstandard';

  @override
  String get showEcoMode => 'ECO-Modus';

  @override
  String get showEcoModeSubtitle => 'Energiesparmodus-Umschaltung anzeigen';

  @override
  String get showHeatingSchedule => 'Heizplan';

  @override
  String get showHeatingScheduleSubtitle => 'Wochenprogrammierung anzeigen';

  @override
  String get showRoomPowerRequest => 'Raumleistungsanforderung';

  @override
  String get showRoomPowerRequestSubtitle => 'Stufe 1-4 Auswahl anzeigen';

  @override
  String get showConvectionFans => 'Konvektionslüfter';

  @override
  String get showConvectionFansSubtitle => 'Steuerung für 2 Lüfter anzeigen';

  @override
  String get showFrostProtection => 'Frostschutz';

  @override
  String get showFrostProtectionSubtitle => 'Frostschutzsteuerung anzeigen';

  @override
  String get showTemperatureOffset => 'Temperaturkalibrierung';

  @override
  String get showTemperatureOffsetSubtitle =>
      'Temperaturversatz -3 bis +3°C anzeigen';

  @override
  String get showBakeTemperature => 'Backtemperatur';

  @override
  String get showBakeTemperatureSubtitle => 'Ofentemperatursteuerung anzeigen';

  @override
  String get enableNotifications => 'Benachrichtigungen aktivieren';

  @override
  String get monitorChangesInBackground =>
      'Änderungen überwachen, auch wenn die App geschlossen ist';

  @override
  String get notificationDelayInfo =>
      'Benachrichtigungen können je nach Akkuoptimierung verzögert sein';

  @override
  String get showErrorWarningPanel => 'Fehler und Warnungen';

  @override
  String get showErrorWarningPanelSubtitle => 'Aktives Fehlerpanel anzeigen';

  @override
  String get showSafetyStatusPanel => 'Sicherheit und Diagnose';

  @override
  String get showSafetyStatusPanelSubtitle =>
      'Sicherheitspanel anzeigen (Tür, WiFi, Druck)';

  @override
  String get showSensorInfoPanel => 'Sensorinformationen';

  @override
  String get showSensorInfoPanelSubtitle => 'Sensordaten anzeigen';

  @override
  String get showOutputsInfoPanel => 'Ausgangsinformationen';

  @override
  String get showOutputsInfoPanelSubtitle =>
      'Ausgangsstatus anzeigen (Motoren, Lüfter)';

  @override
  String get showStatisticsPanel => 'Statistiken und System';

  @override
  String get showStatisticsPanelSubtitle => 'Nutzungsstatistiken anzeigen';

  @override
  String get noError => 'Kein Fehler';

  @override
  String get errorDetected => 'Fehler erkannt';

  @override
  String get warning => 'Warnung';

  @override
  String get errorCode => 'Fehlercode:';

  @override
  String get warningCode => 'Warncode:';

  @override
  String get consultManual =>
      'Konsultieren Sie das Benutzerhandbuch oder kontaktieren Sie den technischen Service.';

  @override
  String get errorRoomSensorSignalLost =>
      'Raumsensorsignal verloren - Bitte auf MANUELLEN MODUS umschalten';

  @override
  String get errorPelletLidOpen =>
      'Pelletsdeckel offen - Bitte Deckel schließen';

  @override
  String get errorDoorOpen => 'Tür offen - Bitte Tür schließen';

  @override
  String get errorPelletLidOrDoorOpen => 'Pelletsdeckel oder Tür offen';

  @override
  String get errorNotEnoughLowPressure =>
      'Nicht genug Unterdruck - Abgasweg prüfen';

  @override
  String get errorAirFlapsCalibrating =>
      'Luftklappen kalibrieren - Bitte warten';

  @override
  String get errorBurnBackFlapOpen =>
      'Rückbrandklappe oder Rauchgasklappe offen';

  @override
  String get errorStoveNotInPosition =>
      'Ofen nicht in Position - Platzierung prüfen';

  @override
  String systemError(String code) {
    return 'Systemfehler (Code: $code)';
  }

  @override
  String get noWarning => 'Keine Warnung';

  @override
  String get warningRoomSensorSignalLost => 'Raumsensorsignal verloren';

  @override
  String get warningPelletLidOpen => 'Pelletsdeckel offen';

  @override
  String get warningDoorOpen => 'Tür offen';

  @override
  String get warningPelletLidOrDoorOpen => 'Pelletsdeckel oder Tür offen';

  @override
  String get warningNotEnoughLowPressure => 'Nicht genug Unterdruck';

  @override
  String get warningAirFlapsCalibrating => 'Luftklappen kalibrieren';

  @override
  String get warningBurnBackFlapOpen =>
      'Rückbrandklappe oder Rauchgasklappe offen';

  @override
  String get warningStoveNotInPosition => 'Ofen nicht in Position';

  @override
  String systemWarning(int code) {
    return 'Systemwarnung (Code: $code)';
  }

  @override
  String get currentTemperature => 'Aktuelle Temperatur';

  @override
  String get safetyAndDiagnostics => 'Sicherheit & Diagnose';

  @override
  String get door => 'Tür';

  @override
  String get cover => 'Abdeckung';

  @override
  String get closed => 'Geschlossen';

  @override
  String get open => 'Offen';

  @override
  String get wifiSignal => 'WiFi-Signal';

  @override
  String get temperatureLimiter => 'Temperaturbegrenzer';

  @override
  String get internalTemperatureOK => 'Interne Temperatur OK';

  @override
  String get overheating => 'Überhitzung';

  @override
  String get sensorInformation => 'Sensorinformationen';

  @override
  String get flameTemperature => 'Flammentemperatur';

  @override
  String get ambientTemperature => 'Umgebungstemperatur';

  @override
  String get externalRequest => 'Externe Anforderung';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nein';

  @override
  String get boardTemperature => 'Platinen temperatur';

  @override
  String get ovenTemperature => 'Ofentemperatur';

  @override
  String get outputs => 'Ausgänge';

  @override
  String get diagonalMotor => 'Diagonalmotor';

  @override
  String get horizontalMotor => 'Horizontalmotor';

  @override
  String get combustionGasFan => 'Verbrennungsgaslüfter';

  @override
  String get airDampers => 'Luftklappen';

  @override
  String get ignition => 'Zündung';

  @override
  String get on => 'EIN';

  @override
  String get off => 'AUS';

  @override
  String get current => 'Strom';

  @override
  String get statisticsAndSystem => 'Statistiken & System';

  @override
  String get usage => 'Nutzung';

  @override
  String get pelletHours => 'Pelletstunden';

  @override
  String get woodHours => 'Holzstunden';

  @override
  String get onOffCycles => 'EIN/AUS-Zyklen';

  @override
  String get ignitionCount => 'Zündanzahl';

  @override
  String get consumption => 'Verbrauch';

  @override
  String get totalConsumption => 'Gesamtverbrauch';

  @override
  String get beforeMaintenance => 'Vor Wartung';

  @override
  String get systemInformation => 'Systeminformationen';

  @override
  String get model => 'Modell';

  @override
  String get manufacturer => 'Hersteller';

  @override
  String get serialNumber => 'Seriennummer';

  @override
  String get firmwareVersion => 'Firmware-Version';

  @override
  String get detailedScheduleEditor => 'Detaillierter Planeditor';

  @override
  String get monday => 'Montag';

  @override
  String get tuesday => 'Dienstag';

  @override
  String get wednesday => 'Mittwoch';

  @override
  String get thursday => 'Donnerstag';

  @override
  String get friday => 'Freitag';

  @override
  String get saturday => 'Samstag';

  @override
  String get sunday => 'Sonntag';

  @override
  String get disableThisSlot => 'Diesen Zeitschlitz deaktivieren';

  @override
  String get enableScheduleToEdit =>
      'Heizplan aktivieren, um die Programmierung zu bearbeiten';

  @override
  String get viewOnGitHub => 'Auf GitHub ansehen';

  @override
  String get about => 'Über';

  @override
  String version(String version) {
    return 'Version $version';
  }

  @override
  String get configureAdvancedFeatures => 'Erweiterte Funktionen konfigurieren';

  @override
  String get configureBackgroundNotifications =>
      'Hintergrundbenachrichtigungen konfigurieren';

  @override
  String get toggleInfoPanelVisibility => 'Infopanel-Sichtbarkeit umschalten';

  @override
  String get notifications => 'Benachrichtigungen';

  @override
  String get statusFrostProtection => 'Frostschutz';

  @override
  String get statusStoveOff => 'Ofen aus';

  @override
  String get statusStandby => 'Standby';

  @override
  String get statusExternalRequest => 'Externe Anforderung';

  @override
  String get statusOff => 'Aus';

  @override
  String get statusIgnitionOn => 'Zündung an';

  @override
  String get statusStartingUp => 'Wird gestartet';

  @override
  String get statusRunning => 'In Betrieb';

  @override
  String get statusBigClean => 'Große Reinigung';

  @override
  String get statusCleaning => 'Reinigung';

  @override
  String get statusBurnOff => 'Ausbrand';

  @override
  String get statusSplitLogCheck => 'Scheitholz-Prüfung';

  @override
  String get statusSplitLogMode => 'Scheitholz-Modus';

  @override
  String statusUnknown(int state) {
    return 'Unbekannter Status ($state)';
  }

  @override
  String get showChartsPanel => 'Diagrammpanel anzeigen';

  @override
  String get showChartsPanelSubtitle =>
      'Temperaturverlauf und historische Datendiagramme anzeigen';

  @override
  String get backgroundPolling => 'Hintergrundaktualisierung';

  @override
  String get continuousPolling => 'Kontinuierliche Aktualisierung';

  @override
  String get continuousPollingSubtitle =>
      'Verbindung aktiv halten, auch wenn der Bildschirm gesperrt ist (erfordert Ausnahme von Akkuoptimierung)';

  @override
  String get continuousPollingEnabled =>
      'Kontinuierliche Aktualisierung aktiviert';

  @override
  String get continuousPollingDisabled =>
      'Kontinuierliche Aktualisierung deaktiviert';

  @override
  String get continuousPollingNotAvailable =>
      'Kontinuierliche Aktualisierung ist nur auf Android verfügbar';

  @override
  String get batteryOptimizationRequired => 'Akkuoptimierung erforderlich';

  @override
  String get batteryOptimizationExplanation =>
      'Um die Verbindung aktiv zu halten, wenn der Bildschirm gesperrt ist, muss die Akkuoptimierung für diese App deaktiviert werden. Dies gewährleistet zuverlässige Hintergrundaktualisierung.\n\nSie werden zu den Systemeinstellungen weitergeleitet, wo Sie diese Berechtigung erteilen können.';

  @override
  String get batteryOptimizationStillEnabled =>
      'Akkuoptimierung ist noch aktiviert. Bitte deaktivieren Sie sie in den Einstellungen, um kontinuierliche Aktualisierung zu verwenden.';

  @override
  String get openSettings => 'Einstellungen öffnen';

  @override
  String get charts => 'Diagramme';

  @override
  String get chartsSubtitle => 'Temperaturverlauf & Statistiken';

  @override
  String get temperatureEvolution24h => 'Temperaturverlauf (24Std)';

  @override
  String get stateTimelineTitle => 'Ofenzustands-Zeitachse (24Std)';

  @override
  String get roomTargetAxis => 'Raum / Ziel';

  @override
  String get flameAxis => 'Flamme';

  @override
  String get noDataAvailableYet => 'Noch keine Daten verfügbar';

  @override
  String get dataCollectionInProgress => 'Datenerfassung läuft...';

  @override
  String dataPointsCollected(int count, int percent) {
    return '$count Datenpunkte erfasst ($percent%)';
  }

  @override
  String minimumPointsNeeded(int count) {
    return 'Mindestens $count Punkte für Diagramm erforderlich';
  }

  @override
  String get roomTemperature => 'Raumtemperatur';

  @override
  String get failedToLoadChartData =>
      'Diagrammdaten konnten nicht geladen werden';

  @override
  String get chartAutoUpdateInfo =>
      'Historische Daten werden automatisch erfasst. Diagramm aktualisiert sich alle 4 Sekunden mit neuen Datenpunkten.';
}
