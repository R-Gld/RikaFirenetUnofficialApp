// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Rika Firenet';

  @override
  String get loginSubtitle => 'Accedi al tuo account';

  @override
  String get myStoves => 'Le mie stufe';

  @override
  String get settings => 'Impostazioni';

  @override
  String get email => 'Email';

  @override
  String get emailHint => 'tua@email.com';

  @override
  String get password => 'Password';

  @override
  String get login => 'Accedi';

  @override
  String get refresh => 'Aggiorna';

  @override
  String get testNow => 'Prova ora';

  @override
  String get editThreshold => 'Modifica soglia';

  @override
  String get configureThreshold => 'Configura soglia';

  @override
  String get reset => 'Ripristina';

  @override
  String get cancel => 'Annulla';

  @override
  String get save => 'Salva';

  @override
  String get deleteThreshold => 'Elimina soglia';

  @override
  String get turnOn => 'Accendi';

  @override
  String get turnOff => 'Spegni';

  @override
  String get logout => 'Esci';

  @override
  String get retry => 'Riprova';

  @override
  String get pleaseEnterEmail => 'Inserisci la tua email';

  @override
  String get invalidEmail => 'Email non valida';

  @override
  String get pleaseEnterPassword => 'Inserisci la tua password';

  @override
  String get error => 'Errore';

  @override
  String get connectionError => 'Errore di connessione';

  @override
  String get logoutTitle => 'Esci';

  @override
  String get logoutConfirmation => 'Vuoi davvero uscire?';

  @override
  String get turnOnStoveQuestion => 'Accendere la stufa?';

  @override
  String get turnOffStoveQuestion => 'Spegnere la stufa?';

  @override
  String get turnOnStoveConfirmation => 'Vuoi accendere la stufa?';

  @override
  String get turnOffStoveConfirmation => 'Vuoi spegnere la stufa?';

  @override
  String thresholdDialogTitle(String fieldName) {
    return 'Soglia per $fieldName';
  }

  @override
  String get notifyIfValueOutOfRange =>
      'Notifica se il valore esce da questo intervallo:';

  @override
  String minimumLabel(String value) {
    return 'Minimo: $value';
  }

  @override
  String maximumLabel(String value) {
    return 'Massimo: $value';
  }

  @override
  String get loadingStoves => 'Caricamento stufe...';

  @override
  String get loadingStoveData => 'Caricamento dati stufa...';

  @override
  String get noStoveFound => 'Nessuna stufa trovata';

  @override
  String get noStoveAssociated => 'Nessuna stufa è associata al tuo account';

  @override
  String get online => 'Online';

  @override
  String offlineSince(int minutes) {
    return 'Offline da $minutes min';
  }

  @override
  String get notificationsEnabledSuccess => 'Notifiche abilitate con successo';

  @override
  String get permissionDenied =>
      'Permesso negato. Abilita le notifiche nelle impostazioni di Android.';

  @override
  String get notificationsDisabled => 'Notifiche disabilitate';

  @override
  String get testInProgress => 'Esecuzione test...';

  @override
  String get testSuccess => 'Test riuscito! Controlla le notifiche.';

  @override
  String get testFailed => 'Test fallito. Controlla i registri.';

  @override
  String get noStoveConfigured => 'Nessuna stufa configurata';

  @override
  String get loadingStoveList => 'Caricamento elenco stufe...';

  @override
  String get settingsResetToDefaults =>
      'Impostazioni ripristinate ai valori predefiniti';

  @override
  String get power => 'Accensione';

  @override
  String get stoveOn => 'Stufa accesa';

  @override
  String get stoveOff => 'Stufa spenta';

  @override
  String get targetTemperature => 'Temperatura obiettivo';

  @override
  String get turnOnStoveToAdjustTemperature =>
      'Accendi la stufa per regolare la temperatura';

  @override
  String get operatingMode => 'Modalità di funzionamento';

  @override
  String get manualMode => 'Manuale';

  @override
  String get autoMode => 'Auto';

  @override
  String get comfortMode => 'Comfort';

  @override
  String get turnOnStoveToChangeMode =>
      'Accendi la stufa per cambiare modalità';

  @override
  String get heatingPower => 'Potenza di riscaldamento';

  @override
  String get minPower => 'Min (0%)';

  @override
  String get maxPower => 'Max (100%)';

  @override
  String get turnOnStoveToAdjustPower =>
      'Accendi la stufa per regolare la potenza';

  @override
  String get roomPowerRequest => 'Potenza ambiente';

  @override
  String get roomPowerRequestDescription =>
      'Livello di richiesta di potenza per l\'ambiente';

  @override
  String get minimal => 'Minima';

  @override
  String get maximum => 'Massima';

  @override
  String get turnOnStoveToAdjustRoomPower =>
      'Accendi la stufa per regolare la potenza ambiente';

  @override
  String get ecoMode => 'Modalità ECO';

  @override
  String get energySavingEnabled => 'Risparmio energetico attivato';

  @override
  String get energySavingDisabled => 'Risparmio energetico disattivato';

  @override
  String get frostProtection => 'Protezione antigelo';

  @override
  String frostProtectionActive(int temp) {
    return 'Protezione attiva - si avvia se temp < $temp°C';
  }

  @override
  String get frostProtectionInactive => 'Protezione disattivata';

  @override
  String get triggerTemperature => 'Temperatura di attivazione';

  @override
  String get minTemp => 'Min (4°C)';

  @override
  String get maxTemp => 'Max (10°C)';

  @override
  String get turnOnStoveToConfigureFrostProtection =>
      'Accendi la stufa per configurare la protezione antigelo';

  @override
  String get convectionFans => 'Ventilatori di convezione';

  @override
  String fansStatus(String fan1, String fan2) {
    return 'Ventilatore 1: $fan1 | Ventilatore 2: $fan2';
  }

  @override
  String fanNumber(int number) {
    return 'Ventilatore $number';
  }

  @override
  String get active => 'Attivo';

  @override
  String get inactive => 'Inattivo';

  @override
  String get speedLevel => 'Livello di velocità';

  @override
  String get minSpeed => 'Min (0)';

  @override
  String get maxSpeed => 'Max (5)';

  @override
  String get heatingArea => 'Area di riscaldamento';

  @override
  String get minArea => '-30';

  @override
  String get centerArea => '0';

  @override
  String get maxArea => '+30';

  @override
  String get turnOnStoveToConfigureFans =>
      'Accendi la stufa per configurare i ventilatori';

  @override
  String get temperatureCalibration => 'Calibrazione temperatura';

  @override
  String get temperatureCalibrationDescription =>
      'Regolazione di precisione del sensore di temperatura';

  @override
  String get minOffset => '-3°C';

  @override
  String get zeroOffset => '0°C';

  @override
  String get maxOffset => '+3°C';

  @override
  String get turnOnStoveToCalibrate =>
      'Accendi la stufa per calibrare la temperatura';

  @override
  String get bakeTemperature => 'Temperatura forno';

  @override
  String get bakeTemperatureDescription =>
      'Impostazione temperatura forno a legna';

  @override
  String get minBakeTemp => '100°C';

  @override
  String get maxBakeTemp => '250°C';

  @override
  String get turnOnStoveToAdjustBakeTemp =>
      'Accendi la stufa per regolare la temperatura del forno';

  @override
  String get heatingSchedule => 'Programmazione riscaldamento';

  @override
  String get activeInComfortMode => 'Attivo in modalità comfort';

  @override
  String get setpointTemperature => 'Temperatura di setpoint';

  @override
  String get turnOnStoveToAdjustSchedule =>
      'Accendi la stufa per regolare la programmazione';

  @override
  String get quickControls => 'Controlli rapidi';

  @override
  String get advancedControls => 'Controlli avanzati';

  @override
  String get appearance => 'Aspetto';

  @override
  String get backgroundNotifications => 'Notifiche in background';

  @override
  String get informationPanels => 'Pannelli informativi';

  @override
  String watchedFields(int count) {
    return 'Campi monitorati ($count selezionati)';
  }

  @override
  String pollingInterval(int minutes) {
    return 'Intervallo di controllo: $minutes min';
  }

  @override
  String get theme => 'Tema';

  @override
  String get light => 'Chiaro';

  @override
  String get dark => 'Scuro';

  @override
  String get system => 'Sistema';

  @override
  String get systemDescription => 'Segui impostazioni di sistema';

  @override
  String get lightModeActive => 'Modalità chiara attiva';

  @override
  String get darkModeActive => 'Modalità scura attiva';

  @override
  String get language => 'Lingua';

  @override
  String get languageSubtitle => 'Seleziona lingua dell\'app';

  @override
  String get systemDefault => 'Predefinito di sistema';

  @override
  String get showEcoMode => 'Modalità ECO';

  @override
  String get showEcoModeSubtitle =>
      'Mostra selettore modalità risparmio energetico';

  @override
  String get showHeatingSchedule => 'Programmazione riscaldamento';

  @override
  String get showHeatingScheduleSubtitle => 'Mostra programmazione settimanale';

  @override
  String get showRoomPowerRequest => 'Potenza ambiente';

  @override
  String get showRoomPowerRequestSubtitle => 'Mostra selettore livello 1-4';

  @override
  String get showConvectionFans => 'Ventilatori di convezione';

  @override
  String get showConvectionFansSubtitle => 'Mostra controlli per 2 ventilatori';

  @override
  String get showFrostProtection => 'Protezione antigelo';

  @override
  String get showFrostProtectionSubtitle =>
      'Mostra controllo protezione antigelo';

  @override
  String get showTemperatureOffset => 'Calibrazione temperatura';

  @override
  String get showTemperatureOffsetSubtitle =>
      'Mostra regolazione temperatura da -3 a +3°C';

  @override
  String get showBakeTemperature => 'Temperatura forno';

  @override
  String get showBakeTemperatureSubtitle =>
      'Mostra controllo temperatura forno';

  @override
  String get enableNotifications => 'Abilita notifiche';

  @override
  String get monitorChangesInBackground =>
      'Monitora modifiche anche quando l\'app è chiusa';

  @override
  String get notificationDelayInfo =>
      'Le notifiche potrebbero essere ritardate a seconda dell\'ottimizzazione della batteria';

  @override
  String get showErrorWarningPanel => 'Errori e avvisi';

  @override
  String get showErrorWarningPanelSubtitle => 'Mostra pannello errori attivi';

  @override
  String get showSafetyStatusPanel => 'Sicurezza e diagnostica';

  @override
  String get showSafetyStatusPanelSubtitle =>
      'Mostra pannello sicurezza (porta, WiFi, pressione)';

  @override
  String get showSensorInfoPanel => 'Informazioni sensori';

  @override
  String get showSensorInfoPanelSubtitle => 'Mostra dati sensori';

  @override
  String get showOutputsInfoPanel => 'Informazioni uscite';

  @override
  String get showOutputsInfoPanelSubtitle =>
      'Mostra stato uscite (motori, ventilatori)';

  @override
  String get showStatisticsPanel => 'Statistiche e sistema';

  @override
  String get showStatisticsPanelSubtitle => 'Mostra statistiche di utilizzo';

  @override
  String get noError => 'Nessun errore';

  @override
  String get errorDetected => 'Errore rilevato';

  @override
  String get warning => 'Avviso';

  @override
  String get errorCode => 'Codice errore:';

  @override
  String get warningCode => 'Codice avviso:';

  @override
  String get consultManual =>
      'Consulta il manuale utente o contatta il servizio tecnico.';

  @override
  String get errorRoomSensorSignalLost =>
      'Segnale sensore ambiente perso - Passare a MODALITÀ MANUALE';

  @override
  String get errorPelletLidOpen =>
      'Coperchio pellet aperto - Chiudere il coperchio';

  @override
  String get errorDoorOpen => 'Porta aperta - Chiudere la porta';

  @override
  String get errorPelletLidOrDoorOpen => 'Coperchio pellet o porta aperta';

  @override
  String get errorNotEnoughLowPressure =>
      'Pressione insufficiente - Controllare scarico';

  @override
  String get errorAirFlapsCalibrating =>
      'Calibrazione alette aria - Attendere prego';

  @override
  String get errorBurnBackFlapOpen =>
      'Valvola antiritorno o gas combusti aperta';

  @override
  String get errorStoveNotInPosition =>
      'Stufa non in posizione - Controllare posizionamento';

  @override
  String systemError(String code) {
    return 'Errore di sistema (codice: $code)';
  }

  @override
  String get noWarning => 'Nessun avviso';

  @override
  String get warningRoomSensorSignalLost => 'Segnale sensore ambiente perso';

  @override
  String get warningPelletLidOpen => 'Coperchio pellet aperto';

  @override
  String get warningDoorOpen => 'Porta aperta';

  @override
  String get warningPelletLidOrDoorOpen => 'Coperchio pellet o porta aperta';

  @override
  String get warningNotEnoughLowPressure => 'Pressione insufficiente';

  @override
  String get warningAirFlapsCalibrating => 'Calibrazione alette aria';

  @override
  String get warningBurnBackFlapOpen =>
      'Valvola antiritorno o gas combusti aperta';

  @override
  String get warningStoveNotInPosition => 'Stufa non in posizione';

  @override
  String systemWarning(int code) {
    return 'Avviso di sistema (codice: $code)';
  }

  @override
  String get currentTemperature => 'Temperatura attuale';

  @override
  String get safetyAndDiagnostics => 'Sicurezza e diagnostica';

  @override
  String get door => 'Porta';

  @override
  String get cover => 'Coperchio';

  @override
  String get closed => 'Chiusa';

  @override
  String get open => 'Aperta';

  @override
  String get wifiSignal => 'Segnale WiFi';

  @override
  String get temperatureLimiter => 'Limitatore di temperatura';

  @override
  String get internalTemperatureOK => 'Temperatura interna OK';

  @override
  String get overheating => 'Surriscaldamento';

  @override
  String get sensorInformation => 'Informazioni sensori';

  @override
  String get flameTemperature => 'Temperatura fiamma';

  @override
  String get ambientTemperature => 'Temperatura ambiente';

  @override
  String get externalRequest => 'Richiesta esterna';

  @override
  String get yes => 'Sì';

  @override
  String get no => 'No';

  @override
  String get boardTemperature => 'Temperatura scheda';

  @override
  String get ovenTemperature => 'Temperatura forno';

  @override
  String get outputs => 'Uscite';

  @override
  String get diagonalMotor => 'Motore diagonale';

  @override
  String get horizontalMotor => 'Motore orizzontale';

  @override
  String get combustionGasFan => 'Ventilatore fumi di combustione';

  @override
  String get airDampers => 'Serrande aria';

  @override
  String get ignition => 'Accensione';

  @override
  String get on => 'ACCESO';

  @override
  String get off => 'SPENTO';

  @override
  String get current => 'Corrente';

  @override
  String get statisticsAndSystem => 'Statistiche e sistema';

  @override
  String get usage => 'Utilizzo';

  @override
  String get pelletHours => 'Ore pellet';

  @override
  String get woodHours => 'Ore legna';

  @override
  String get onOffCycles => 'Cicli ACCESO/SPENTO';

  @override
  String get ignitionCount => 'Conteggio accensioni';

  @override
  String get consumption => 'Consumo';

  @override
  String get totalConsumption => 'Consumo totale';

  @override
  String get beforeMaintenance => 'Prima della manutenzione';

  @override
  String get systemInformation => 'Informazioni di sistema';

  @override
  String get model => 'Modello';

  @override
  String get manufacturer => 'Produttore';

  @override
  String get serialNumber => 'Numero di serie';

  @override
  String get firmwareVersion => 'Versione firmware';

  @override
  String get detailedScheduleEditor => 'Editor dettagliato programmazione';

  @override
  String get monday => 'Lunedì';

  @override
  String get tuesday => 'Martedì';

  @override
  String get wednesday => 'Mercoledì';

  @override
  String get thursday => 'Giovedì';

  @override
  String get friday => 'Venerdì';

  @override
  String get saturday => 'Sabato';

  @override
  String get sunday => 'Domenica';

  @override
  String get disableThisSlot => 'Disattiva questo orario';

  @override
  String get enableScheduleToEdit =>
      'Abilita la programmazione riscaldamento per modificare la programmazione';

  @override
  String get viewOnGitHub => 'Visualizza su GitHub';

  @override
  String get about => 'Informazioni';

  @override
  String version(String version) {
    return 'Versione $version';
  }

  @override
  String get configureAdvancedFeatures => 'Configura funzioni avanzate';

  @override
  String get configureBackgroundNotifications =>
      'Configura notifiche in background';

  @override
  String get toggleInfoPanelVisibility =>
      'Attiva/disattiva visibilità pannello informazioni';

  @override
  String get notifications => 'Notifiche';

  @override
  String get statusFrostProtection => 'Protezione antigelo';

  @override
  String get statusStoveOff => 'Stufa spenta';

  @override
  String get statusStandby => 'Standby';

  @override
  String get statusExternalRequest => 'Richiesta esterna';

  @override
  String get statusOff => 'Spenta';

  @override
  String get statusIgnitionOn => 'Accensione in corso';

  @override
  String get statusStartingUp => 'Avvio';

  @override
  String get statusRunning => 'In funzione';

  @override
  String get statusBigClean => 'Pulizia completa';

  @override
  String get statusCleaning => 'Pulizia';

  @override
  String get statusBurnOff => 'Spegnimento';

  @override
  String get statusSplitLogCheck => 'Verifica legna';

  @override
  String get statusSplitLogMode => 'Modalità legna';

  @override
  String statusUnknown(int state) {
    return 'Stato sconosciuto ($state)';
  }

  @override
  String get showChartsPanel => 'Mostra pannello grafici';

  @override
  String get showChartsPanelSubtitle =>
      'Visualizza evoluzione temperatura e grafici dati storici';

  @override
  String get backgroundPolling => 'Aggiornamento in background';

  @override
  String get continuousPolling => 'Aggiornamento continuo';

  @override
  String get continuousPollingSubtitle =>
      'Mantieni connessione attiva anche con schermo bloccato (richiede esenzione ottimizzazione batteria)';

  @override
  String get continuousPollingEnabled => 'Aggiornamento continuo attivato';

  @override
  String get continuousPollingDisabled => 'Aggiornamento continuo disattivato';

  @override
  String get continuousPollingNotAvailable =>
      'L\'aggiornamento continuo è disponibile solo su Android';

  @override
  String get batteryOptimizationRequired => 'Ottimizzazione batteria richiesta';

  @override
  String get batteryOptimizationExplanation =>
      'Per mantenere la connessione attiva quando lo schermo è bloccato, l\'ottimizzazione della batteria deve essere disabilitata per questa app. Questo garantisce un aggiornamento affidabile in background.\n\nSarai reindirizzato alle impostazioni di sistema dove puoi concedere questa autorizzazione.';

  @override
  String get batteryOptimizationStillEnabled =>
      'L\'ottimizzazione della batteria è ancora abilitata. Disabilitala nelle impostazioni per utilizzare l\'aggiornamento continuo.';

  @override
  String get openSettings => 'Apri impostazioni';

  @override
  String get charts => 'Grafici';

  @override
  String get chartsSubtitle => 'Evoluzione temperatura & statistiche';

  @override
  String get temperatureEvolution24h => 'Evoluzione Temperatura (24h)';

  @override
  String get roomTargetAxis => 'Ambiente / Obiettivo';

  @override
  String get flameAxis => 'Fiamma';

  @override
  String get noDataAvailableYet => 'Nessun dato disponibile ancora';

  @override
  String get dataCollectionInProgress => 'Raccolta dati in corso...';

  @override
  String dataPointsCollected(int count, int percent) {
    return '$count punti dati raccolti ($percent%)';
  }

  @override
  String minimumPointsNeeded(int count) {
    return 'Minimo $count punti necessari per il grafico';
  }

  @override
  String get roomTemperature => 'Temperatura ambiente';

  @override
  String get failedToLoadChartData => 'Errore caricamento dati grafico';

  @override
  String get chartAutoUpdateInfo =>
      'I dati storici vengono raccolti automaticamente. Il grafico si aggiorna ogni 10 secondi con nuovi punti dati.';
}
