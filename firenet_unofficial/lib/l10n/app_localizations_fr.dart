// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Rika Firenet';

  @override
  String get loginSubtitle => 'Connectez-vous à votre compte';

  @override
  String get myStoves => 'Mes Poêles';

  @override
  String get settings => 'Paramètres';

  @override
  String get email => 'Email';

  @override
  String get emailHint => 'votre@email.com';

  @override
  String get password => 'Mot de passe';

  @override
  String get login => 'Se connecter';

  @override
  String get refresh => 'Actualiser';

  @override
  String get testNow => 'Tester maintenant';

  @override
  String get editThreshold => 'Modifier le seuil';

  @override
  String get configureThreshold => 'Configurer un seuil';

  @override
  String get reset => 'Réinitialiser';

  @override
  String get cancel => 'Annuler';

  @override
  String get save => 'Enregistrer';

  @override
  String get deleteThreshold => 'Supprimer seuil';

  @override
  String get turnOn => 'Allumer';

  @override
  String get turnOff => 'Éteindre';

  @override
  String get logout => 'Déconnexion';

  @override
  String get retry => 'Réessayer';

  @override
  String get pleaseEnterEmail => 'Veuillez entrer votre email';

  @override
  String get invalidEmail => 'Email invalide';

  @override
  String get pleaseEnterPassword => 'Veuillez entrer votre mot de passe';

  @override
  String get error => 'Erreur';

  @override
  String get connectionError => 'Erreur de connexion';

  @override
  String get logoutTitle => 'Déconnexion';

  @override
  String get logoutConfirmation => 'Voulez-vous vraiment vous déconnecter ?';

  @override
  String get turnOnStoveQuestion => 'Allumer le poêle ?';

  @override
  String get turnOffStoveQuestion => 'Éteindre le poêle ?';

  @override
  String get turnOnStoveConfirmation => 'Voulez-vous démarrer le poêle ?';

  @override
  String get turnOffStoveConfirmation => 'Voulez-vous éteindre le poêle ?';

  @override
  String thresholdDialogTitle(String fieldName) {
    return 'Seuil pour $fieldName';
  }

  @override
  String get notifyIfValueOutOfRange =>
      'Notifier si la valeur sort de cette plage :';

  @override
  String minimumLabel(String value) {
    return 'Minimum : $value';
  }

  @override
  String maximumLabel(String value) {
    return 'Maximum : $value';
  }

  @override
  String get loadingStoves => 'Chargement des poêles...';

  @override
  String get loadingStoveData => 'Chargement des données du poêle...';

  @override
  String get noStoveFound => 'Aucun poêle trouvé';

  @override
  String get noStoveAssociated => 'Aucun poêle n\'est associé à votre compte';

  @override
  String get online => 'En ligne';

  @override
  String offlineSince(int minutes) {
    return 'Hors ligne depuis $minutes min';
  }

  @override
  String get notificationsEnabledSuccess =>
      'Notifications activées avec succès';

  @override
  String get permissionDenied =>
      'Permission refusée. Activez les notifications dans les paramètres Android.';

  @override
  String get notificationsDisabled => 'Notifications désactivées';

  @override
  String get testInProgress => 'Exécution du test en cours...';

  @override
  String get testSuccess => 'Test réussi ! Vérifiez les notifications.';

  @override
  String get testFailed => 'Échec du test. Vérifiez les logs.';

  @override
  String get noStoveConfigured => 'Aucun poêle configuré';

  @override
  String get loadingStoveList => 'Chargement de la liste des poêles...';

  @override
  String get settingsResetToDefaults => 'Paramètres réinitialisés par défaut';

  @override
  String get power => 'Alimentation';

  @override
  String get stoveOn => 'Poêle allumé';

  @override
  String get stoveOff => 'Poêle éteint';

  @override
  String get targetTemperature => 'Température cible';

  @override
  String get turnOnStoveToAdjustTemperature =>
      'Allumez le poêle pour régler la température';

  @override
  String get operatingMode => 'Mode de fonctionnement';

  @override
  String get manualMode => 'Manuel';

  @override
  String get autoMode => 'Auto';

  @override
  String get comfortMode => 'Confort';

  @override
  String get turnOnStoveToChangeMode => 'Allumez le poêle pour changer de mode';

  @override
  String get heatingPower => 'Puissance de chauffe';

  @override
  String get minPower => 'Min (0%)';

  @override
  String get maxPower => 'Max (100%)';

  @override
  String get turnOnStoveToAdjustPower =>
      'Allumez le poêle pour modifier la puissance';

  @override
  String get roomPowerRequest => 'Demande de puissance pièce';

  @override
  String get roomPowerRequestDescription =>
      'Niveau de demande de puissance pour la pièce';

  @override
  String get minimal => 'Minimal';

  @override
  String get maximum => 'Maximum';

  @override
  String get turnOnStoveToAdjustRoomPower =>
      'Allumez le poêle pour modifier la demande de puissance';

  @override
  String get ecoMode => 'Mode ECO';

  @override
  String get energySavingEnabled => 'Économie d\'énergie activée';

  @override
  String get energySavingDisabled => 'Économie d\'énergie désactivée';

  @override
  String get frostProtection => 'Protection anti-gel';

  @override
  String frostProtectionActive(int temp) {
    return 'Protection activée - démarre si température < $temp°C';
  }

  @override
  String get frostProtectionInactive => 'Protection désactivée';

  @override
  String get triggerTemperature => 'Température de déclenchement';

  @override
  String get minTemp => 'Min (4°C)';

  @override
  String get maxTemp => 'Max (10°C)';

  @override
  String get turnOnStoveToConfigureFrostProtection =>
      'Allumez le poêle pour configurer la protection anti-gel';

  @override
  String get convectionFans => 'Ventilateurs de convection';

  @override
  String fansStatus(String fan1, String fan2) {
    return 'Fan 1: $fan1 | Fan 2: $fan2';
  }

  @override
  String fanNumber(int number) {
    return 'Ventilateur $number';
  }

  @override
  String get active => 'Actif';

  @override
  String get inactive => 'Inactif';

  @override
  String get speedLevel => 'Niveau de vitesse';

  @override
  String get minSpeed => 'Min (0)';

  @override
  String get maxSpeed => 'Max (5)';

  @override
  String get heatingArea => 'Zone de chauffe';

  @override
  String get minArea => '-30';

  @override
  String get centerArea => '0';

  @override
  String get maxArea => '+30';

  @override
  String get turnOnStoveToConfigureFans =>
      'Allumez le poêle pour configurer les ventilateurs';

  @override
  String get temperatureCalibration => 'Calibration température';

  @override
  String get temperatureCalibrationDescription =>
      'Ajustement de précision du capteur de température';

  @override
  String get minOffset => '-3°C';

  @override
  String get zeroOffset => '0°C';

  @override
  String get maxOffset => '+3°C';

  @override
  String get turnOnStoveToCalibrate =>
      'Allumez le poêle pour calibrer la température';

  @override
  String get bakeTemperature => 'Température four';

  @override
  String get bakeTemperatureDescription => 'Réglage température du four à bois';

  @override
  String get minBakeTemp => '100°C';

  @override
  String get maxBakeTemp => '250°C';

  @override
  String get turnOnStoveToAdjustBakeTemp =>
      'Allumez le poêle pour modifier la température du four';

  @override
  String get heatingSchedule => 'Plages horaires';

  @override
  String get activeInComfortMode => 'Actif en mode confort';

  @override
  String get setpointTemperature => 'Température de maintien';

  @override
  String get turnOnStoveToAdjustSchedule =>
      'Allumez le poêle pour modifier les plages horaires';

  @override
  String get quickControls => 'Contrôles Rapides';

  @override
  String get advancedControls => 'Contrôles avancés';

  @override
  String get appearance => 'Apparence';

  @override
  String get backgroundNotifications => 'Notifications en arrière-plan';

  @override
  String get informationPanels => 'Panneaux d\'information';

  @override
  String watchedFields(int count) {
    return 'Champs à surveiller ($count sélectionnés)';
  }

  @override
  String pollingInterval(int minutes) {
    return 'Intervalle de vérification : $minutes min';
  }

  @override
  String get theme => 'Thème';

  @override
  String get light => 'Clair';

  @override
  String get dark => 'Sombre';

  @override
  String get system => 'Système';

  @override
  String get systemDescription => 'Suit les paramètres système';

  @override
  String get lightModeActive => 'Mode clair activé';

  @override
  String get darkModeActive => 'Mode sombre activé';

  @override
  String get language => 'Langue';

  @override
  String get languageSubtitle => 'Choisir la langue de l\'application';

  @override
  String get systemDefault => 'Défaut système';

  @override
  String get showEcoMode => 'Mode ECO';

  @override
  String get showEcoModeSubtitle => 'Afficher le toggle mode économique';

  @override
  String get showHeatingSchedule => 'Plages horaires';

  @override
  String get showHeatingScheduleSubtitle =>
      'Afficher la programmation hebdomadaire';

  @override
  String get showRoomPowerRequest => 'Demande puissance pièce';

  @override
  String get showRoomPowerRequestSubtitle =>
      'Afficher le sélecteur de niveau 1-4';

  @override
  String get showConvectionFans => 'Ventilateurs de convection';

  @override
  String get showConvectionFansSubtitle =>
      'Afficher les contrôles des 2 ventilateurs';

  @override
  String get showFrostProtection => 'Protection anti-gel';

  @override
  String get showFrostProtectionSubtitle =>
      'Afficher le contrôle de protection anti-gel';

  @override
  String get showTemperatureOffset => 'Calibration température';

  @override
  String get showTemperatureOffsetSubtitle =>
      'Afficher l\'offset de température -3 à +3°C';

  @override
  String get showBakeTemperature => 'Température four';

  @override
  String get showBakeTemperatureSubtitle =>
      'Afficher le contrôle de température du four';

  @override
  String get enableNotifications => 'Activer les notifications';

  @override
  String get monitorChangesInBackground =>
      'Surveiller les changements même quand l\'app est fermée';

  @override
  String get notificationDelayInfo =>
      'Les notifications peuvent être retardées selon l\'optimisation batterie';

  @override
  String get showErrorWarningPanel => 'Erreurs et warnings';

  @override
  String get showErrorWarningPanelSubtitle =>
      'Afficher le panneau d\'erreurs actives';

  @override
  String get showSafetyStatusPanel => 'Sécurité et diagnostics';

  @override
  String get showSafetyStatusPanelSubtitle =>
      'Afficher le panneau sécurité (porte, capot, WiFi, temp)';

  @override
  String get showSensorInfoPanel => 'Informations capteurs';

  @override
  String get showSensorInfoPanelSubtitle => 'Afficher les données des capteurs';

  @override
  String get showOutputsInfoPanel => 'Informations sorties';

  @override
  String get showOutputsInfoPanelSubtitle =>
      'Afficher l\'état des sorties (moteurs, ventilateurs)';

  @override
  String get showStatisticsPanel => 'Statistiques et système';

  @override
  String get showStatisticsPanelSubtitle =>
      'Afficher les statistiques d\'utilisation';

  @override
  String get noError => 'Aucune erreur';

  @override
  String get errorDetected => 'Erreur détectée';

  @override
  String get warning => 'Avertissement';

  @override
  String get errorCode => 'Code d\'erreur :';

  @override
  String get warningCode => 'Code avertissement :';

  @override
  String get consultManual =>
      'Consultez le manuel d\'utilisation ou contactez le service technique.';

  @override
  String get errorRoomSensorSignalLost =>
      'Signal sonde pièce perdu - Veuillez passer en mode MANUEL';

  @override
  String get errorPelletLidOpen =>
      'Capot à granulés ouvert - Veuillez fermer le capot';

  @override
  String get errorDoorOpen => 'Porte ouverte - Veuillez fermer la porte';

  @override
  String get errorPelletLidOrDoorOpen => 'Capot à granulés ou porte ouvert';

  @override
  String get errorNotEnoughLowPressure =>
      'Pression insuffisante - Vérifiez l\'évacuation';

  @override
  String get errorAirFlapsCalibrating =>
      'Calibrage des volets d\'air - Veuillez patienter';

  @override
  String get errorBurnBackFlapOpen =>
      'Volet anti-retour ou gaz de combustion ouvert';

  @override
  String get errorStoveNotInPosition =>
      'Poêle mal positionné - Vérifiez l\'emplacement';

  @override
  String systemError(String code) {
    return 'Erreur système (code: $code)';
  }

  @override
  String get noWarning => 'Aucun avertissement';

  @override
  String get warningRoomSensorSignalLost => 'Signal sonde pièce perdu';

  @override
  String get warningPelletLidOpen => 'Capot à granulés ouvert';

  @override
  String get warningDoorOpen => 'Porte ouverte';

  @override
  String get warningPelletLidOrDoorOpen => 'Capot à granulés ou porte ouvert';

  @override
  String get warningNotEnoughLowPressure => 'Pression insuffisante';

  @override
  String get warningAirFlapsCalibrating => 'Calibrage des volets d\'air';

  @override
  String get warningBurnBackFlapOpen =>
      'Volet anti-retour ou gaz de combustion ouvert';

  @override
  String get warningStoveNotInPosition => 'Poêle mal positionné';

  @override
  String systemWarning(int code) {
    return 'Avertissement système (code: $code)';
  }

  @override
  String get currentTemperature => 'Température Actuelle';

  @override
  String get safetyAndDiagnostics => 'Sécurité & Diagnostics';

  @override
  String get door => 'Porte';

  @override
  String get cover => 'Capot';

  @override
  String get closed => 'Fermée';

  @override
  String get open => 'Ouverte';

  @override
  String get wifiSignal => 'Signal WiFi';

  @override
  String get temperatureLimiter => 'Limiteur température';

  @override
  String get internalTemperatureOK => 'Température interne OK';

  @override
  String get overheating => 'Surchauffe';

  @override
  String get sensorInformation => 'Informations capteurs';

  @override
  String get flameTemperature => 'Température flamme';

  @override
  String get ambientTemperature => 'Température ambiante';

  @override
  String get externalRequest => 'Demande externe';

  @override
  String get yes => 'Oui';

  @override
  String get no => 'Non';

  @override
  String get boardTemperature => 'Temp. carte électronique';

  @override
  String get ovenTemperature => 'Temp. four';

  @override
  String get outputs => 'Sorties';

  @override
  String get diagonalMotor => 'Moteur diagonal';

  @override
  String get horizontalMotor => 'Moteur horizontal';

  @override
  String get combustionGasFan => 'Ventilateur gaz combustion';

  @override
  String get airDampers => 'Volets d\'aération';

  @override
  String get ignition => 'Allumage';

  @override
  String get on => 'ACTIF';

  @override
  String get off => 'INACTIF';

  @override
  String get current => 'Courant';

  @override
  String get statisticsAndSystem => 'Statistiques et système';

  @override
  String get usage => 'Utilisation';

  @override
  String get pelletHours => 'Heures pellets';

  @override
  String get woodHours => 'Heures bois';

  @override
  String get onOffCycles => 'Cycles ON/OFF';

  @override
  String get ignitionCount => 'Nombre d\'allumages';

  @override
  String get consumption => 'Consommation';

  @override
  String get totalConsumption => 'Consommation totale';

  @override
  String get beforeMaintenance => 'Avant entretien';

  @override
  String get systemInformation => 'Informations système';

  @override
  String get model => 'Modèle';

  @override
  String get manufacturer => 'Fabricant';

  @override
  String get serialNumber => 'N° de fabrication';

  @override
  String get firmwareVersion => 'Version firmware';

  @override
  String get detailedScheduleEditor => 'Programmation horaires détaillée';

  @override
  String get monday => 'Lundi';

  @override
  String get tuesday => 'Mardi';

  @override
  String get wednesday => 'Mercredi';

  @override
  String get thursday => 'Jeudi';

  @override
  String get friday => 'Vendredi';

  @override
  String get saturday => 'Samedi';

  @override
  String get sunday => 'Dimanche';

  @override
  String get disableThisSlot => 'Désactiver cette plage';

  @override
  String get enableScheduleToEdit =>
      'Activez les plages horaires pour éditer la programmation';

  @override
  String get viewOnGitHub => 'Voir sur GitHub';

  @override
  String get about => 'À propos';

  @override
  String version(String version) {
    return 'Version $version';
  }

  @override
  String get configureAdvancedFeatures =>
      'Configurer les fonctionnalités avancées';

  @override
  String get configureBackgroundNotifications =>
      'Configurer les notifications en arrière-plan';

  @override
  String get toggleInfoPanelVisibility =>
      'Basculer la visibilité des panneaux d\'information';

  @override
  String get notifications => 'Notifications';

  @override
  String get statusFrostProtection => 'Protection anti-gel';

  @override
  String get statusStoveOff => 'Poêle éteint';

  @override
  String get statusStandby => 'En veille';

  @override
  String get statusExternalRequest => 'Demande externe';

  @override
  String get statusOff => 'Éteint';

  @override
  String get statusIgnitionOn => 'Allumage en cours';

  @override
  String get statusStartingUp => 'Démarrage';

  @override
  String get statusRunning => 'En fonctionnement';

  @override
  String get statusBigClean => 'Grand nettoyage';

  @override
  String get statusCleaning => 'Nettoyage';

  @override
  String get statusBurnOff => 'Extinction';

  @override
  String get statusSplitLogCheck => 'Vérification bûches';

  @override
  String get statusSplitLogMode => 'Mode bûches';

  @override
  String statusUnknown(int state) {
    return 'État inconnu ($state)';
  }

  @override
  String get showChartsPanel => 'Afficher le panneau des graphiques';

  @override
  String get showChartsPanelSubtitle =>
      'Afficher l\'évolution des températures et les graphiques de données historiques';

  @override
  String get backgroundPolling => 'Polling en arrière-plan';

  @override
  String get continuousPolling => 'Polling continu';

  @override
  String get continuousPollingSubtitle =>
      'Maintenir la connexion active même lorsque l\'écran est verrouillé (nécessite l\'exemption d\'optimisation de la batterie)';

  @override
  String get continuousPollingEnabled => 'Polling continu activé';

  @override
  String get continuousPollingDisabled => 'Polling continu désactivé';

  @override
  String get continuousPollingNotAvailable =>
      'Le polling continu n\'est disponible que sur Android';

  @override
  String get batteryOptimizationRequired =>
      'Optimisation de la batterie requise';

  @override
  String get batteryOptimizationExplanation =>
      'Pour maintenir la connexion active lorsque l\'écran est verrouillé, l\'optimisation de la batterie doit être désactivée pour cette application. Cela garantit un polling fiable en arrière-plan.\n\nVous serez redirigé vers les paramètres système où vous pourrez accorder cette permission.';

  @override
  String get batteryOptimizationStillEnabled =>
      'L\'optimisation de la batterie est toujours activée. Veuillez la désactiver dans les paramètres pour utiliser le polling continu.';

  @override
  String get openSettings => 'Ouvrir les paramètres';

  @override
  String get charts => 'Graphiques';

  @override
  String get chartsSubtitle => 'Évolution des températures & statistiques';

  @override
  String get temperatureEvolution24h => 'Évolution Température (24h)';

  @override
  String get roomTargetAxis => 'Pièce / Cible';

  @override
  String get flameAxis => 'Flamme';

  @override
  String get noDataAvailableYet => 'Aucune donnée disponible';

  @override
  String get dataCollectionInProgress => 'Collecte de données en cours...';

  @override
  String dataPointsCollected(int count, int percent) {
    return '$count points collectés ($percent%)';
  }

  @override
  String minimumPointsNeeded(int count) {
    return 'Minimum $count points nécessaires pour le graphique';
  }

  @override
  String get roomTemperature => 'Température pièce';

  @override
  String get failedToLoadChartData => 'Échec du chargement des données';

  @override
  String get chartAutoUpdateInfo =>
      'Les données historiques sont collectées automatiquement. Le graphique se met à jour toutes les 10 secondes avec de nouveaux points.';
}
