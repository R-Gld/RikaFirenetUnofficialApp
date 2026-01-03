// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Rika Firenet';

  @override
  String get loginSubtitle => 'Inicia sesión en tu cuenta';

  @override
  String get myStoves => 'Mis Estufas';

  @override
  String get settings => 'Configuración';

  @override
  String get email => 'Correo electrónico';

  @override
  String get emailHint => 'tu@correo.com';

  @override
  String get password => 'Contraseña';

  @override
  String get login => 'Iniciar sesión';

  @override
  String get refresh => 'Actualizar';

  @override
  String get testNow => 'Probar ahora';

  @override
  String get editThreshold => 'Editar umbral';

  @override
  String get configureThreshold => 'Configurar umbral';

  @override
  String get reset => 'Restablecer';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Guardar';

  @override
  String get deleteThreshold => 'Eliminar umbral';

  @override
  String get turnOn => 'Encender';

  @override
  String get turnOff => 'Apagar';

  @override
  String get logout => 'Cerrar sesión';

  @override
  String get retry => 'Reintentar';

  @override
  String get pleaseEnterEmail => 'Por favor, introduce tu correo electrónico';

  @override
  String get invalidEmail => 'Correo electrónico no válido';

  @override
  String get pleaseEnterPassword => 'Por favor, introduce tu contraseña';

  @override
  String get error => 'Error';

  @override
  String get connectionError => 'Error de conexión';

  @override
  String get logoutTitle => 'Cerrar sesión';

  @override
  String get logoutConfirmation => '¿Realmente quieres cerrar sesión?';

  @override
  String get turnOnStoveQuestion => '¿Encender la estufa?';

  @override
  String get turnOffStoveQuestion => '¿Apagar la estufa?';

  @override
  String get turnOnStoveConfirmation => '¿Quieres encender la estufa?';

  @override
  String get turnOffStoveConfirmation => '¿Quieres apagar la estufa?';

  @override
  String thresholdDialogTitle(String fieldName) {
    return 'Umbral para $fieldName';
  }

  @override
  String get notifyIfValueOutOfRange =>
      'Notificar si el valor sale de este rango:';

  @override
  String minimumLabel(String value) {
    return 'Mínimo: $value';
  }

  @override
  String maximumLabel(String value) {
    return 'Máximo: $value';
  }

  @override
  String get loadingStoves => 'Cargando estufas...';

  @override
  String get loadingStoveData => 'Cargando datos de la estufa...';

  @override
  String get noStoveFound => 'No se encontró ninguna estufa';

  @override
  String get noStoveAssociated => 'No hay ninguna estufa asociada a tu cuenta';

  @override
  String get online => 'En línea';

  @override
  String offlineSince(int minutes) {
    return 'Desconectada desde hace $minutes min';
  }

  @override
  String get notificationsEnabledSuccess =>
      'Notificaciones activadas correctamente';

  @override
  String get permissionDenied =>
      'Permiso denegado. Activa las notificaciones en la configuración de Android.';

  @override
  String get notificationsDisabled => 'Notificaciones desactivadas';

  @override
  String get testInProgress => 'Ejecutando prueba...';

  @override
  String get testSuccess => '¡Prueba exitosa! Comprueba las notificaciones.';

  @override
  String get testFailed => 'Prueba fallida. Comprueba los registros.';

  @override
  String get noStoveConfigured => 'No hay ninguna estufa configurada';

  @override
  String get loadingStoveList => 'Cargando lista de estufas...';

  @override
  String get settingsResetToDefaults =>
      'Configuración restablecida a valores predeterminados';

  @override
  String get power => 'Encendido';

  @override
  String get stoveOn => 'Estufa encendida';

  @override
  String get stoveOff => 'Estufa apagada';

  @override
  String get targetTemperature => 'Temperatura objetivo';

  @override
  String get turnOnStoveToAdjustTemperature =>
      'Enciende la estufa para ajustar la temperatura';

  @override
  String get operatingMode => 'Modo de funcionamiento';

  @override
  String get manualMode => 'Manual';

  @override
  String get autoMode => 'Auto';

  @override
  String get comfortMode => 'Confort';

  @override
  String get turnOnStoveToChangeMode =>
      'Enciende la estufa para cambiar el modo';

  @override
  String get heatingPower => 'Potencia de calefacción';

  @override
  String get minPower => 'Mín (0%)';

  @override
  String get maxPower => 'Máx (100%)';

  @override
  String get turnOnStoveToAdjustPower =>
      'Enciende la estufa para ajustar la potencia';

  @override
  String get roomPowerRequest => 'Potencia de la habitación';

  @override
  String get roomPowerRequestDescription =>
      'Nivel de demanda de potencia para la habitación';

  @override
  String get minimal => 'Mínima';

  @override
  String get maximum => 'Máxima';

  @override
  String get turnOnStoveToAdjustRoomPower =>
      'Enciende la estufa para ajustar la potencia de la habitación';

  @override
  String get ecoMode => 'Modo ECO';

  @override
  String get energySavingEnabled => 'Ahorro de energía activado';

  @override
  String get energySavingDisabled => 'Ahorro de energía desactivado';

  @override
  String get frostProtection => 'Protección antiheladas';

  @override
  String frostProtectionActive(int temp) {
    return 'Protección activa - se inicia si temp < $temp°C';
  }

  @override
  String get frostProtectionInactive => 'Protección desactivada';

  @override
  String get triggerTemperature => 'Temperatura de activación';

  @override
  String get minTemp => 'Mín (4°C)';

  @override
  String get maxTemp => 'Máx (10°C)';

  @override
  String get turnOnStoveToConfigureFrostProtection =>
      'Enciende la estufa para configurar la protección antiheladas';

  @override
  String get convectionFans => 'Ventiladores de convección';

  @override
  String fansStatus(String fan1, String fan2) {
    return 'Ventilador 1: $fan1 | Ventilador 2: $fan2';
  }

  @override
  String fanNumber(int number) {
    return 'Ventilador $number';
  }

  @override
  String get active => 'Activo';

  @override
  String get inactive => 'Inactivo';

  @override
  String get speedLevel => 'Nivel de velocidad';

  @override
  String get minSpeed => 'Mín (0)';

  @override
  String get maxSpeed => 'Máx (5)';

  @override
  String get heatingArea => 'Área de calefacción';

  @override
  String get minArea => '-30';

  @override
  String get centerArea => '0';

  @override
  String get maxArea => '+30';

  @override
  String get turnOnStoveToConfigureFans =>
      'Enciende la estufa para configurar los ventiladores';

  @override
  String get temperatureCalibration => 'Calibración de temperatura';

  @override
  String get temperatureCalibrationDescription =>
      'Ajuste de precisión del sensor de temperatura';

  @override
  String get minOffset => '-3°C';

  @override
  String get zeroOffset => '0°C';

  @override
  String get maxOffset => '+3°C';

  @override
  String get turnOnStoveToCalibrate =>
      'Enciende la estufa para calibrar la temperatura';

  @override
  String get bakeTemperature => 'Temperatura del horno';

  @override
  String get bakeTemperatureDescription =>
      'Ajuste de temperatura del horno de leña';

  @override
  String get minBakeTemp => '100°C';

  @override
  String get maxBakeTemp => '250°C';

  @override
  String get turnOnStoveToAdjustBakeTemp =>
      'Enciende la estufa para ajustar la temperatura del horno';

  @override
  String get heatingSchedule => 'Programación de calefacción';

  @override
  String get activeInComfortMode => 'Activo en modo confort';

  @override
  String get setpointTemperature => 'Temperatura de consigna';

  @override
  String get turnOnStoveToAdjustSchedule =>
      'Enciende la estufa para ajustar la programación';

  @override
  String get quickControls => 'Controles rápidos';

  @override
  String get advancedControls => 'Controles avanzados';

  @override
  String get appearance => 'Apariencia';

  @override
  String get backgroundNotifications => 'Notificaciones en segundo plano';

  @override
  String get informationPanels => 'Paneles de información';

  @override
  String watchedFields(int count) {
    return 'Campos monitorizados ($count seleccionados)';
  }

  @override
  String pollingInterval(int minutes) {
    return 'Intervalo de comprobación: $minutes min';
  }

  @override
  String get theme => 'Tema';

  @override
  String get light => 'Claro';

  @override
  String get dark => 'Oscuro';

  @override
  String get system => 'Sistema';

  @override
  String get systemDescription => 'Seguir configuración del sistema';

  @override
  String get lightModeActive => 'Modo claro activo';

  @override
  String get darkModeActive => 'Modo oscuro activo';

  @override
  String get language => 'Idioma';

  @override
  String get languageSubtitle => 'Seleccionar idioma de la aplicación';

  @override
  String get systemDefault => 'Predeterminado del sistema';

  @override
  String get showEcoMode => 'Modo ECO';

  @override
  String get showEcoModeSubtitle =>
      'Mostrar selector de modo de ahorro de energía';

  @override
  String get showHeatingSchedule => 'Programación de calefacción';

  @override
  String get showHeatingScheduleSubtitle => 'Mostrar programación semanal';

  @override
  String get showRoomPowerRequest => 'Potencia de la habitación';

  @override
  String get showRoomPowerRequestSubtitle => 'Mostrar selector de nivel 1-4';

  @override
  String get showConvectionFans => 'Ventiladores de convección';

  @override
  String get showConvectionFansSubtitle =>
      'Mostrar controles para 2 ventiladores';

  @override
  String get showFrostProtection => 'Protección antiheladas';

  @override
  String get showFrostProtectionSubtitle =>
      'Mostrar control de protección antiheladas';

  @override
  String get showTemperatureOffset => 'Calibración de temperatura';

  @override
  String get showTemperatureOffsetSubtitle =>
      'Mostrar ajuste de temperatura -3 a +3°C';

  @override
  String get showBakeTemperature => 'Temperatura del horno';

  @override
  String get showBakeTemperatureSubtitle =>
      'Mostrar control de temperatura del horno';

  @override
  String get enableNotifications => 'Activar notificaciones';

  @override
  String get monitorChangesInBackground =>
      'Monitorizar cambios incluso cuando la aplicación está cerrada';

  @override
  String get notificationDelayInfo =>
      'Las notificaciones pueden retrasarse dependiendo de la optimización de la batería';

  @override
  String get showErrorWarningPanel => 'Errores y advertencias';

  @override
  String get showErrorWarningPanelSubtitle =>
      'Mostrar panel de errores activos';

  @override
  String get showSafetyStatusPanel => 'Seguridad y diagnóstico';

  @override
  String get showSafetyStatusPanelSubtitle =>
      'Mostrar panel de seguridad (puerta, WiFi, presión)';

  @override
  String get showSensorInfoPanel => 'Información de sensores';

  @override
  String get showSensorInfoPanelSubtitle => 'Mostrar datos de sensores';

  @override
  String get showOutputsInfoPanel => 'Información de salidas';

  @override
  String get showOutputsInfoPanelSubtitle =>
      'Mostrar estado de salidas (motores, ventiladores)';

  @override
  String get showStatisticsPanel => 'Estadísticas y sistema';

  @override
  String get showStatisticsPanelSubtitle => 'Mostrar estadísticas de uso';

  @override
  String get noError => 'Sin errores';

  @override
  String get errorDetected => 'Error detectado';

  @override
  String get warning => 'Advertencia';

  @override
  String get errorCode => 'Código de error:';

  @override
  String get warningCode => 'Código de advertencia:';

  @override
  String get consultManual =>
      'Consulta el manual del usuario o contacta con el servicio técnico.';

  @override
  String get errorRoomSensorSignalLost =>
      'Señal del sensor de habitación perdida - Cambiar a MODO MANUAL';

  @override
  String get errorPelletLidOpen => 'Tapa de pellets abierta - Cerrar la tapa';

  @override
  String get errorDoorOpen => 'Puerta abierta - Cerrar la puerta';

  @override
  String get errorPelletLidOrDoorOpen => 'Tapa de pellets o puerta abierta';

  @override
  String get errorNotEnoughLowPressure =>
      'Presión insuficiente - Verificar salida de humos';

  @override
  String get errorAirFlapsCalibrating =>
      'Calibrando compuertas de aire - Espere por favor';

  @override
  String get errorBurnBackFlapOpen => 'Compuerta antiretorno o gases abierta';

  @override
  String get errorStoveNotInPosition =>
      'Estufa mal colocada - Verificar posición';

  @override
  String systemError(String code) {
    return 'Error del sistema (código: $code)';
  }

  @override
  String get noWarning => 'Sin advertencias';

  @override
  String get warningRoomSensorSignalLost =>
      'Señal del sensor de habitación perdida';

  @override
  String get warningPelletLidOpen => 'Tapa de pellets abierta';

  @override
  String get warningDoorOpen => 'Puerta abierta';

  @override
  String get warningPelletLidOrDoorOpen => 'Tapa de pellets o puerta abierta';

  @override
  String get warningNotEnoughLowPressure => 'Presión insuficiente';

  @override
  String get warningAirFlapsCalibrating => 'Calibrando compuertas de aire';

  @override
  String get warningBurnBackFlapOpen => 'Compuerta antiretorno o gases abierta';

  @override
  String get warningStoveNotInPosition => 'Estufa mal colocada';

  @override
  String systemWarning(int code) {
    return 'Advertencia del sistema (código: $code)';
  }

  @override
  String get currentTemperature => 'Temperatura actual';

  @override
  String get safetyAndDiagnostics => 'Seguridad y diagnóstico';

  @override
  String get door => 'Puerta';

  @override
  String get cover => 'Cubierta';

  @override
  String get closed => 'Cerrada';

  @override
  String get open => 'Abierta';

  @override
  String get wifiSignal => 'Señal WiFi';

  @override
  String get temperatureLimiter => 'Limitador de temperatura';

  @override
  String get internalTemperatureOK => 'Temperatura interna OK';

  @override
  String get overheating => 'Sobrecalentamiento';

  @override
  String get sensorInformation => 'Información de sensores';

  @override
  String get flameTemperature => 'Temperatura llama';

  @override
  String get ambientTemperature => 'Temperatura ambiente';

  @override
  String get externalRequest => 'Solicitud externa';

  @override
  String get yes => 'Sí';

  @override
  String get no => 'No';

  @override
  String get boardTemperature => 'Temperatura de la placa';

  @override
  String get ovenTemperature => 'Temperatura del horno';

  @override
  String get outputs => 'Salidas';

  @override
  String get diagonalMotor => 'Motor diagonal';

  @override
  String get horizontalMotor => 'Motor horizontal';

  @override
  String get combustionGasFan => 'Ventilador de gases de combustión';

  @override
  String get airDampers => 'Compuertas de aire';

  @override
  String get ignition => 'Encendido';

  @override
  String get on => 'ENCENDIDO';

  @override
  String get off => 'APAGADO';

  @override
  String get current => 'Actual';

  @override
  String get statisticsAndSystem => 'Estadísticas y sistema';

  @override
  String get usage => 'Uso';

  @override
  String get pelletHours => 'Horas con pellets';

  @override
  String get woodHours => 'Horas con leña';

  @override
  String get onOffCycles => 'Ciclos ENCENDIDO/APAGADO';

  @override
  String get ignitionCount => 'Recuento de encendidos';

  @override
  String get consumption => 'Consumo';

  @override
  String get totalConsumption => 'Consumo total';

  @override
  String get beforeMaintenance => 'Antes del mantenimiento';

  @override
  String get systemInformation => 'Información del sistema';

  @override
  String get model => 'Modelo';

  @override
  String get manufacturer => 'Fabricante';

  @override
  String get serialNumber => 'Número de serie';

  @override
  String get firmwareVersion => 'Versión del firmware';

  @override
  String get detailedScheduleEditor => 'Editor detallado de programación';

  @override
  String get monday => 'Lunes';

  @override
  String get tuesday => 'Martes';

  @override
  String get wednesday => 'Miércoles';

  @override
  String get thursday => 'Jueves';

  @override
  String get friday => 'Viernes';

  @override
  String get saturday => 'Sábado';

  @override
  String get sunday => 'Domingo';

  @override
  String get disableThisSlot => 'Desactivar este horario';

  @override
  String get enableScheduleToEdit =>
      'Activa la programación de calefacción para editar la programación';

  @override
  String get viewOnGitHub => 'Ver en GitHub';

  @override
  String get about => 'Acerca de';

  @override
  String version(String version) {
    return 'Versión $version';
  }

  @override
  String get configureAdvancedFeatures => 'Configurar funciones avanzadas';

  @override
  String get configureBackgroundNotifications =>
      'Configurar notificaciones en segundo plano';

  @override
  String get toggleInfoPanelVisibility =>
      'Alternar visibilidad del panel de información';

  @override
  String get notifications => 'Notificaciones';

  @override
  String get statusFrostProtection => 'Protección antiheladas';

  @override
  String get statusStoveOff => 'Estufa apagada';

  @override
  String get statusStandby => 'En espera';

  @override
  String get statusExternalRequest => 'Solicitud externa';

  @override
  String get statusOff => 'Apagada';

  @override
  String get statusIgnitionOn => 'Encendido en curso';

  @override
  String get statusStartingUp => 'Arrancando';

  @override
  String get statusRunning => 'En funcionamiento';

  @override
  String get statusBigClean => 'Limpieza profunda';

  @override
  String get statusCleaning => 'Limpieza';

  @override
  String get statusBurnOff => 'Apagado';

  @override
  String get statusSplitLogCheck => 'Verificación de leña';

  @override
  String get statusSplitLogMode => 'Modo leña';

  @override
  String statusUnknown(int state) {
    return 'Estado desconocido ($state)';
  }

  @override
  String get showChartsPanel => 'Mostrar panel de gráficos';

  @override
  String get showChartsPanelSubtitle =>
      'Mostrar evolución de temperatura y gráficos de datos históricos';

  @override
  String get backgroundPolling => 'Actualización en segundo plano';

  @override
  String get continuousPolling => 'Actualización continua';

  @override
  String get continuousPollingSubtitle =>
      'Mantener conexión activa incluso con pantalla bloqueada (requiere exención de optimización de batería)';

  @override
  String get continuousPollingEnabled => 'Actualización continua activada';

  @override
  String get continuousPollingDisabled => 'Actualización continua desactivada';

  @override
  String get continuousPollingNotAvailable =>
      'La actualización continua solo está disponible en Android';

  @override
  String get batteryOptimizationRequired => 'Optimización de batería requerida';

  @override
  String get batteryOptimizationExplanation =>
      'Para mantener la conexión activa cuando la pantalla está bloqueada, se debe desactivar la optimización de batería para esta aplicación. Esto garantiza una actualización confiable en segundo plano.\n\nSerá redirigido a la configuración del sistema donde puede otorgar este permiso.';

  @override
  String get batteryOptimizationStillEnabled =>
      'La optimización de batería sigue activada. Desactívela en la configuración para usar actualización continua.';

  @override
  String get openSettings => 'Abrir configuración';

  @override
  String get charts => 'Gráficos';

  @override
  String get chartsSubtitle => 'Evolución de temperatura & estadísticas';

  @override
  String get temperatureEvolution24h => 'Evolución Temperatura (24h)';

  @override
  String get roomTargetAxis => 'Sala / Objetivo';

  @override
  String get flameAxis => 'Llama';

  @override
  String get noDataAvailableYet => 'No hay datos disponibles aún';

  @override
  String get dataCollectionInProgress => 'Recopilación de datos en curso...';

  @override
  String dataPointsCollected(int count, int percent) {
    return '$count puntos de datos recopilados ($percent%)';
  }

  @override
  String minimumPointsNeeded(int count) {
    return 'Mínimo $count puntos necesarios para el gráfico';
  }

  @override
  String get roomTemperature => 'Temperatura ambiente';

  @override
  String get failedToLoadChartData => 'Error al cargar datos del gráfico';

  @override
  String get chartAutoUpdateInfo =>
      'Los datos históricos se recopilan automáticamente. El gráfico se actualiza cada 4 segundos con nuevos puntos de datos.';
}
