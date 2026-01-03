// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $SensorReadingsTable extends SensorReadings
    with TableInfo<$SensorReadingsTable, SensorReading> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SensorReadingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _stoveIdMeta = const VerificationMeta(
    'stoveId',
  );
  @override
  late final GeneratedColumn<String> stoveId = GeneratedColumn<String>(
    'stove_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _timestampMeta = const VerificationMeta(
    'timestamp',
  );
  @override
  late final GeneratedColumn<DateTime> timestamp = GeneratedColumn<DateTime>(
    'timestamp',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _inputRoomTemperatureMeta =
      const VerificationMeta('inputRoomTemperature');
  @override
  late final GeneratedColumn<double> inputRoomTemperature =
      GeneratedColumn<double>(
        'input_room_temperature',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _inputFlameTemperatureMeta =
      const VerificationMeta('inputFlameTemperature');
  @override
  late final GeneratedColumn<int> inputFlameTemperature = GeneratedColumn<int>(
    'input_flame_temperature',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _targetTemperatureMeta = const VerificationMeta(
    'targetTemperature',
  );
  @override
  late final GeneratedColumn<double> targetTemperature =
      GeneratedColumn<double>(
        'target_temperature',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _outputDischargeMotorMeta =
      const VerificationMeta('outputDischargeMotor');
  @override
  late final GeneratedColumn<int> outputDischargeMotor = GeneratedColumn<int>(
    'output_discharge_motor',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _outputIDFanMeta = const VerificationMeta(
    'outputIDFan',
  );
  @override
  late final GeneratedColumn<int> outputIDFan = GeneratedColumn<int>(
    'output_i_d_fan',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statusMainStateMeta = const VerificationMeta(
    'statusMainState',
  );
  @override
  late final GeneratedColumn<int> statusMainState = GeneratedColumn<int>(
    'status_main_state',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statusSubStateMeta = const VerificationMeta(
    'statusSubState',
  );
  @override
  late final GeneratedColumn<int> statusSubState = GeneratedColumn<int>(
    'status_sub_state',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _parameterRuntimePelletsMeta =
      const VerificationMeta('parameterRuntimePellets');
  @override
  late final GeneratedColumn<int> parameterRuntimePellets =
      GeneratedColumn<int>(
        'parameter_runtime_pellets',
        aliasedName,
        false,
        type: DriftSqlType.int,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _parameterFeedRateTotalMeta =
      const VerificationMeta('parameterFeedRateTotal');
  @override
  late final GeneratedColumn<int> parameterFeedRateTotal = GeneratedColumn<int>(
    'parameter_feed_rate_total',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _parameterIgnitionCountMeta =
      const VerificationMeta('parameterIgnitionCount');
  @override
  late final GeneratedColumn<int> parameterIgnitionCount = GeneratedColumn<int>(
    'parameter_ignition_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statusFrostStartedMeta =
      const VerificationMeta('statusFrostStarted');
  @override
  late final GeneratedColumn<bool> statusFrostStarted = GeneratedColumn<bool>(
    'status_frost_started',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("status_frost_started" IN (0, 1))',
    ),
  );
  static const VerificationMeta _hasErrorMeta = const VerificationMeta(
    'hasError',
  );
  @override
  late final GeneratedColumn<bool> hasError = GeneratedColumn<bool>(
    'has_error',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("has_error" IN (0, 1))',
    ),
  );
  static const VerificationMeta _hasWarningMeta = const VerificationMeta(
    'hasWarning',
  );
  @override
  late final GeneratedColumn<bool> hasWarning = GeneratedColumn<bool>(
    'has_warning',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("has_warning" IN (0, 1))',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    stoveId,
    timestamp,
    inputRoomTemperature,
    inputFlameTemperature,
    targetTemperature,
    outputDischargeMotor,
    outputIDFan,
    statusMainState,
    statusSubState,
    parameterRuntimePellets,
    parameterFeedRateTotal,
    parameterIgnitionCount,
    statusFrostStarted,
    hasError,
    hasWarning,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sensor_readings';
  @override
  VerificationContext validateIntegrity(
    Insertable<SensorReading> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('stove_id')) {
      context.handle(
        _stoveIdMeta,
        stoveId.isAcceptableOrUnknown(data['stove_id']!, _stoveIdMeta),
      );
    } else if (isInserting) {
      context.missing(_stoveIdMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(
        _timestampMeta,
        timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta),
      );
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('input_room_temperature')) {
      context.handle(
        _inputRoomTemperatureMeta,
        inputRoomTemperature.isAcceptableOrUnknown(
          data['input_room_temperature']!,
          _inputRoomTemperatureMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_inputRoomTemperatureMeta);
    }
    if (data.containsKey('input_flame_temperature')) {
      context.handle(
        _inputFlameTemperatureMeta,
        inputFlameTemperature.isAcceptableOrUnknown(
          data['input_flame_temperature']!,
          _inputFlameTemperatureMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_inputFlameTemperatureMeta);
    }
    if (data.containsKey('target_temperature')) {
      context.handle(
        _targetTemperatureMeta,
        targetTemperature.isAcceptableOrUnknown(
          data['target_temperature']!,
          _targetTemperatureMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_targetTemperatureMeta);
    }
    if (data.containsKey('output_discharge_motor')) {
      context.handle(
        _outputDischargeMotorMeta,
        outputDischargeMotor.isAcceptableOrUnknown(
          data['output_discharge_motor']!,
          _outputDischargeMotorMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_outputDischargeMotorMeta);
    }
    if (data.containsKey('output_i_d_fan')) {
      context.handle(
        _outputIDFanMeta,
        outputIDFan.isAcceptableOrUnknown(
          data['output_i_d_fan']!,
          _outputIDFanMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_outputIDFanMeta);
    }
    if (data.containsKey('status_main_state')) {
      context.handle(
        _statusMainStateMeta,
        statusMainState.isAcceptableOrUnknown(
          data['status_main_state']!,
          _statusMainStateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_statusMainStateMeta);
    }
    if (data.containsKey('status_sub_state')) {
      context.handle(
        _statusSubStateMeta,
        statusSubState.isAcceptableOrUnknown(
          data['status_sub_state']!,
          _statusSubStateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_statusSubStateMeta);
    }
    if (data.containsKey('parameter_runtime_pellets')) {
      context.handle(
        _parameterRuntimePelletsMeta,
        parameterRuntimePellets.isAcceptableOrUnknown(
          data['parameter_runtime_pellets']!,
          _parameterRuntimePelletsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_parameterRuntimePelletsMeta);
    }
    if (data.containsKey('parameter_feed_rate_total')) {
      context.handle(
        _parameterFeedRateTotalMeta,
        parameterFeedRateTotal.isAcceptableOrUnknown(
          data['parameter_feed_rate_total']!,
          _parameterFeedRateTotalMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_parameterFeedRateTotalMeta);
    }
    if (data.containsKey('parameter_ignition_count')) {
      context.handle(
        _parameterIgnitionCountMeta,
        parameterIgnitionCount.isAcceptableOrUnknown(
          data['parameter_ignition_count']!,
          _parameterIgnitionCountMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_parameterIgnitionCountMeta);
    }
    if (data.containsKey('status_frost_started')) {
      context.handle(
        _statusFrostStartedMeta,
        statusFrostStarted.isAcceptableOrUnknown(
          data['status_frost_started']!,
          _statusFrostStartedMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_statusFrostStartedMeta);
    }
    if (data.containsKey('has_error')) {
      context.handle(
        _hasErrorMeta,
        hasError.isAcceptableOrUnknown(data['has_error']!, _hasErrorMeta),
      );
    } else if (isInserting) {
      context.missing(_hasErrorMeta);
    }
    if (data.containsKey('has_warning')) {
      context.handle(
        _hasWarningMeta,
        hasWarning.isAcceptableOrUnknown(data['has_warning']!, _hasWarningMeta),
      );
    } else if (isInserting) {
      context.missing(_hasWarningMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SensorReading map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SensorReading(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      stoveId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}stove_id'],
      )!,
      timestamp: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}timestamp'],
      )!,
      inputRoomTemperature: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}input_room_temperature'],
      )!,
      inputFlameTemperature: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}input_flame_temperature'],
      )!,
      targetTemperature: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}target_temperature'],
      )!,
      outputDischargeMotor: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}output_discharge_motor'],
      )!,
      outputIDFan: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}output_i_d_fan'],
      )!,
      statusMainState: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}status_main_state'],
      )!,
      statusSubState: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}status_sub_state'],
      )!,
      parameterRuntimePellets: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}parameter_runtime_pellets'],
      )!,
      parameterFeedRateTotal: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}parameter_feed_rate_total'],
      )!,
      parameterIgnitionCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}parameter_ignition_count'],
      )!,
      statusFrostStarted: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}status_frost_started'],
      )!,
      hasError: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}has_error'],
      )!,
      hasWarning: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}has_warning'],
      )!,
    );
  }

  @override
  $SensorReadingsTable createAlias(String alias) {
    return $SensorReadingsTable(attachedDatabase, alias);
  }
}

class SensorReading extends DataClass implements Insertable<SensorReading> {
  final int id;
  final String stoveId;
  final DateTime timestamp;
  final double inputRoomTemperature;
  final int inputFlameTemperature;
  final double targetTemperature;
  final int outputDischargeMotor;
  final int outputIDFan;
  final int statusMainState;
  final int statusSubState;
  final int parameterRuntimePellets;
  final int parameterFeedRateTotal;
  final int parameterIgnitionCount;
  final bool statusFrostStarted;
  final bool hasError;
  final bool hasWarning;
  const SensorReading({
    required this.id,
    required this.stoveId,
    required this.timestamp,
    required this.inputRoomTemperature,
    required this.inputFlameTemperature,
    required this.targetTemperature,
    required this.outputDischargeMotor,
    required this.outputIDFan,
    required this.statusMainState,
    required this.statusSubState,
    required this.parameterRuntimePellets,
    required this.parameterFeedRateTotal,
    required this.parameterIgnitionCount,
    required this.statusFrostStarted,
    required this.hasError,
    required this.hasWarning,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['stove_id'] = Variable<String>(stoveId);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['input_room_temperature'] = Variable<double>(inputRoomTemperature);
    map['input_flame_temperature'] = Variable<int>(inputFlameTemperature);
    map['target_temperature'] = Variable<double>(targetTemperature);
    map['output_discharge_motor'] = Variable<int>(outputDischargeMotor);
    map['output_i_d_fan'] = Variable<int>(outputIDFan);
    map['status_main_state'] = Variable<int>(statusMainState);
    map['status_sub_state'] = Variable<int>(statusSubState);
    map['parameter_runtime_pellets'] = Variable<int>(parameterRuntimePellets);
    map['parameter_feed_rate_total'] = Variable<int>(parameterFeedRateTotal);
    map['parameter_ignition_count'] = Variable<int>(parameterIgnitionCount);
    map['status_frost_started'] = Variable<bool>(statusFrostStarted);
    map['has_error'] = Variable<bool>(hasError);
    map['has_warning'] = Variable<bool>(hasWarning);
    return map;
  }

  SensorReadingsCompanion toCompanion(bool nullToAbsent) {
    return SensorReadingsCompanion(
      id: Value(id),
      stoveId: Value(stoveId),
      timestamp: Value(timestamp),
      inputRoomTemperature: Value(inputRoomTemperature),
      inputFlameTemperature: Value(inputFlameTemperature),
      targetTemperature: Value(targetTemperature),
      outputDischargeMotor: Value(outputDischargeMotor),
      outputIDFan: Value(outputIDFan),
      statusMainState: Value(statusMainState),
      statusSubState: Value(statusSubState),
      parameterRuntimePellets: Value(parameterRuntimePellets),
      parameterFeedRateTotal: Value(parameterFeedRateTotal),
      parameterIgnitionCount: Value(parameterIgnitionCount),
      statusFrostStarted: Value(statusFrostStarted),
      hasError: Value(hasError),
      hasWarning: Value(hasWarning),
    );
  }

  factory SensorReading.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SensorReading(
      id: serializer.fromJson<int>(json['id']),
      stoveId: serializer.fromJson<String>(json['stoveId']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      inputRoomTemperature: serializer.fromJson<double>(
        json['inputRoomTemperature'],
      ),
      inputFlameTemperature: serializer.fromJson<int>(
        json['inputFlameTemperature'],
      ),
      targetTemperature: serializer.fromJson<double>(json['targetTemperature']),
      outputDischargeMotor: serializer.fromJson<int>(
        json['outputDischargeMotor'],
      ),
      outputIDFan: serializer.fromJson<int>(json['outputIDFan']),
      statusMainState: serializer.fromJson<int>(json['statusMainState']),
      statusSubState: serializer.fromJson<int>(json['statusSubState']),
      parameterRuntimePellets: serializer.fromJson<int>(
        json['parameterRuntimePellets'],
      ),
      parameterFeedRateTotal: serializer.fromJson<int>(
        json['parameterFeedRateTotal'],
      ),
      parameterIgnitionCount: serializer.fromJson<int>(
        json['parameterIgnitionCount'],
      ),
      statusFrostStarted: serializer.fromJson<bool>(json['statusFrostStarted']),
      hasError: serializer.fromJson<bool>(json['hasError']),
      hasWarning: serializer.fromJson<bool>(json['hasWarning']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'stoveId': serializer.toJson<String>(stoveId),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'inputRoomTemperature': serializer.toJson<double>(inputRoomTemperature),
      'inputFlameTemperature': serializer.toJson<int>(inputFlameTemperature),
      'targetTemperature': serializer.toJson<double>(targetTemperature),
      'outputDischargeMotor': serializer.toJson<int>(outputDischargeMotor),
      'outputIDFan': serializer.toJson<int>(outputIDFan),
      'statusMainState': serializer.toJson<int>(statusMainState),
      'statusSubState': serializer.toJson<int>(statusSubState),
      'parameterRuntimePellets': serializer.toJson<int>(
        parameterRuntimePellets,
      ),
      'parameterFeedRateTotal': serializer.toJson<int>(parameterFeedRateTotal),
      'parameterIgnitionCount': serializer.toJson<int>(parameterIgnitionCount),
      'statusFrostStarted': serializer.toJson<bool>(statusFrostStarted),
      'hasError': serializer.toJson<bool>(hasError),
      'hasWarning': serializer.toJson<bool>(hasWarning),
    };
  }

  SensorReading copyWith({
    int? id,
    String? stoveId,
    DateTime? timestamp,
    double? inputRoomTemperature,
    int? inputFlameTemperature,
    double? targetTemperature,
    int? outputDischargeMotor,
    int? outputIDFan,
    int? statusMainState,
    int? statusSubState,
    int? parameterRuntimePellets,
    int? parameterFeedRateTotal,
    int? parameterIgnitionCount,
    bool? statusFrostStarted,
    bool? hasError,
    bool? hasWarning,
  }) => SensorReading(
    id: id ?? this.id,
    stoveId: stoveId ?? this.stoveId,
    timestamp: timestamp ?? this.timestamp,
    inputRoomTemperature: inputRoomTemperature ?? this.inputRoomTemperature,
    inputFlameTemperature: inputFlameTemperature ?? this.inputFlameTemperature,
    targetTemperature: targetTemperature ?? this.targetTemperature,
    outputDischargeMotor: outputDischargeMotor ?? this.outputDischargeMotor,
    outputIDFan: outputIDFan ?? this.outputIDFan,
    statusMainState: statusMainState ?? this.statusMainState,
    statusSubState: statusSubState ?? this.statusSubState,
    parameterRuntimePellets:
        parameterRuntimePellets ?? this.parameterRuntimePellets,
    parameterFeedRateTotal:
        parameterFeedRateTotal ?? this.parameterFeedRateTotal,
    parameterIgnitionCount:
        parameterIgnitionCount ?? this.parameterIgnitionCount,
    statusFrostStarted: statusFrostStarted ?? this.statusFrostStarted,
    hasError: hasError ?? this.hasError,
    hasWarning: hasWarning ?? this.hasWarning,
  );
  SensorReading copyWithCompanion(SensorReadingsCompanion data) {
    return SensorReading(
      id: data.id.present ? data.id.value : this.id,
      stoveId: data.stoveId.present ? data.stoveId.value : this.stoveId,
      timestamp: data.timestamp.present ? data.timestamp.value : this.timestamp,
      inputRoomTemperature: data.inputRoomTemperature.present
          ? data.inputRoomTemperature.value
          : this.inputRoomTemperature,
      inputFlameTemperature: data.inputFlameTemperature.present
          ? data.inputFlameTemperature.value
          : this.inputFlameTemperature,
      targetTemperature: data.targetTemperature.present
          ? data.targetTemperature.value
          : this.targetTemperature,
      outputDischargeMotor: data.outputDischargeMotor.present
          ? data.outputDischargeMotor.value
          : this.outputDischargeMotor,
      outputIDFan: data.outputIDFan.present
          ? data.outputIDFan.value
          : this.outputIDFan,
      statusMainState: data.statusMainState.present
          ? data.statusMainState.value
          : this.statusMainState,
      statusSubState: data.statusSubState.present
          ? data.statusSubState.value
          : this.statusSubState,
      parameterRuntimePellets: data.parameterRuntimePellets.present
          ? data.parameterRuntimePellets.value
          : this.parameterRuntimePellets,
      parameterFeedRateTotal: data.parameterFeedRateTotal.present
          ? data.parameterFeedRateTotal.value
          : this.parameterFeedRateTotal,
      parameterIgnitionCount: data.parameterIgnitionCount.present
          ? data.parameterIgnitionCount.value
          : this.parameterIgnitionCount,
      statusFrostStarted: data.statusFrostStarted.present
          ? data.statusFrostStarted.value
          : this.statusFrostStarted,
      hasError: data.hasError.present ? data.hasError.value : this.hasError,
      hasWarning: data.hasWarning.present
          ? data.hasWarning.value
          : this.hasWarning,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SensorReading(')
          ..write('id: $id, ')
          ..write('stoveId: $stoveId, ')
          ..write('timestamp: $timestamp, ')
          ..write('inputRoomTemperature: $inputRoomTemperature, ')
          ..write('inputFlameTemperature: $inputFlameTemperature, ')
          ..write('targetTemperature: $targetTemperature, ')
          ..write('outputDischargeMotor: $outputDischargeMotor, ')
          ..write('outputIDFan: $outputIDFan, ')
          ..write('statusMainState: $statusMainState, ')
          ..write('statusSubState: $statusSubState, ')
          ..write('parameterRuntimePellets: $parameterRuntimePellets, ')
          ..write('parameterFeedRateTotal: $parameterFeedRateTotal, ')
          ..write('parameterIgnitionCount: $parameterIgnitionCount, ')
          ..write('statusFrostStarted: $statusFrostStarted, ')
          ..write('hasError: $hasError, ')
          ..write('hasWarning: $hasWarning')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    stoveId,
    timestamp,
    inputRoomTemperature,
    inputFlameTemperature,
    targetTemperature,
    outputDischargeMotor,
    outputIDFan,
    statusMainState,
    statusSubState,
    parameterRuntimePellets,
    parameterFeedRateTotal,
    parameterIgnitionCount,
    statusFrostStarted,
    hasError,
    hasWarning,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SensorReading &&
          other.id == this.id &&
          other.stoveId == this.stoveId &&
          other.timestamp == this.timestamp &&
          other.inputRoomTemperature == this.inputRoomTemperature &&
          other.inputFlameTemperature == this.inputFlameTemperature &&
          other.targetTemperature == this.targetTemperature &&
          other.outputDischargeMotor == this.outputDischargeMotor &&
          other.outputIDFan == this.outputIDFan &&
          other.statusMainState == this.statusMainState &&
          other.statusSubState == this.statusSubState &&
          other.parameterRuntimePellets == this.parameterRuntimePellets &&
          other.parameterFeedRateTotal == this.parameterFeedRateTotal &&
          other.parameterIgnitionCount == this.parameterIgnitionCount &&
          other.statusFrostStarted == this.statusFrostStarted &&
          other.hasError == this.hasError &&
          other.hasWarning == this.hasWarning);
}

class SensorReadingsCompanion extends UpdateCompanion<SensorReading> {
  final Value<int> id;
  final Value<String> stoveId;
  final Value<DateTime> timestamp;
  final Value<double> inputRoomTemperature;
  final Value<int> inputFlameTemperature;
  final Value<double> targetTemperature;
  final Value<int> outputDischargeMotor;
  final Value<int> outputIDFan;
  final Value<int> statusMainState;
  final Value<int> statusSubState;
  final Value<int> parameterRuntimePellets;
  final Value<int> parameterFeedRateTotal;
  final Value<int> parameterIgnitionCount;
  final Value<bool> statusFrostStarted;
  final Value<bool> hasError;
  final Value<bool> hasWarning;
  const SensorReadingsCompanion({
    this.id = const Value.absent(),
    this.stoveId = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.inputRoomTemperature = const Value.absent(),
    this.inputFlameTemperature = const Value.absent(),
    this.targetTemperature = const Value.absent(),
    this.outputDischargeMotor = const Value.absent(),
    this.outputIDFan = const Value.absent(),
    this.statusMainState = const Value.absent(),
    this.statusSubState = const Value.absent(),
    this.parameterRuntimePellets = const Value.absent(),
    this.parameterFeedRateTotal = const Value.absent(),
    this.parameterIgnitionCount = const Value.absent(),
    this.statusFrostStarted = const Value.absent(),
    this.hasError = const Value.absent(),
    this.hasWarning = const Value.absent(),
  });
  SensorReadingsCompanion.insert({
    this.id = const Value.absent(),
    required String stoveId,
    required DateTime timestamp,
    required double inputRoomTemperature,
    required int inputFlameTemperature,
    required double targetTemperature,
    required int outputDischargeMotor,
    required int outputIDFan,
    required int statusMainState,
    required int statusSubState,
    required int parameterRuntimePellets,
    required int parameterFeedRateTotal,
    required int parameterIgnitionCount,
    required bool statusFrostStarted,
    required bool hasError,
    required bool hasWarning,
  }) : stoveId = Value(stoveId),
       timestamp = Value(timestamp),
       inputRoomTemperature = Value(inputRoomTemperature),
       inputFlameTemperature = Value(inputFlameTemperature),
       targetTemperature = Value(targetTemperature),
       outputDischargeMotor = Value(outputDischargeMotor),
       outputIDFan = Value(outputIDFan),
       statusMainState = Value(statusMainState),
       statusSubState = Value(statusSubState),
       parameterRuntimePellets = Value(parameterRuntimePellets),
       parameterFeedRateTotal = Value(parameterFeedRateTotal),
       parameterIgnitionCount = Value(parameterIgnitionCount),
       statusFrostStarted = Value(statusFrostStarted),
       hasError = Value(hasError),
       hasWarning = Value(hasWarning);
  static Insertable<SensorReading> custom({
    Expression<int>? id,
    Expression<String>? stoveId,
    Expression<DateTime>? timestamp,
    Expression<double>? inputRoomTemperature,
    Expression<int>? inputFlameTemperature,
    Expression<double>? targetTemperature,
    Expression<int>? outputDischargeMotor,
    Expression<int>? outputIDFan,
    Expression<int>? statusMainState,
    Expression<int>? statusSubState,
    Expression<int>? parameterRuntimePellets,
    Expression<int>? parameterFeedRateTotal,
    Expression<int>? parameterIgnitionCount,
    Expression<bool>? statusFrostStarted,
    Expression<bool>? hasError,
    Expression<bool>? hasWarning,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (stoveId != null) 'stove_id': stoveId,
      if (timestamp != null) 'timestamp': timestamp,
      if (inputRoomTemperature != null)
        'input_room_temperature': inputRoomTemperature,
      if (inputFlameTemperature != null)
        'input_flame_temperature': inputFlameTemperature,
      if (targetTemperature != null) 'target_temperature': targetTemperature,
      if (outputDischargeMotor != null)
        'output_discharge_motor': outputDischargeMotor,
      if (outputIDFan != null) 'output_i_d_fan': outputIDFan,
      if (statusMainState != null) 'status_main_state': statusMainState,
      if (statusSubState != null) 'status_sub_state': statusSubState,
      if (parameterRuntimePellets != null)
        'parameter_runtime_pellets': parameterRuntimePellets,
      if (parameterFeedRateTotal != null)
        'parameter_feed_rate_total': parameterFeedRateTotal,
      if (parameterIgnitionCount != null)
        'parameter_ignition_count': parameterIgnitionCount,
      if (statusFrostStarted != null)
        'status_frost_started': statusFrostStarted,
      if (hasError != null) 'has_error': hasError,
      if (hasWarning != null) 'has_warning': hasWarning,
    });
  }

  SensorReadingsCompanion copyWith({
    Value<int>? id,
    Value<String>? stoveId,
    Value<DateTime>? timestamp,
    Value<double>? inputRoomTemperature,
    Value<int>? inputFlameTemperature,
    Value<double>? targetTemperature,
    Value<int>? outputDischargeMotor,
    Value<int>? outputIDFan,
    Value<int>? statusMainState,
    Value<int>? statusSubState,
    Value<int>? parameterRuntimePellets,
    Value<int>? parameterFeedRateTotal,
    Value<int>? parameterIgnitionCount,
    Value<bool>? statusFrostStarted,
    Value<bool>? hasError,
    Value<bool>? hasWarning,
  }) {
    return SensorReadingsCompanion(
      id: id ?? this.id,
      stoveId: stoveId ?? this.stoveId,
      timestamp: timestamp ?? this.timestamp,
      inputRoomTemperature: inputRoomTemperature ?? this.inputRoomTemperature,
      inputFlameTemperature:
          inputFlameTemperature ?? this.inputFlameTemperature,
      targetTemperature: targetTemperature ?? this.targetTemperature,
      outputDischargeMotor: outputDischargeMotor ?? this.outputDischargeMotor,
      outputIDFan: outputIDFan ?? this.outputIDFan,
      statusMainState: statusMainState ?? this.statusMainState,
      statusSubState: statusSubState ?? this.statusSubState,
      parameterRuntimePellets:
          parameterRuntimePellets ?? this.parameterRuntimePellets,
      parameterFeedRateTotal:
          parameterFeedRateTotal ?? this.parameterFeedRateTotal,
      parameterIgnitionCount:
          parameterIgnitionCount ?? this.parameterIgnitionCount,
      statusFrostStarted: statusFrostStarted ?? this.statusFrostStarted,
      hasError: hasError ?? this.hasError,
      hasWarning: hasWarning ?? this.hasWarning,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (stoveId.present) {
      map['stove_id'] = Variable<String>(stoveId.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (inputRoomTemperature.present) {
      map['input_room_temperature'] = Variable<double>(
        inputRoomTemperature.value,
      );
    }
    if (inputFlameTemperature.present) {
      map['input_flame_temperature'] = Variable<int>(
        inputFlameTemperature.value,
      );
    }
    if (targetTemperature.present) {
      map['target_temperature'] = Variable<double>(targetTemperature.value);
    }
    if (outputDischargeMotor.present) {
      map['output_discharge_motor'] = Variable<int>(outputDischargeMotor.value);
    }
    if (outputIDFan.present) {
      map['output_i_d_fan'] = Variable<int>(outputIDFan.value);
    }
    if (statusMainState.present) {
      map['status_main_state'] = Variable<int>(statusMainState.value);
    }
    if (statusSubState.present) {
      map['status_sub_state'] = Variable<int>(statusSubState.value);
    }
    if (parameterRuntimePellets.present) {
      map['parameter_runtime_pellets'] = Variable<int>(
        parameterRuntimePellets.value,
      );
    }
    if (parameterFeedRateTotal.present) {
      map['parameter_feed_rate_total'] = Variable<int>(
        parameterFeedRateTotal.value,
      );
    }
    if (parameterIgnitionCount.present) {
      map['parameter_ignition_count'] = Variable<int>(
        parameterIgnitionCount.value,
      );
    }
    if (statusFrostStarted.present) {
      map['status_frost_started'] = Variable<bool>(statusFrostStarted.value);
    }
    if (hasError.present) {
      map['has_error'] = Variable<bool>(hasError.value);
    }
    if (hasWarning.present) {
      map['has_warning'] = Variable<bool>(hasWarning.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SensorReadingsCompanion(')
          ..write('id: $id, ')
          ..write('stoveId: $stoveId, ')
          ..write('timestamp: $timestamp, ')
          ..write('inputRoomTemperature: $inputRoomTemperature, ')
          ..write('inputFlameTemperature: $inputFlameTemperature, ')
          ..write('targetTemperature: $targetTemperature, ')
          ..write('outputDischargeMotor: $outputDischargeMotor, ')
          ..write('outputIDFan: $outputIDFan, ')
          ..write('statusMainState: $statusMainState, ')
          ..write('statusSubState: $statusSubState, ')
          ..write('parameterRuntimePellets: $parameterRuntimePellets, ')
          ..write('parameterFeedRateTotal: $parameterFeedRateTotal, ')
          ..write('parameterIgnitionCount: $parameterIgnitionCount, ')
          ..write('statusFrostStarted: $statusFrostStarted, ')
          ..write('hasError: $hasError, ')
          ..write('hasWarning: $hasWarning')
          ..write(')'))
        .toString();
  }
}

class $DailyStatisticsTable extends DailyStatistics
    with TableInfo<$DailyStatisticsTable, DailyStatistic> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DailyStatisticsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _stoveIdMeta = const VerificationMeta(
    'stoveId',
  );
  @override
  late final GeneratedColumn<String> stoveId = GeneratedColumn<String>(
    'stove_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _avgRoomTemperatureMeta =
      const VerificationMeta('avgRoomTemperature');
  @override
  late final GeneratedColumn<double> avgRoomTemperature =
      GeneratedColumn<double>(
        'avg_room_temperature',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _minRoomTemperatureMeta =
      const VerificationMeta('minRoomTemperature');
  @override
  late final GeneratedColumn<double> minRoomTemperature =
      GeneratedColumn<double>(
        'min_room_temperature',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _maxRoomTemperatureMeta =
      const VerificationMeta('maxRoomTemperature');
  @override
  late final GeneratedColumn<double> maxRoomTemperature =
      GeneratedColumn<double>(
        'max_room_temperature',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _avgTargetTemperatureMeta =
      const VerificationMeta('avgTargetTemperature');
  @override
  late final GeneratedColumn<double> avgTargetTemperature =
      GeneratedColumn<double>(
        'avg_target_temperature',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _avgFlameTemperatureMeta =
      const VerificationMeta('avgFlameTemperature');
  @override
  late final GeneratedColumn<int> avgFlameTemperature = GeneratedColumn<int>(
    'avg_flame_temperature',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pelletConsumptionKgMeta =
      const VerificationMeta('pelletConsumptionKg');
  @override
  late final GeneratedColumn<double> pelletConsumptionKg =
      GeneratedColumn<double>(
        'pellet_consumption_kg',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _runtimeMinutesMeta = const VerificationMeta(
    'runtimeMinutes',
  );
  @override
  late final GeneratedColumn<int> runtimeMinutes = GeneratedColumn<int>(
    'runtime_minutes',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _burningMinutesMeta = const VerificationMeta(
    'burningMinutes',
  );
  @override
  late final GeneratedColumn<int> burningMinutes = GeneratedColumn<int>(
    'burning_minutes',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ignitionCountMeta = const VerificationMeta(
    'ignitionCount',
  );
  @override
  late final GeneratedColumn<int> ignitionCount = GeneratedColumn<int>(
    'ignition_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minutesOffMeta = const VerificationMeta(
    'minutesOff',
  );
  @override
  late final GeneratedColumn<int> minutesOff = GeneratedColumn<int>(
    'minutes_off',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minutesIgnitionMeta = const VerificationMeta(
    'minutesIgnition',
  );
  @override
  late final GeneratedColumn<int> minutesIgnition = GeneratedColumn<int>(
    'minutes_ignition',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minutesStartingMeta = const VerificationMeta(
    'minutesStarting',
  );
  @override
  late final GeneratedColumn<int> minutesStarting = GeneratedColumn<int>(
    'minutes_starting',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minutesRunningMeta = const VerificationMeta(
    'minutesRunning',
  );
  @override
  late final GeneratedColumn<int> minutesRunning = GeneratedColumn<int>(
    'minutes_running',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minutesCleaningMeta = const VerificationMeta(
    'minutesCleaning',
  );
  @override
  late final GeneratedColumn<int> minutesCleaning = GeneratedColumn<int>(
    'minutes_cleaning',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minutesBurnOffMeta = const VerificationMeta(
    'minutesBurnOff',
  );
  @override
  late final GeneratedColumn<int> minutesBurnOff = GeneratedColumn<int>(
    'minutes_burn_off',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _readingCountMeta = const VerificationMeta(
    'readingCount',
  );
  @override
  late final GeneratedColumn<int> readingCount = GeneratedColumn<int>(
    'reading_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    stoveId,
    date,
    avgRoomTemperature,
    minRoomTemperature,
    maxRoomTemperature,
    avgTargetTemperature,
    avgFlameTemperature,
    pelletConsumptionKg,
    runtimeMinutes,
    burningMinutes,
    ignitionCount,
    minutesOff,
    minutesIgnition,
    minutesStarting,
    minutesRunning,
    minutesCleaning,
    minutesBurnOff,
    readingCount,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'daily_statistics';
  @override
  VerificationContext validateIntegrity(
    Insertable<DailyStatistic> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('stove_id')) {
      context.handle(
        _stoveIdMeta,
        stoveId.isAcceptableOrUnknown(data['stove_id']!, _stoveIdMeta),
      );
    } else if (isInserting) {
      context.missing(_stoveIdMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('avg_room_temperature')) {
      context.handle(
        _avgRoomTemperatureMeta,
        avgRoomTemperature.isAcceptableOrUnknown(
          data['avg_room_temperature']!,
          _avgRoomTemperatureMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_avgRoomTemperatureMeta);
    }
    if (data.containsKey('min_room_temperature')) {
      context.handle(
        _minRoomTemperatureMeta,
        minRoomTemperature.isAcceptableOrUnknown(
          data['min_room_temperature']!,
          _minRoomTemperatureMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_minRoomTemperatureMeta);
    }
    if (data.containsKey('max_room_temperature')) {
      context.handle(
        _maxRoomTemperatureMeta,
        maxRoomTemperature.isAcceptableOrUnknown(
          data['max_room_temperature']!,
          _maxRoomTemperatureMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_maxRoomTemperatureMeta);
    }
    if (data.containsKey('avg_target_temperature')) {
      context.handle(
        _avgTargetTemperatureMeta,
        avgTargetTemperature.isAcceptableOrUnknown(
          data['avg_target_temperature']!,
          _avgTargetTemperatureMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_avgTargetTemperatureMeta);
    }
    if (data.containsKey('avg_flame_temperature')) {
      context.handle(
        _avgFlameTemperatureMeta,
        avgFlameTemperature.isAcceptableOrUnknown(
          data['avg_flame_temperature']!,
          _avgFlameTemperatureMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_avgFlameTemperatureMeta);
    }
    if (data.containsKey('pellet_consumption_kg')) {
      context.handle(
        _pelletConsumptionKgMeta,
        pelletConsumptionKg.isAcceptableOrUnknown(
          data['pellet_consumption_kg']!,
          _pelletConsumptionKgMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_pelletConsumptionKgMeta);
    }
    if (data.containsKey('runtime_minutes')) {
      context.handle(
        _runtimeMinutesMeta,
        runtimeMinutes.isAcceptableOrUnknown(
          data['runtime_minutes']!,
          _runtimeMinutesMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_runtimeMinutesMeta);
    }
    if (data.containsKey('burning_minutes')) {
      context.handle(
        _burningMinutesMeta,
        burningMinutes.isAcceptableOrUnknown(
          data['burning_minutes']!,
          _burningMinutesMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_burningMinutesMeta);
    }
    if (data.containsKey('ignition_count')) {
      context.handle(
        _ignitionCountMeta,
        ignitionCount.isAcceptableOrUnknown(
          data['ignition_count']!,
          _ignitionCountMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_ignitionCountMeta);
    }
    if (data.containsKey('minutes_off')) {
      context.handle(
        _minutesOffMeta,
        minutesOff.isAcceptableOrUnknown(data['minutes_off']!, _minutesOffMeta),
      );
    } else if (isInserting) {
      context.missing(_minutesOffMeta);
    }
    if (data.containsKey('minutes_ignition')) {
      context.handle(
        _minutesIgnitionMeta,
        minutesIgnition.isAcceptableOrUnknown(
          data['minutes_ignition']!,
          _minutesIgnitionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_minutesIgnitionMeta);
    }
    if (data.containsKey('minutes_starting')) {
      context.handle(
        _minutesStartingMeta,
        minutesStarting.isAcceptableOrUnknown(
          data['minutes_starting']!,
          _minutesStartingMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_minutesStartingMeta);
    }
    if (data.containsKey('minutes_running')) {
      context.handle(
        _minutesRunningMeta,
        minutesRunning.isAcceptableOrUnknown(
          data['minutes_running']!,
          _minutesRunningMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_minutesRunningMeta);
    }
    if (data.containsKey('minutes_cleaning')) {
      context.handle(
        _minutesCleaningMeta,
        minutesCleaning.isAcceptableOrUnknown(
          data['minutes_cleaning']!,
          _minutesCleaningMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_minutesCleaningMeta);
    }
    if (data.containsKey('minutes_burn_off')) {
      context.handle(
        _minutesBurnOffMeta,
        minutesBurnOff.isAcceptableOrUnknown(
          data['minutes_burn_off']!,
          _minutesBurnOffMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_minutesBurnOffMeta);
    }
    if (data.containsKey('reading_count')) {
      context.handle(
        _readingCountMeta,
        readingCount.isAcceptableOrUnknown(
          data['reading_count']!,
          _readingCountMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_readingCountMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DailyStatistic map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DailyStatistic(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      stoveId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}stove_id'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      avgRoomTemperature: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}avg_room_temperature'],
      )!,
      minRoomTemperature: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}min_room_temperature'],
      )!,
      maxRoomTemperature: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}max_room_temperature'],
      )!,
      avgTargetTemperature: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}avg_target_temperature'],
      )!,
      avgFlameTemperature: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}avg_flame_temperature'],
      )!,
      pelletConsumptionKg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}pellet_consumption_kg'],
      )!,
      runtimeMinutes: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}runtime_minutes'],
      )!,
      burningMinutes: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}burning_minutes'],
      )!,
      ignitionCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}ignition_count'],
      )!,
      minutesOff: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}minutes_off'],
      )!,
      minutesIgnition: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}minutes_ignition'],
      )!,
      minutesStarting: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}minutes_starting'],
      )!,
      minutesRunning: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}minutes_running'],
      )!,
      minutesCleaning: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}minutes_cleaning'],
      )!,
      minutesBurnOff: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}minutes_burn_off'],
      )!,
      readingCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}reading_count'],
      )!,
    );
  }

  @override
  $DailyStatisticsTable createAlias(String alias) {
    return $DailyStatisticsTable(attachedDatabase, alias);
  }
}

class DailyStatistic extends DataClass implements Insertable<DailyStatistic> {
  final int id;
  final String stoveId;
  final DateTime date;
  final double avgRoomTemperature;
  final double minRoomTemperature;
  final double maxRoomTemperature;
  final double avgTargetTemperature;
  final int avgFlameTemperature;
  final double pelletConsumptionKg;
  final int runtimeMinutes;
  final int burningMinutes;
  final int ignitionCount;
  final int minutesOff;
  final int minutesIgnition;
  final int minutesStarting;
  final int minutesRunning;
  final int minutesCleaning;
  final int minutesBurnOff;
  final int readingCount;
  const DailyStatistic({
    required this.id,
    required this.stoveId,
    required this.date,
    required this.avgRoomTemperature,
    required this.minRoomTemperature,
    required this.maxRoomTemperature,
    required this.avgTargetTemperature,
    required this.avgFlameTemperature,
    required this.pelletConsumptionKg,
    required this.runtimeMinutes,
    required this.burningMinutes,
    required this.ignitionCount,
    required this.minutesOff,
    required this.minutesIgnition,
    required this.minutesStarting,
    required this.minutesRunning,
    required this.minutesCleaning,
    required this.minutesBurnOff,
    required this.readingCount,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['stove_id'] = Variable<String>(stoveId);
    map['date'] = Variable<DateTime>(date);
    map['avg_room_temperature'] = Variable<double>(avgRoomTemperature);
    map['min_room_temperature'] = Variable<double>(minRoomTemperature);
    map['max_room_temperature'] = Variable<double>(maxRoomTemperature);
    map['avg_target_temperature'] = Variable<double>(avgTargetTemperature);
    map['avg_flame_temperature'] = Variable<int>(avgFlameTemperature);
    map['pellet_consumption_kg'] = Variable<double>(pelletConsumptionKg);
    map['runtime_minutes'] = Variable<int>(runtimeMinutes);
    map['burning_minutes'] = Variable<int>(burningMinutes);
    map['ignition_count'] = Variable<int>(ignitionCount);
    map['minutes_off'] = Variable<int>(minutesOff);
    map['minutes_ignition'] = Variable<int>(minutesIgnition);
    map['minutes_starting'] = Variable<int>(minutesStarting);
    map['minutes_running'] = Variable<int>(minutesRunning);
    map['minutes_cleaning'] = Variable<int>(minutesCleaning);
    map['minutes_burn_off'] = Variable<int>(minutesBurnOff);
    map['reading_count'] = Variable<int>(readingCount);
    return map;
  }

  DailyStatisticsCompanion toCompanion(bool nullToAbsent) {
    return DailyStatisticsCompanion(
      id: Value(id),
      stoveId: Value(stoveId),
      date: Value(date),
      avgRoomTemperature: Value(avgRoomTemperature),
      minRoomTemperature: Value(minRoomTemperature),
      maxRoomTemperature: Value(maxRoomTemperature),
      avgTargetTemperature: Value(avgTargetTemperature),
      avgFlameTemperature: Value(avgFlameTemperature),
      pelletConsumptionKg: Value(pelletConsumptionKg),
      runtimeMinutes: Value(runtimeMinutes),
      burningMinutes: Value(burningMinutes),
      ignitionCount: Value(ignitionCount),
      minutesOff: Value(minutesOff),
      minutesIgnition: Value(minutesIgnition),
      minutesStarting: Value(minutesStarting),
      minutesRunning: Value(minutesRunning),
      minutesCleaning: Value(minutesCleaning),
      minutesBurnOff: Value(minutesBurnOff),
      readingCount: Value(readingCount),
    );
  }

  factory DailyStatistic.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DailyStatistic(
      id: serializer.fromJson<int>(json['id']),
      stoveId: serializer.fromJson<String>(json['stoveId']),
      date: serializer.fromJson<DateTime>(json['date']),
      avgRoomTemperature: serializer.fromJson<double>(
        json['avgRoomTemperature'],
      ),
      minRoomTemperature: serializer.fromJson<double>(
        json['minRoomTemperature'],
      ),
      maxRoomTemperature: serializer.fromJson<double>(
        json['maxRoomTemperature'],
      ),
      avgTargetTemperature: serializer.fromJson<double>(
        json['avgTargetTemperature'],
      ),
      avgFlameTemperature: serializer.fromJson<int>(
        json['avgFlameTemperature'],
      ),
      pelletConsumptionKg: serializer.fromJson<double>(
        json['pelletConsumptionKg'],
      ),
      runtimeMinutes: serializer.fromJson<int>(json['runtimeMinutes']),
      burningMinutes: serializer.fromJson<int>(json['burningMinutes']),
      ignitionCount: serializer.fromJson<int>(json['ignitionCount']),
      minutesOff: serializer.fromJson<int>(json['minutesOff']),
      minutesIgnition: serializer.fromJson<int>(json['minutesIgnition']),
      minutesStarting: serializer.fromJson<int>(json['minutesStarting']),
      minutesRunning: serializer.fromJson<int>(json['minutesRunning']),
      minutesCleaning: serializer.fromJson<int>(json['minutesCleaning']),
      minutesBurnOff: serializer.fromJson<int>(json['minutesBurnOff']),
      readingCount: serializer.fromJson<int>(json['readingCount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'stoveId': serializer.toJson<String>(stoveId),
      'date': serializer.toJson<DateTime>(date),
      'avgRoomTemperature': serializer.toJson<double>(avgRoomTemperature),
      'minRoomTemperature': serializer.toJson<double>(minRoomTemperature),
      'maxRoomTemperature': serializer.toJson<double>(maxRoomTemperature),
      'avgTargetTemperature': serializer.toJson<double>(avgTargetTemperature),
      'avgFlameTemperature': serializer.toJson<int>(avgFlameTemperature),
      'pelletConsumptionKg': serializer.toJson<double>(pelletConsumptionKg),
      'runtimeMinutes': serializer.toJson<int>(runtimeMinutes),
      'burningMinutes': serializer.toJson<int>(burningMinutes),
      'ignitionCount': serializer.toJson<int>(ignitionCount),
      'minutesOff': serializer.toJson<int>(minutesOff),
      'minutesIgnition': serializer.toJson<int>(minutesIgnition),
      'minutesStarting': serializer.toJson<int>(minutesStarting),
      'minutesRunning': serializer.toJson<int>(minutesRunning),
      'minutesCleaning': serializer.toJson<int>(minutesCleaning),
      'minutesBurnOff': serializer.toJson<int>(minutesBurnOff),
      'readingCount': serializer.toJson<int>(readingCount),
    };
  }

  DailyStatistic copyWith({
    int? id,
    String? stoveId,
    DateTime? date,
    double? avgRoomTemperature,
    double? minRoomTemperature,
    double? maxRoomTemperature,
    double? avgTargetTemperature,
    int? avgFlameTemperature,
    double? pelletConsumptionKg,
    int? runtimeMinutes,
    int? burningMinutes,
    int? ignitionCount,
    int? minutesOff,
    int? minutesIgnition,
    int? minutesStarting,
    int? minutesRunning,
    int? minutesCleaning,
    int? minutesBurnOff,
    int? readingCount,
  }) => DailyStatistic(
    id: id ?? this.id,
    stoveId: stoveId ?? this.stoveId,
    date: date ?? this.date,
    avgRoomTemperature: avgRoomTemperature ?? this.avgRoomTemperature,
    minRoomTemperature: minRoomTemperature ?? this.minRoomTemperature,
    maxRoomTemperature: maxRoomTemperature ?? this.maxRoomTemperature,
    avgTargetTemperature: avgTargetTemperature ?? this.avgTargetTemperature,
    avgFlameTemperature: avgFlameTemperature ?? this.avgFlameTemperature,
    pelletConsumptionKg: pelletConsumptionKg ?? this.pelletConsumptionKg,
    runtimeMinutes: runtimeMinutes ?? this.runtimeMinutes,
    burningMinutes: burningMinutes ?? this.burningMinutes,
    ignitionCount: ignitionCount ?? this.ignitionCount,
    minutesOff: minutesOff ?? this.minutesOff,
    minutesIgnition: minutesIgnition ?? this.minutesIgnition,
    minutesStarting: minutesStarting ?? this.minutesStarting,
    minutesRunning: minutesRunning ?? this.minutesRunning,
    minutesCleaning: minutesCleaning ?? this.minutesCleaning,
    minutesBurnOff: minutesBurnOff ?? this.minutesBurnOff,
    readingCount: readingCount ?? this.readingCount,
  );
  DailyStatistic copyWithCompanion(DailyStatisticsCompanion data) {
    return DailyStatistic(
      id: data.id.present ? data.id.value : this.id,
      stoveId: data.stoveId.present ? data.stoveId.value : this.stoveId,
      date: data.date.present ? data.date.value : this.date,
      avgRoomTemperature: data.avgRoomTemperature.present
          ? data.avgRoomTemperature.value
          : this.avgRoomTemperature,
      minRoomTemperature: data.minRoomTemperature.present
          ? data.minRoomTemperature.value
          : this.minRoomTemperature,
      maxRoomTemperature: data.maxRoomTemperature.present
          ? data.maxRoomTemperature.value
          : this.maxRoomTemperature,
      avgTargetTemperature: data.avgTargetTemperature.present
          ? data.avgTargetTemperature.value
          : this.avgTargetTemperature,
      avgFlameTemperature: data.avgFlameTemperature.present
          ? data.avgFlameTemperature.value
          : this.avgFlameTemperature,
      pelletConsumptionKg: data.pelletConsumptionKg.present
          ? data.pelletConsumptionKg.value
          : this.pelletConsumptionKg,
      runtimeMinutes: data.runtimeMinutes.present
          ? data.runtimeMinutes.value
          : this.runtimeMinutes,
      burningMinutes: data.burningMinutes.present
          ? data.burningMinutes.value
          : this.burningMinutes,
      ignitionCount: data.ignitionCount.present
          ? data.ignitionCount.value
          : this.ignitionCount,
      minutesOff: data.minutesOff.present
          ? data.minutesOff.value
          : this.minutesOff,
      minutesIgnition: data.minutesIgnition.present
          ? data.minutesIgnition.value
          : this.minutesIgnition,
      minutesStarting: data.minutesStarting.present
          ? data.minutesStarting.value
          : this.minutesStarting,
      minutesRunning: data.minutesRunning.present
          ? data.minutesRunning.value
          : this.minutesRunning,
      minutesCleaning: data.minutesCleaning.present
          ? data.minutesCleaning.value
          : this.minutesCleaning,
      minutesBurnOff: data.minutesBurnOff.present
          ? data.minutesBurnOff.value
          : this.minutesBurnOff,
      readingCount: data.readingCount.present
          ? data.readingCount.value
          : this.readingCount,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DailyStatistic(')
          ..write('id: $id, ')
          ..write('stoveId: $stoveId, ')
          ..write('date: $date, ')
          ..write('avgRoomTemperature: $avgRoomTemperature, ')
          ..write('minRoomTemperature: $minRoomTemperature, ')
          ..write('maxRoomTemperature: $maxRoomTemperature, ')
          ..write('avgTargetTemperature: $avgTargetTemperature, ')
          ..write('avgFlameTemperature: $avgFlameTemperature, ')
          ..write('pelletConsumptionKg: $pelletConsumptionKg, ')
          ..write('runtimeMinutes: $runtimeMinutes, ')
          ..write('burningMinutes: $burningMinutes, ')
          ..write('ignitionCount: $ignitionCount, ')
          ..write('minutesOff: $minutesOff, ')
          ..write('minutesIgnition: $minutesIgnition, ')
          ..write('minutesStarting: $minutesStarting, ')
          ..write('minutesRunning: $minutesRunning, ')
          ..write('minutesCleaning: $minutesCleaning, ')
          ..write('minutesBurnOff: $minutesBurnOff, ')
          ..write('readingCount: $readingCount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    stoveId,
    date,
    avgRoomTemperature,
    minRoomTemperature,
    maxRoomTemperature,
    avgTargetTemperature,
    avgFlameTemperature,
    pelletConsumptionKg,
    runtimeMinutes,
    burningMinutes,
    ignitionCount,
    minutesOff,
    minutesIgnition,
    minutesStarting,
    minutesRunning,
    minutesCleaning,
    minutesBurnOff,
    readingCount,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DailyStatistic &&
          other.id == this.id &&
          other.stoveId == this.stoveId &&
          other.date == this.date &&
          other.avgRoomTemperature == this.avgRoomTemperature &&
          other.minRoomTemperature == this.minRoomTemperature &&
          other.maxRoomTemperature == this.maxRoomTemperature &&
          other.avgTargetTemperature == this.avgTargetTemperature &&
          other.avgFlameTemperature == this.avgFlameTemperature &&
          other.pelletConsumptionKg == this.pelletConsumptionKg &&
          other.runtimeMinutes == this.runtimeMinutes &&
          other.burningMinutes == this.burningMinutes &&
          other.ignitionCount == this.ignitionCount &&
          other.minutesOff == this.minutesOff &&
          other.minutesIgnition == this.minutesIgnition &&
          other.minutesStarting == this.minutesStarting &&
          other.minutesRunning == this.minutesRunning &&
          other.minutesCleaning == this.minutesCleaning &&
          other.minutesBurnOff == this.minutesBurnOff &&
          other.readingCount == this.readingCount);
}

class DailyStatisticsCompanion extends UpdateCompanion<DailyStatistic> {
  final Value<int> id;
  final Value<String> stoveId;
  final Value<DateTime> date;
  final Value<double> avgRoomTemperature;
  final Value<double> minRoomTemperature;
  final Value<double> maxRoomTemperature;
  final Value<double> avgTargetTemperature;
  final Value<int> avgFlameTemperature;
  final Value<double> pelletConsumptionKg;
  final Value<int> runtimeMinutes;
  final Value<int> burningMinutes;
  final Value<int> ignitionCount;
  final Value<int> minutesOff;
  final Value<int> minutesIgnition;
  final Value<int> minutesStarting;
  final Value<int> minutesRunning;
  final Value<int> minutesCleaning;
  final Value<int> minutesBurnOff;
  final Value<int> readingCount;
  const DailyStatisticsCompanion({
    this.id = const Value.absent(),
    this.stoveId = const Value.absent(),
    this.date = const Value.absent(),
    this.avgRoomTemperature = const Value.absent(),
    this.minRoomTemperature = const Value.absent(),
    this.maxRoomTemperature = const Value.absent(),
    this.avgTargetTemperature = const Value.absent(),
    this.avgFlameTemperature = const Value.absent(),
    this.pelletConsumptionKg = const Value.absent(),
    this.runtimeMinutes = const Value.absent(),
    this.burningMinutes = const Value.absent(),
    this.ignitionCount = const Value.absent(),
    this.minutesOff = const Value.absent(),
    this.minutesIgnition = const Value.absent(),
    this.minutesStarting = const Value.absent(),
    this.minutesRunning = const Value.absent(),
    this.minutesCleaning = const Value.absent(),
    this.minutesBurnOff = const Value.absent(),
    this.readingCount = const Value.absent(),
  });
  DailyStatisticsCompanion.insert({
    this.id = const Value.absent(),
    required String stoveId,
    required DateTime date,
    required double avgRoomTemperature,
    required double minRoomTemperature,
    required double maxRoomTemperature,
    required double avgTargetTemperature,
    required int avgFlameTemperature,
    required double pelletConsumptionKg,
    required int runtimeMinutes,
    required int burningMinutes,
    required int ignitionCount,
    required int minutesOff,
    required int minutesIgnition,
    required int minutesStarting,
    required int minutesRunning,
    required int minutesCleaning,
    required int minutesBurnOff,
    required int readingCount,
  }) : stoveId = Value(stoveId),
       date = Value(date),
       avgRoomTemperature = Value(avgRoomTemperature),
       minRoomTemperature = Value(minRoomTemperature),
       maxRoomTemperature = Value(maxRoomTemperature),
       avgTargetTemperature = Value(avgTargetTemperature),
       avgFlameTemperature = Value(avgFlameTemperature),
       pelletConsumptionKg = Value(pelletConsumptionKg),
       runtimeMinutes = Value(runtimeMinutes),
       burningMinutes = Value(burningMinutes),
       ignitionCount = Value(ignitionCount),
       minutesOff = Value(minutesOff),
       minutesIgnition = Value(minutesIgnition),
       minutesStarting = Value(minutesStarting),
       minutesRunning = Value(minutesRunning),
       minutesCleaning = Value(minutesCleaning),
       minutesBurnOff = Value(minutesBurnOff),
       readingCount = Value(readingCount);
  static Insertable<DailyStatistic> custom({
    Expression<int>? id,
    Expression<String>? stoveId,
    Expression<DateTime>? date,
    Expression<double>? avgRoomTemperature,
    Expression<double>? minRoomTemperature,
    Expression<double>? maxRoomTemperature,
    Expression<double>? avgTargetTemperature,
    Expression<int>? avgFlameTemperature,
    Expression<double>? pelletConsumptionKg,
    Expression<int>? runtimeMinutes,
    Expression<int>? burningMinutes,
    Expression<int>? ignitionCount,
    Expression<int>? minutesOff,
    Expression<int>? minutesIgnition,
    Expression<int>? minutesStarting,
    Expression<int>? minutesRunning,
    Expression<int>? minutesCleaning,
    Expression<int>? minutesBurnOff,
    Expression<int>? readingCount,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (stoveId != null) 'stove_id': stoveId,
      if (date != null) 'date': date,
      if (avgRoomTemperature != null)
        'avg_room_temperature': avgRoomTemperature,
      if (minRoomTemperature != null)
        'min_room_temperature': minRoomTemperature,
      if (maxRoomTemperature != null)
        'max_room_temperature': maxRoomTemperature,
      if (avgTargetTemperature != null)
        'avg_target_temperature': avgTargetTemperature,
      if (avgFlameTemperature != null)
        'avg_flame_temperature': avgFlameTemperature,
      if (pelletConsumptionKg != null)
        'pellet_consumption_kg': pelletConsumptionKg,
      if (runtimeMinutes != null) 'runtime_minutes': runtimeMinutes,
      if (burningMinutes != null) 'burning_minutes': burningMinutes,
      if (ignitionCount != null) 'ignition_count': ignitionCount,
      if (minutesOff != null) 'minutes_off': minutesOff,
      if (minutesIgnition != null) 'minutes_ignition': minutesIgnition,
      if (minutesStarting != null) 'minutes_starting': minutesStarting,
      if (minutesRunning != null) 'minutes_running': minutesRunning,
      if (minutesCleaning != null) 'minutes_cleaning': minutesCleaning,
      if (minutesBurnOff != null) 'minutes_burn_off': minutesBurnOff,
      if (readingCount != null) 'reading_count': readingCount,
    });
  }

  DailyStatisticsCompanion copyWith({
    Value<int>? id,
    Value<String>? stoveId,
    Value<DateTime>? date,
    Value<double>? avgRoomTemperature,
    Value<double>? minRoomTemperature,
    Value<double>? maxRoomTemperature,
    Value<double>? avgTargetTemperature,
    Value<int>? avgFlameTemperature,
    Value<double>? pelletConsumptionKg,
    Value<int>? runtimeMinutes,
    Value<int>? burningMinutes,
    Value<int>? ignitionCount,
    Value<int>? minutesOff,
    Value<int>? minutesIgnition,
    Value<int>? minutesStarting,
    Value<int>? minutesRunning,
    Value<int>? minutesCleaning,
    Value<int>? minutesBurnOff,
    Value<int>? readingCount,
  }) {
    return DailyStatisticsCompanion(
      id: id ?? this.id,
      stoveId: stoveId ?? this.stoveId,
      date: date ?? this.date,
      avgRoomTemperature: avgRoomTemperature ?? this.avgRoomTemperature,
      minRoomTemperature: minRoomTemperature ?? this.minRoomTemperature,
      maxRoomTemperature: maxRoomTemperature ?? this.maxRoomTemperature,
      avgTargetTemperature: avgTargetTemperature ?? this.avgTargetTemperature,
      avgFlameTemperature: avgFlameTemperature ?? this.avgFlameTemperature,
      pelletConsumptionKg: pelletConsumptionKg ?? this.pelletConsumptionKg,
      runtimeMinutes: runtimeMinutes ?? this.runtimeMinutes,
      burningMinutes: burningMinutes ?? this.burningMinutes,
      ignitionCount: ignitionCount ?? this.ignitionCount,
      minutesOff: minutesOff ?? this.minutesOff,
      minutesIgnition: minutesIgnition ?? this.minutesIgnition,
      minutesStarting: minutesStarting ?? this.minutesStarting,
      minutesRunning: minutesRunning ?? this.minutesRunning,
      minutesCleaning: minutesCleaning ?? this.minutesCleaning,
      minutesBurnOff: minutesBurnOff ?? this.minutesBurnOff,
      readingCount: readingCount ?? this.readingCount,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (stoveId.present) {
      map['stove_id'] = Variable<String>(stoveId.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (avgRoomTemperature.present) {
      map['avg_room_temperature'] = Variable<double>(avgRoomTemperature.value);
    }
    if (minRoomTemperature.present) {
      map['min_room_temperature'] = Variable<double>(minRoomTemperature.value);
    }
    if (maxRoomTemperature.present) {
      map['max_room_temperature'] = Variable<double>(maxRoomTemperature.value);
    }
    if (avgTargetTemperature.present) {
      map['avg_target_temperature'] = Variable<double>(
        avgTargetTemperature.value,
      );
    }
    if (avgFlameTemperature.present) {
      map['avg_flame_temperature'] = Variable<int>(avgFlameTemperature.value);
    }
    if (pelletConsumptionKg.present) {
      map['pellet_consumption_kg'] = Variable<double>(
        pelletConsumptionKg.value,
      );
    }
    if (runtimeMinutes.present) {
      map['runtime_minutes'] = Variable<int>(runtimeMinutes.value);
    }
    if (burningMinutes.present) {
      map['burning_minutes'] = Variable<int>(burningMinutes.value);
    }
    if (ignitionCount.present) {
      map['ignition_count'] = Variable<int>(ignitionCount.value);
    }
    if (minutesOff.present) {
      map['minutes_off'] = Variable<int>(minutesOff.value);
    }
    if (minutesIgnition.present) {
      map['minutes_ignition'] = Variable<int>(minutesIgnition.value);
    }
    if (minutesStarting.present) {
      map['minutes_starting'] = Variable<int>(minutesStarting.value);
    }
    if (minutesRunning.present) {
      map['minutes_running'] = Variable<int>(minutesRunning.value);
    }
    if (minutesCleaning.present) {
      map['minutes_cleaning'] = Variable<int>(minutesCleaning.value);
    }
    if (minutesBurnOff.present) {
      map['minutes_burn_off'] = Variable<int>(minutesBurnOff.value);
    }
    if (readingCount.present) {
      map['reading_count'] = Variable<int>(readingCount.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DailyStatisticsCompanion(')
          ..write('id: $id, ')
          ..write('stoveId: $stoveId, ')
          ..write('date: $date, ')
          ..write('avgRoomTemperature: $avgRoomTemperature, ')
          ..write('minRoomTemperature: $minRoomTemperature, ')
          ..write('maxRoomTemperature: $maxRoomTemperature, ')
          ..write('avgTargetTemperature: $avgTargetTemperature, ')
          ..write('avgFlameTemperature: $avgFlameTemperature, ')
          ..write('pelletConsumptionKg: $pelletConsumptionKg, ')
          ..write('runtimeMinutes: $runtimeMinutes, ')
          ..write('burningMinutes: $burningMinutes, ')
          ..write('ignitionCount: $ignitionCount, ')
          ..write('minutesOff: $minutesOff, ')
          ..write('minutesIgnition: $minutesIgnition, ')
          ..write('minutesStarting: $minutesStarting, ')
          ..write('minutesRunning: $minutesRunning, ')
          ..write('minutesCleaning: $minutesCleaning, ')
          ..write('minutesBurnOff: $minutesBurnOff, ')
          ..write('readingCount: $readingCount')
          ..write(')'))
        .toString();
  }
}

class $WeeklyStatisticsTable extends WeeklyStatistics
    with TableInfo<$WeeklyStatisticsTable, WeeklyStatistic> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WeeklyStatisticsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _stoveIdMeta = const VerificationMeta(
    'stoveId',
  );
  @override
  late final GeneratedColumn<String> stoveId = GeneratedColumn<String>(
    'stove_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _weekStartMeta = const VerificationMeta(
    'weekStart',
  );
  @override
  late final GeneratedColumn<DateTime> weekStart = GeneratedColumn<DateTime>(
    'week_start',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _weekNumberMeta = const VerificationMeta(
    'weekNumber',
  );
  @override
  late final GeneratedColumn<int> weekNumber = GeneratedColumn<int>(
    'week_number',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _yearMeta = const VerificationMeta('year');
  @override
  late final GeneratedColumn<int> year = GeneratedColumn<int>(
    'year',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _avgRoomTemperatureMeta =
      const VerificationMeta('avgRoomTemperature');
  @override
  late final GeneratedColumn<double> avgRoomTemperature =
      GeneratedColumn<double>(
        'avg_room_temperature',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _minRoomTemperatureMeta =
      const VerificationMeta('minRoomTemperature');
  @override
  late final GeneratedColumn<double> minRoomTemperature =
      GeneratedColumn<double>(
        'min_room_temperature',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _maxRoomTemperatureMeta =
      const VerificationMeta('maxRoomTemperature');
  @override
  late final GeneratedColumn<double> maxRoomTemperature =
      GeneratedColumn<double>(
        'max_room_temperature',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _avgTargetTemperatureMeta =
      const VerificationMeta('avgTargetTemperature');
  @override
  late final GeneratedColumn<double> avgTargetTemperature =
      GeneratedColumn<double>(
        'avg_target_temperature',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _avgFlameTemperatureMeta =
      const VerificationMeta('avgFlameTemperature');
  @override
  late final GeneratedColumn<int> avgFlameTemperature = GeneratedColumn<int>(
    'avg_flame_temperature',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pelletConsumptionKgMeta =
      const VerificationMeta('pelletConsumptionKg');
  @override
  late final GeneratedColumn<double> pelletConsumptionKg =
      GeneratedColumn<double>(
        'pellet_consumption_kg',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _runtimeMinutesMeta = const VerificationMeta(
    'runtimeMinutes',
  );
  @override
  late final GeneratedColumn<int> runtimeMinutes = GeneratedColumn<int>(
    'runtime_minutes',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _burningMinutesMeta = const VerificationMeta(
    'burningMinutes',
  );
  @override
  late final GeneratedColumn<int> burningMinutes = GeneratedColumn<int>(
    'burning_minutes',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ignitionCountMeta = const VerificationMeta(
    'ignitionCount',
  );
  @override
  late final GeneratedColumn<int> ignitionCount = GeneratedColumn<int>(
    'ignition_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minutesOffMeta = const VerificationMeta(
    'minutesOff',
  );
  @override
  late final GeneratedColumn<int> minutesOff = GeneratedColumn<int>(
    'minutes_off',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minutesIgnitionMeta = const VerificationMeta(
    'minutesIgnition',
  );
  @override
  late final GeneratedColumn<int> minutesIgnition = GeneratedColumn<int>(
    'minutes_ignition',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minutesStartingMeta = const VerificationMeta(
    'minutesStarting',
  );
  @override
  late final GeneratedColumn<int> minutesStarting = GeneratedColumn<int>(
    'minutes_starting',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minutesRunningMeta = const VerificationMeta(
    'minutesRunning',
  );
  @override
  late final GeneratedColumn<int> minutesRunning = GeneratedColumn<int>(
    'minutes_running',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minutesCleaningMeta = const VerificationMeta(
    'minutesCleaning',
  );
  @override
  late final GeneratedColumn<int> minutesCleaning = GeneratedColumn<int>(
    'minutes_cleaning',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minutesBurnOffMeta = const VerificationMeta(
    'minutesBurnOff',
  );
  @override
  late final GeneratedColumn<int> minutesBurnOff = GeneratedColumn<int>(
    'minutes_burn_off',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dayCountMeta = const VerificationMeta(
    'dayCount',
  );
  @override
  late final GeneratedColumn<int> dayCount = GeneratedColumn<int>(
    'day_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    stoveId,
    weekStart,
    weekNumber,
    year,
    avgRoomTemperature,
    minRoomTemperature,
    maxRoomTemperature,
    avgTargetTemperature,
    avgFlameTemperature,
    pelletConsumptionKg,
    runtimeMinutes,
    burningMinutes,
    ignitionCount,
    minutesOff,
    minutesIgnition,
    minutesStarting,
    minutesRunning,
    minutesCleaning,
    minutesBurnOff,
    dayCount,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'weekly_statistics';
  @override
  VerificationContext validateIntegrity(
    Insertable<WeeklyStatistic> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('stove_id')) {
      context.handle(
        _stoveIdMeta,
        stoveId.isAcceptableOrUnknown(data['stove_id']!, _stoveIdMeta),
      );
    } else if (isInserting) {
      context.missing(_stoveIdMeta);
    }
    if (data.containsKey('week_start')) {
      context.handle(
        _weekStartMeta,
        weekStart.isAcceptableOrUnknown(data['week_start']!, _weekStartMeta),
      );
    } else if (isInserting) {
      context.missing(_weekStartMeta);
    }
    if (data.containsKey('week_number')) {
      context.handle(
        _weekNumberMeta,
        weekNumber.isAcceptableOrUnknown(data['week_number']!, _weekNumberMeta),
      );
    } else if (isInserting) {
      context.missing(_weekNumberMeta);
    }
    if (data.containsKey('year')) {
      context.handle(
        _yearMeta,
        year.isAcceptableOrUnknown(data['year']!, _yearMeta),
      );
    } else if (isInserting) {
      context.missing(_yearMeta);
    }
    if (data.containsKey('avg_room_temperature')) {
      context.handle(
        _avgRoomTemperatureMeta,
        avgRoomTemperature.isAcceptableOrUnknown(
          data['avg_room_temperature']!,
          _avgRoomTemperatureMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_avgRoomTemperatureMeta);
    }
    if (data.containsKey('min_room_temperature')) {
      context.handle(
        _minRoomTemperatureMeta,
        minRoomTemperature.isAcceptableOrUnknown(
          data['min_room_temperature']!,
          _minRoomTemperatureMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_minRoomTemperatureMeta);
    }
    if (data.containsKey('max_room_temperature')) {
      context.handle(
        _maxRoomTemperatureMeta,
        maxRoomTemperature.isAcceptableOrUnknown(
          data['max_room_temperature']!,
          _maxRoomTemperatureMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_maxRoomTemperatureMeta);
    }
    if (data.containsKey('avg_target_temperature')) {
      context.handle(
        _avgTargetTemperatureMeta,
        avgTargetTemperature.isAcceptableOrUnknown(
          data['avg_target_temperature']!,
          _avgTargetTemperatureMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_avgTargetTemperatureMeta);
    }
    if (data.containsKey('avg_flame_temperature')) {
      context.handle(
        _avgFlameTemperatureMeta,
        avgFlameTemperature.isAcceptableOrUnknown(
          data['avg_flame_temperature']!,
          _avgFlameTemperatureMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_avgFlameTemperatureMeta);
    }
    if (data.containsKey('pellet_consumption_kg')) {
      context.handle(
        _pelletConsumptionKgMeta,
        pelletConsumptionKg.isAcceptableOrUnknown(
          data['pellet_consumption_kg']!,
          _pelletConsumptionKgMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_pelletConsumptionKgMeta);
    }
    if (data.containsKey('runtime_minutes')) {
      context.handle(
        _runtimeMinutesMeta,
        runtimeMinutes.isAcceptableOrUnknown(
          data['runtime_minutes']!,
          _runtimeMinutesMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_runtimeMinutesMeta);
    }
    if (data.containsKey('burning_minutes')) {
      context.handle(
        _burningMinutesMeta,
        burningMinutes.isAcceptableOrUnknown(
          data['burning_minutes']!,
          _burningMinutesMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_burningMinutesMeta);
    }
    if (data.containsKey('ignition_count')) {
      context.handle(
        _ignitionCountMeta,
        ignitionCount.isAcceptableOrUnknown(
          data['ignition_count']!,
          _ignitionCountMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_ignitionCountMeta);
    }
    if (data.containsKey('minutes_off')) {
      context.handle(
        _minutesOffMeta,
        minutesOff.isAcceptableOrUnknown(data['minutes_off']!, _minutesOffMeta),
      );
    } else if (isInserting) {
      context.missing(_minutesOffMeta);
    }
    if (data.containsKey('minutes_ignition')) {
      context.handle(
        _minutesIgnitionMeta,
        minutesIgnition.isAcceptableOrUnknown(
          data['minutes_ignition']!,
          _minutesIgnitionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_minutesIgnitionMeta);
    }
    if (data.containsKey('minutes_starting')) {
      context.handle(
        _minutesStartingMeta,
        minutesStarting.isAcceptableOrUnknown(
          data['minutes_starting']!,
          _minutesStartingMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_minutesStartingMeta);
    }
    if (data.containsKey('minutes_running')) {
      context.handle(
        _minutesRunningMeta,
        minutesRunning.isAcceptableOrUnknown(
          data['minutes_running']!,
          _minutesRunningMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_minutesRunningMeta);
    }
    if (data.containsKey('minutes_cleaning')) {
      context.handle(
        _minutesCleaningMeta,
        minutesCleaning.isAcceptableOrUnknown(
          data['minutes_cleaning']!,
          _minutesCleaningMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_minutesCleaningMeta);
    }
    if (data.containsKey('minutes_burn_off')) {
      context.handle(
        _minutesBurnOffMeta,
        minutesBurnOff.isAcceptableOrUnknown(
          data['minutes_burn_off']!,
          _minutesBurnOffMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_minutesBurnOffMeta);
    }
    if (data.containsKey('day_count')) {
      context.handle(
        _dayCountMeta,
        dayCount.isAcceptableOrUnknown(data['day_count']!, _dayCountMeta),
      );
    } else if (isInserting) {
      context.missing(_dayCountMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WeeklyStatistic map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WeeklyStatistic(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      stoveId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}stove_id'],
      )!,
      weekStart: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}week_start'],
      )!,
      weekNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}week_number'],
      )!,
      year: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}year'],
      )!,
      avgRoomTemperature: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}avg_room_temperature'],
      )!,
      minRoomTemperature: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}min_room_temperature'],
      )!,
      maxRoomTemperature: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}max_room_temperature'],
      )!,
      avgTargetTemperature: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}avg_target_temperature'],
      )!,
      avgFlameTemperature: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}avg_flame_temperature'],
      )!,
      pelletConsumptionKg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}pellet_consumption_kg'],
      )!,
      runtimeMinutes: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}runtime_minutes'],
      )!,
      burningMinutes: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}burning_minutes'],
      )!,
      ignitionCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}ignition_count'],
      )!,
      minutesOff: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}minutes_off'],
      )!,
      minutesIgnition: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}minutes_ignition'],
      )!,
      minutesStarting: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}minutes_starting'],
      )!,
      minutesRunning: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}minutes_running'],
      )!,
      minutesCleaning: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}minutes_cleaning'],
      )!,
      minutesBurnOff: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}minutes_burn_off'],
      )!,
      dayCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}day_count'],
      )!,
    );
  }

  @override
  $WeeklyStatisticsTable createAlias(String alias) {
    return $WeeklyStatisticsTable(attachedDatabase, alias);
  }
}

class WeeklyStatistic extends DataClass implements Insertable<WeeklyStatistic> {
  final int id;
  final String stoveId;
  final DateTime weekStart;
  final int weekNumber;
  final int year;
  final double avgRoomTemperature;
  final double minRoomTemperature;
  final double maxRoomTemperature;
  final double avgTargetTemperature;
  final int avgFlameTemperature;
  final double pelletConsumptionKg;
  final int runtimeMinutes;
  final int burningMinutes;
  final int ignitionCount;
  final int minutesOff;
  final int minutesIgnition;
  final int minutesStarting;
  final int minutesRunning;
  final int minutesCleaning;
  final int minutesBurnOff;
  final int dayCount;
  const WeeklyStatistic({
    required this.id,
    required this.stoveId,
    required this.weekStart,
    required this.weekNumber,
    required this.year,
    required this.avgRoomTemperature,
    required this.minRoomTemperature,
    required this.maxRoomTemperature,
    required this.avgTargetTemperature,
    required this.avgFlameTemperature,
    required this.pelletConsumptionKg,
    required this.runtimeMinutes,
    required this.burningMinutes,
    required this.ignitionCount,
    required this.minutesOff,
    required this.minutesIgnition,
    required this.minutesStarting,
    required this.minutesRunning,
    required this.minutesCleaning,
    required this.minutesBurnOff,
    required this.dayCount,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['stove_id'] = Variable<String>(stoveId);
    map['week_start'] = Variable<DateTime>(weekStart);
    map['week_number'] = Variable<int>(weekNumber);
    map['year'] = Variable<int>(year);
    map['avg_room_temperature'] = Variable<double>(avgRoomTemperature);
    map['min_room_temperature'] = Variable<double>(minRoomTemperature);
    map['max_room_temperature'] = Variable<double>(maxRoomTemperature);
    map['avg_target_temperature'] = Variable<double>(avgTargetTemperature);
    map['avg_flame_temperature'] = Variable<int>(avgFlameTemperature);
    map['pellet_consumption_kg'] = Variable<double>(pelletConsumptionKg);
    map['runtime_minutes'] = Variable<int>(runtimeMinutes);
    map['burning_minutes'] = Variable<int>(burningMinutes);
    map['ignition_count'] = Variable<int>(ignitionCount);
    map['minutes_off'] = Variable<int>(minutesOff);
    map['minutes_ignition'] = Variable<int>(minutesIgnition);
    map['minutes_starting'] = Variable<int>(minutesStarting);
    map['minutes_running'] = Variable<int>(minutesRunning);
    map['minutes_cleaning'] = Variable<int>(minutesCleaning);
    map['minutes_burn_off'] = Variable<int>(minutesBurnOff);
    map['day_count'] = Variable<int>(dayCount);
    return map;
  }

  WeeklyStatisticsCompanion toCompanion(bool nullToAbsent) {
    return WeeklyStatisticsCompanion(
      id: Value(id),
      stoveId: Value(stoveId),
      weekStart: Value(weekStart),
      weekNumber: Value(weekNumber),
      year: Value(year),
      avgRoomTemperature: Value(avgRoomTemperature),
      minRoomTemperature: Value(minRoomTemperature),
      maxRoomTemperature: Value(maxRoomTemperature),
      avgTargetTemperature: Value(avgTargetTemperature),
      avgFlameTemperature: Value(avgFlameTemperature),
      pelletConsumptionKg: Value(pelletConsumptionKg),
      runtimeMinutes: Value(runtimeMinutes),
      burningMinutes: Value(burningMinutes),
      ignitionCount: Value(ignitionCount),
      minutesOff: Value(minutesOff),
      minutesIgnition: Value(minutesIgnition),
      minutesStarting: Value(minutesStarting),
      minutesRunning: Value(minutesRunning),
      minutesCleaning: Value(minutesCleaning),
      minutesBurnOff: Value(minutesBurnOff),
      dayCount: Value(dayCount),
    );
  }

  factory WeeklyStatistic.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WeeklyStatistic(
      id: serializer.fromJson<int>(json['id']),
      stoveId: serializer.fromJson<String>(json['stoveId']),
      weekStart: serializer.fromJson<DateTime>(json['weekStart']),
      weekNumber: serializer.fromJson<int>(json['weekNumber']),
      year: serializer.fromJson<int>(json['year']),
      avgRoomTemperature: serializer.fromJson<double>(
        json['avgRoomTemperature'],
      ),
      minRoomTemperature: serializer.fromJson<double>(
        json['minRoomTemperature'],
      ),
      maxRoomTemperature: serializer.fromJson<double>(
        json['maxRoomTemperature'],
      ),
      avgTargetTemperature: serializer.fromJson<double>(
        json['avgTargetTemperature'],
      ),
      avgFlameTemperature: serializer.fromJson<int>(
        json['avgFlameTemperature'],
      ),
      pelletConsumptionKg: serializer.fromJson<double>(
        json['pelletConsumptionKg'],
      ),
      runtimeMinutes: serializer.fromJson<int>(json['runtimeMinutes']),
      burningMinutes: serializer.fromJson<int>(json['burningMinutes']),
      ignitionCount: serializer.fromJson<int>(json['ignitionCount']),
      minutesOff: serializer.fromJson<int>(json['minutesOff']),
      minutesIgnition: serializer.fromJson<int>(json['minutesIgnition']),
      minutesStarting: serializer.fromJson<int>(json['minutesStarting']),
      minutesRunning: serializer.fromJson<int>(json['minutesRunning']),
      minutesCleaning: serializer.fromJson<int>(json['minutesCleaning']),
      minutesBurnOff: serializer.fromJson<int>(json['minutesBurnOff']),
      dayCount: serializer.fromJson<int>(json['dayCount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'stoveId': serializer.toJson<String>(stoveId),
      'weekStart': serializer.toJson<DateTime>(weekStart),
      'weekNumber': serializer.toJson<int>(weekNumber),
      'year': serializer.toJson<int>(year),
      'avgRoomTemperature': serializer.toJson<double>(avgRoomTemperature),
      'minRoomTemperature': serializer.toJson<double>(minRoomTemperature),
      'maxRoomTemperature': serializer.toJson<double>(maxRoomTemperature),
      'avgTargetTemperature': serializer.toJson<double>(avgTargetTemperature),
      'avgFlameTemperature': serializer.toJson<int>(avgFlameTemperature),
      'pelletConsumptionKg': serializer.toJson<double>(pelletConsumptionKg),
      'runtimeMinutes': serializer.toJson<int>(runtimeMinutes),
      'burningMinutes': serializer.toJson<int>(burningMinutes),
      'ignitionCount': serializer.toJson<int>(ignitionCount),
      'minutesOff': serializer.toJson<int>(minutesOff),
      'minutesIgnition': serializer.toJson<int>(minutesIgnition),
      'minutesStarting': serializer.toJson<int>(minutesStarting),
      'minutesRunning': serializer.toJson<int>(minutesRunning),
      'minutesCleaning': serializer.toJson<int>(minutesCleaning),
      'minutesBurnOff': serializer.toJson<int>(minutesBurnOff),
      'dayCount': serializer.toJson<int>(dayCount),
    };
  }

  WeeklyStatistic copyWith({
    int? id,
    String? stoveId,
    DateTime? weekStart,
    int? weekNumber,
    int? year,
    double? avgRoomTemperature,
    double? minRoomTemperature,
    double? maxRoomTemperature,
    double? avgTargetTemperature,
    int? avgFlameTemperature,
    double? pelletConsumptionKg,
    int? runtimeMinutes,
    int? burningMinutes,
    int? ignitionCount,
    int? minutesOff,
    int? minutesIgnition,
    int? minutesStarting,
    int? minutesRunning,
    int? minutesCleaning,
    int? minutesBurnOff,
    int? dayCount,
  }) => WeeklyStatistic(
    id: id ?? this.id,
    stoveId: stoveId ?? this.stoveId,
    weekStart: weekStart ?? this.weekStart,
    weekNumber: weekNumber ?? this.weekNumber,
    year: year ?? this.year,
    avgRoomTemperature: avgRoomTemperature ?? this.avgRoomTemperature,
    minRoomTemperature: minRoomTemperature ?? this.minRoomTemperature,
    maxRoomTemperature: maxRoomTemperature ?? this.maxRoomTemperature,
    avgTargetTemperature: avgTargetTemperature ?? this.avgTargetTemperature,
    avgFlameTemperature: avgFlameTemperature ?? this.avgFlameTemperature,
    pelletConsumptionKg: pelletConsumptionKg ?? this.pelletConsumptionKg,
    runtimeMinutes: runtimeMinutes ?? this.runtimeMinutes,
    burningMinutes: burningMinutes ?? this.burningMinutes,
    ignitionCount: ignitionCount ?? this.ignitionCount,
    minutesOff: minutesOff ?? this.minutesOff,
    minutesIgnition: minutesIgnition ?? this.minutesIgnition,
    minutesStarting: minutesStarting ?? this.minutesStarting,
    minutesRunning: minutesRunning ?? this.minutesRunning,
    minutesCleaning: minutesCleaning ?? this.minutesCleaning,
    minutesBurnOff: minutesBurnOff ?? this.minutesBurnOff,
    dayCount: dayCount ?? this.dayCount,
  );
  WeeklyStatistic copyWithCompanion(WeeklyStatisticsCompanion data) {
    return WeeklyStatistic(
      id: data.id.present ? data.id.value : this.id,
      stoveId: data.stoveId.present ? data.stoveId.value : this.stoveId,
      weekStart: data.weekStart.present ? data.weekStart.value : this.weekStart,
      weekNumber: data.weekNumber.present
          ? data.weekNumber.value
          : this.weekNumber,
      year: data.year.present ? data.year.value : this.year,
      avgRoomTemperature: data.avgRoomTemperature.present
          ? data.avgRoomTemperature.value
          : this.avgRoomTemperature,
      minRoomTemperature: data.minRoomTemperature.present
          ? data.minRoomTemperature.value
          : this.minRoomTemperature,
      maxRoomTemperature: data.maxRoomTemperature.present
          ? data.maxRoomTemperature.value
          : this.maxRoomTemperature,
      avgTargetTemperature: data.avgTargetTemperature.present
          ? data.avgTargetTemperature.value
          : this.avgTargetTemperature,
      avgFlameTemperature: data.avgFlameTemperature.present
          ? data.avgFlameTemperature.value
          : this.avgFlameTemperature,
      pelletConsumptionKg: data.pelletConsumptionKg.present
          ? data.pelletConsumptionKg.value
          : this.pelletConsumptionKg,
      runtimeMinutes: data.runtimeMinutes.present
          ? data.runtimeMinutes.value
          : this.runtimeMinutes,
      burningMinutes: data.burningMinutes.present
          ? data.burningMinutes.value
          : this.burningMinutes,
      ignitionCount: data.ignitionCount.present
          ? data.ignitionCount.value
          : this.ignitionCount,
      minutesOff: data.minutesOff.present
          ? data.minutesOff.value
          : this.minutesOff,
      minutesIgnition: data.minutesIgnition.present
          ? data.minutesIgnition.value
          : this.minutesIgnition,
      minutesStarting: data.minutesStarting.present
          ? data.minutesStarting.value
          : this.minutesStarting,
      minutesRunning: data.minutesRunning.present
          ? data.minutesRunning.value
          : this.minutesRunning,
      minutesCleaning: data.minutesCleaning.present
          ? data.minutesCleaning.value
          : this.minutesCleaning,
      minutesBurnOff: data.minutesBurnOff.present
          ? data.minutesBurnOff.value
          : this.minutesBurnOff,
      dayCount: data.dayCount.present ? data.dayCount.value : this.dayCount,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WeeklyStatistic(')
          ..write('id: $id, ')
          ..write('stoveId: $stoveId, ')
          ..write('weekStart: $weekStart, ')
          ..write('weekNumber: $weekNumber, ')
          ..write('year: $year, ')
          ..write('avgRoomTemperature: $avgRoomTemperature, ')
          ..write('minRoomTemperature: $minRoomTemperature, ')
          ..write('maxRoomTemperature: $maxRoomTemperature, ')
          ..write('avgTargetTemperature: $avgTargetTemperature, ')
          ..write('avgFlameTemperature: $avgFlameTemperature, ')
          ..write('pelletConsumptionKg: $pelletConsumptionKg, ')
          ..write('runtimeMinutes: $runtimeMinutes, ')
          ..write('burningMinutes: $burningMinutes, ')
          ..write('ignitionCount: $ignitionCount, ')
          ..write('minutesOff: $minutesOff, ')
          ..write('minutesIgnition: $minutesIgnition, ')
          ..write('minutesStarting: $minutesStarting, ')
          ..write('minutesRunning: $minutesRunning, ')
          ..write('minutesCleaning: $minutesCleaning, ')
          ..write('minutesBurnOff: $minutesBurnOff, ')
          ..write('dayCount: $dayCount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    stoveId,
    weekStart,
    weekNumber,
    year,
    avgRoomTemperature,
    minRoomTemperature,
    maxRoomTemperature,
    avgTargetTemperature,
    avgFlameTemperature,
    pelletConsumptionKg,
    runtimeMinutes,
    burningMinutes,
    ignitionCount,
    minutesOff,
    minutesIgnition,
    minutesStarting,
    minutesRunning,
    minutesCleaning,
    minutesBurnOff,
    dayCount,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WeeklyStatistic &&
          other.id == this.id &&
          other.stoveId == this.stoveId &&
          other.weekStart == this.weekStart &&
          other.weekNumber == this.weekNumber &&
          other.year == this.year &&
          other.avgRoomTemperature == this.avgRoomTemperature &&
          other.minRoomTemperature == this.minRoomTemperature &&
          other.maxRoomTemperature == this.maxRoomTemperature &&
          other.avgTargetTemperature == this.avgTargetTemperature &&
          other.avgFlameTemperature == this.avgFlameTemperature &&
          other.pelletConsumptionKg == this.pelletConsumptionKg &&
          other.runtimeMinutes == this.runtimeMinutes &&
          other.burningMinutes == this.burningMinutes &&
          other.ignitionCount == this.ignitionCount &&
          other.minutesOff == this.minutesOff &&
          other.minutesIgnition == this.minutesIgnition &&
          other.minutesStarting == this.minutesStarting &&
          other.minutesRunning == this.minutesRunning &&
          other.minutesCleaning == this.minutesCleaning &&
          other.minutesBurnOff == this.minutesBurnOff &&
          other.dayCount == this.dayCount);
}

class WeeklyStatisticsCompanion extends UpdateCompanion<WeeklyStatistic> {
  final Value<int> id;
  final Value<String> stoveId;
  final Value<DateTime> weekStart;
  final Value<int> weekNumber;
  final Value<int> year;
  final Value<double> avgRoomTemperature;
  final Value<double> minRoomTemperature;
  final Value<double> maxRoomTemperature;
  final Value<double> avgTargetTemperature;
  final Value<int> avgFlameTemperature;
  final Value<double> pelletConsumptionKg;
  final Value<int> runtimeMinutes;
  final Value<int> burningMinutes;
  final Value<int> ignitionCount;
  final Value<int> minutesOff;
  final Value<int> minutesIgnition;
  final Value<int> minutesStarting;
  final Value<int> minutesRunning;
  final Value<int> minutesCleaning;
  final Value<int> minutesBurnOff;
  final Value<int> dayCount;
  const WeeklyStatisticsCompanion({
    this.id = const Value.absent(),
    this.stoveId = const Value.absent(),
    this.weekStart = const Value.absent(),
    this.weekNumber = const Value.absent(),
    this.year = const Value.absent(),
    this.avgRoomTemperature = const Value.absent(),
    this.minRoomTemperature = const Value.absent(),
    this.maxRoomTemperature = const Value.absent(),
    this.avgTargetTemperature = const Value.absent(),
    this.avgFlameTemperature = const Value.absent(),
    this.pelletConsumptionKg = const Value.absent(),
    this.runtimeMinutes = const Value.absent(),
    this.burningMinutes = const Value.absent(),
    this.ignitionCount = const Value.absent(),
    this.minutesOff = const Value.absent(),
    this.minutesIgnition = const Value.absent(),
    this.minutesStarting = const Value.absent(),
    this.minutesRunning = const Value.absent(),
    this.minutesCleaning = const Value.absent(),
    this.minutesBurnOff = const Value.absent(),
    this.dayCount = const Value.absent(),
  });
  WeeklyStatisticsCompanion.insert({
    this.id = const Value.absent(),
    required String stoveId,
    required DateTime weekStart,
    required int weekNumber,
    required int year,
    required double avgRoomTemperature,
    required double minRoomTemperature,
    required double maxRoomTemperature,
    required double avgTargetTemperature,
    required int avgFlameTemperature,
    required double pelletConsumptionKg,
    required int runtimeMinutes,
    required int burningMinutes,
    required int ignitionCount,
    required int minutesOff,
    required int minutesIgnition,
    required int minutesStarting,
    required int minutesRunning,
    required int minutesCleaning,
    required int minutesBurnOff,
    required int dayCount,
  }) : stoveId = Value(stoveId),
       weekStart = Value(weekStart),
       weekNumber = Value(weekNumber),
       year = Value(year),
       avgRoomTemperature = Value(avgRoomTemperature),
       minRoomTemperature = Value(minRoomTemperature),
       maxRoomTemperature = Value(maxRoomTemperature),
       avgTargetTemperature = Value(avgTargetTemperature),
       avgFlameTemperature = Value(avgFlameTemperature),
       pelletConsumptionKg = Value(pelletConsumptionKg),
       runtimeMinutes = Value(runtimeMinutes),
       burningMinutes = Value(burningMinutes),
       ignitionCount = Value(ignitionCount),
       minutesOff = Value(minutesOff),
       minutesIgnition = Value(minutesIgnition),
       minutesStarting = Value(minutesStarting),
       minutesRunning = Value(minutesRunning),
       minutesCleaning = Value(minutesCleaning),
       minutesBurnOff = Value(minutesBurnOff),
       dayCount = Value(dayCount);
  static Insertable<WeeklyStatistic> custom({
    Expression<int>? id,
    Expression<String>? stoveId,
    Expression<DateTime>? weekStart,
    Expression<int>? weekNumber,
    Expression<int>? year,
    Expression<double>? avgRoomTemperature,
    Expression<double>? minRoomTemperature,
    Expression<double>? maxRoomTemperature,
    Expression<double>? avgTargetTemperature,
    Expression<int>? avgFlameTemperature,
    Expression<double>? pelletConsumptionKg,
    Expression<int>? runtimeMinutes,
    Expression<int>? burningMinutes,
    Expression<int>? ignitionCount,
    Expression<int>? minutesOff,
    Expression<int>? minutesIgnition,
    Expression<int>? minutesStarting,
    Expression<int>? minutesRunning,
    Expression<int>? minutesCleaning,
    Expression<int>? minutesBurnOff,
    Expression<int>? dayCount,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (stoveId != null) 'stove_id': stoveId,
      if (weekStart != null) 'week_start': weekStart,
      if (weekNumber != null) 'week_number': weekNumber,
      if (year != null) 'year': year,
      if (avgRoomTemperature != null)
        'avg_room_temperature': avgRoomTemperature,
      if (minRoomTemperature != null)
        'min_room_temperature': minRoomTemperature,
      if (maxRoomTemperature != null)
        'max_room_temperature': maxRoomTemperature,
      if (avgTargetTemperature != null)
        'avg_target_temperature': avgTargetTemperature,
      if (avgFlameTemperature != null)
        'avg_flame_temperature': avgFlameTemperature,
      if (pelletConsumptionKg != null)
        'pellet_consumption_kg': pelletConsumptionKg,
      if (runtimeMinutes != null) 'runtime_minutes': runtimeMinutes,
      if (burningMinutes != null) 'burning_minutes': burningMinutes,
      if (ignitionCount != null) 'ignition_count': ignitionCount,
      if (minutesOff != null) 'minutes_off': minutesOff,
      if (minutesIgnition != null) 'minutes_ignition': minutesIgnition,
      if (minutesStarting != null) 'minutes_starting': minutesStarting,
      if (minutesRunning != null) 'minutes_running': minutesRunning,
      if (minutesCleaning != null) 'minutes_cleaning': minutesCleaning,
      if (minutesBurnOff != null) 'minutes_burn_off': minutesBurnOff,
      if (dayCount != null) 'day_count': dayCount,
    });
  }

  WeeklyStatisticsCompanion copyWith({
    Value<int>? id,
    Value<String>? stoveId,
    Value<DateTime>? weekStart,
    Value<int>? weekNumber,
    Value<int>? year,
    Value<double>? avgRoomTemperature,
    Value<double>? minRoomTemperature,
    Value<double>? maxRoomTemperature,
    Value<double>? avgTargetTemperature,
    Value<int>? avgFlameTemperature,
    Value<double>? pelletConsumptionKg,
    Value<int>? runtimeMinutes,
    Value<int>? burningMinutes,
    Value<int>? ignitionCount,
    Value<int>? minutesOff,
    Value<int>? minutesIgnition,
    Value<int>? minutesStarting,
    Value<int>? minutesRunning,
    Value<int>? minutesCleaning,
    Value<int>? minutesBurnOff,
    Value<int>? dayCount,
  }) {
    return WeeklyStatisticsCompanion(
      id: id ?? this.id,
      stoveId: stoveId ?? this.stoveId,
      weekStart: weekStart ?? this.weekStart,
      weekNumber: weekNumber ?? this.weekNumber,
      year: year ?? this.year,
      avgRoomTemperature: avgRoomTemperature ?? this.avgRoomTemperature,
      minRoomTemperature: minRoomTemperature ?? this.minRoomTemperature,
      maxRoomTemperature: maxRoomTemperature ?? this.maxRoomTemperature,
      avgTargetTemperature: avgTargetTemperature ?? this.avgTargetTemperature,
      avgFlameTemperature: avgFlameTemperature ?? this.avgFlameTemperature,
      pelletConsumptionKg: pelletConsumptionKg ?? this.pelletConsumptionKg,
      runtimeMinutes: runtimeMinutes ?? this.runtimeMinutes,
      burningMinutes: burningMinutes ?? this.burningMinutes,
      ignitionCount: ignitionCount ?? this.ignitionCount,
      minutesOff: minutesOff ?? this.minutesOff,
      minutesIgnition: minutesIgnition ?? this.minutesIgnition,
      minutesStarting: minutesStarting ?? this.minutesStarting,
      minutesRunning: minutesRunning ?? this.minutesRunning,
      minutesCleaning: minutesCleaning ?? this.minutesCleaning,
      minutesBurnOff: minutesBurnOff ?? this.minutesBurnOff,
      dayCount: dayCount ?? this.dayCount,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (stoveId.present) {
      map['stove_id'] = Variable<String>(stoveId.value);
    }
    if (weekStart.present) {
      map['week_start'] = Variable<DateTime>(weekStart.value);
    }
    if (weekNumber.present) {
      map['week_number'] = Variable<int>(weekNumber.value);
    }
    if (year.present) {
      map['year'] = Variable<int>(year.value);
    }
    if (avgRoomTemperature.present) {
      map['avg_room_temperature'] = Variable<double>(avgRoomTemperature.value);
    }
    if (minRoomTemperature.present) {
      map['min_room_temperature'] = Variable<double>(minRoomTemperature.value);
    }
    if (maxRoomTemperature.present) {
      map['max_room_temperature'] = Variable<double>(maxRoomTemperature.value);
    }
    if (avgTargetTemperature.present) {
      map['avg_target_temperature'] = Variable<double>(
        avgTargetTemperature.value,
      );
    }
    if (avgFlameTemperature.present) {
      map['avg_flame_temperature'] = Variable<int>(avgFlameTemperature.value);
    }
    if (pelletConsumptionKg.present) {
      map['pellet_consumption_kg'] = Variable<double>(
        pelletConsumptionKg.value,
      );
    }
    if (runtimeMinutes.present) {
      map['runtime_minutes'] = Variable<int>(runtimeMinutes.value);
    }
    if (burningMinutes.present) {
      map['burning_minutes'] = Variable<int>(burningMinutes.value);
    }
    if (ignitionCount.present) {
      map['ignition_count'] = Variable<int>(ignitionCount.value);
    }
    if (minutesOff.present) {
      map['minutes_off'] = Variable<int>(minutesOff.value);
    }
    if (minutesIgnition.present) {
      map['minutes_ignition'] = Variable<int>(minutesIgnition.value);
    }
    if (minutesStarting.present) {
      map['minutes_starting'] = Variable<int>(minutesStarting.value);
    }
    if (minutesRunning.present) {
      map['minutes_running'] = Variable<int>(minutesRunning.value);
    }
    if (minutesCleaning.present) {
      map['minutes_cleaning'] = Variable<int>(minutesCleaning.value);
    }
    if (minutesBurnOff.present) {
      map['minutes_burn_off'] = Variable<int>(minutesBurnOff.value);
    }
    if (dayCount.present) {
      map['day_count'] = Variable<int>(dayCount.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WeeklyStatisticsCompanion(')
          ..write('id: $id, ')
          ..write('stoveId: $stoveId, ')
          ..write('weekStart: $weekStart, ')
          ..write('weekNumber: $weekNumber, ')
          ..write('year: $year, ')
          ..write('avgRoomTemperature: $avgRoomTemperature, ')
          ..write('minRoomTemperature: $minRoomTemperature, ')
          ..write('maxRoomTemperature: $maxRoomTemperature, ')
          ..write('avgTargetTemperature: $avgTargetTemperature, ')
          ..write('avgFlameTemperature: $avgFlameTemperature, ')
          ..write('pelletConsumptionKg: $pelletConsumptionKg, ')
          ..write('runtimeMinutes: $runtimeMinutes, ')
          ..write('burningMinutes: $burningMinutes, ')
          ..write('ignitionCount: $ignitionCount, ')
          ..write('minutesOff: $minutesOff, ')
          ..write('minutesIgnition: $minutesIgnition, ')
          ..write('minutesStarting: $minutesStarting, ')
          ..write('minutesRunning: $minutesRunning, ')
          ..write('minutesCleaning: $minutesCleaning, ')
          ..write('minutesBurnOff: $minutesBurnOff, ')
          ..write('dayCount: $dayCount')
          ..write(')'))
        .toString();
  }
}

class $MonthlyStatisticsTable extends MonthlyStatistics
    with TableInfo<$MonthlyStatisticsTable, MonthlyStatistic> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MonthlyStatisticsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _stoveIdMeta = const VerificationMeta(
    'stoveId',
  );
  @override
  late final GeneratedColumn<String> stoveId = GeneratedColumn<String>(
    'stove_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _monthMeta = const VerificationMeta('month');
  @override
  late final GeneratedColumn<int> month = GeneratedColumn<int>(
    'month',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _yearMeta = const VerificationMeta('year');
  @override
  late final GeneratedColumn<int> year = GeneratedColumn<int>(
    'year',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _avgRoomTemperatureMeta =
      const VerificationMeta('avgRoomTemperature');
  @override
  late final GeneratedColumn<double> avgRoomTemperature =
      GeneratedColumn<double>(
        'avg_room_temperature',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _minRoomTemperatureMeta =
      const VerificationMeta('minRoomTemperature');
  @override
  late final GeneratedColumn<double> minRoomTemperature =
      GeneratedColumn<double>(
        'min_room_temperature',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _maxRoomTemperatureMeta =
      const VerificationMeta('maxRoomTemperature');
  @override
  late final GeneratedColumn<double> maxRoomTemperature =
      GeneratedColumn<double>(
        'max_room_temperature',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _avgTargetTemperatureMeta =
      const VerificationMeta('avgTargetTemperature');
  @override
  late final GeneratedColumn<double> avgTargetTemperature =
      GeneratedColumn<double>(
        'avg_target_temperature',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _avgFlameTemperatureMeta =
      const VerificationMeta('avgFlameTemperature');
  @override
  late final GeneratedColumn<int> avgFlameTemperature = GeneratedColumn<int>(
    'avg_flame_temperature',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pelletConsumptionKgMeta =
      const VerificationMeta('pelletConsumptionKg');
  @override
  late final GeneratedColumn<double> pelletConsumptionKg =
      GeneratedColumn<double>(
        'pellet_consumption_kg',
        aliasedName,
        false,
        type: DriftSqlType.double,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _runtimeMinutesMeta = const VerificationMeta(
    'runtimeMinutes',
  );
  @override
  late final GeneratedColumn<int> runtimeMinutes = GeneratedColumn<int>(
    'runtime_minutes',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _burningMinutesMeta = const VerificationMeta(
    'burningMinutes',
  );
  @override
  late final GeneratedColumn<int> burningMinutes = GeneratedColumn<int>(
    'burning_minutes',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ignitionCountMeta = const VerificationMeta(
    'ignitionCount',
  );
  @override
  late final GeneratedColumn<int> ignitionCount = GeneratedColumn<int>(
    'ignition_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minutesOffMeta = const VerificationMeta(
    'minutesOff',
  );
  @override
  late final GeneratedColumn<int> minutesOff = GeneratedColumn<int>(
    'minutes_off',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minutesIgnitionMeta = const VerificationMeta(
    'minutesIgnition',
  );
  @override
  late final GeneratedColumn<int> minutesIgnition = GeneratedColumn<int>(
    'minutes_ignition',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minutesStartingMeta = const VerificationMeta(
    'minutesStarting',
  );
  @override
  late final GeneratedColumn<int> minutesStarting = GeneratedColumn<int>(
    'minutes_starting',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minutesRunningMeta = const VerificationMeta(
    'minutesRunning',
  );
  @override
  late final GeneratedColumn<int> minutesRunning = GeneratedColumn<int>(
    'minutes_running',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minutesCleaningMeta = const VerificationMeta(
    'minutesCleaning',
  );
  @override
  late final GeneratedColumn<int> minutesCleaning = GeneratedColumn<int>(
    'minutes_cleaning',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minutesBurnOffMeta = const VerificationMeta(
    'minutesBurnOff',
  );
  @override
  late final GeneratedColumn<int> minutesBurnOff = GeneratedColumn<int>(
    'minutes_burn_off',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dayCountMeta = const VerificationMeta(
    'dayCount',
  );
  @override
  late final GeneratedColumn<int> dayCount = GeneratedColumn<int>(
    'day_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    stoveId,
    month,
    year,
    avgRoomTemperature,
    minRoomTemperature,
    maxRoomTemperature,
    avgTargetTemperature,
    avgFlameTemperature,
    pelletConsumptionKg,
    runtimeMinutes,
    burningMinutes,
    ignitionCount,
    minutesOff,
    minutesIgnition,
    minutesStarting,
    minutesRunning,
    minutesCleaning,
    minutesBurnOff,
    dayCount,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'monthly_statistics';
  @override
  VerificationContext validateIntegrity(
    Insertable<MonthlyStatistic> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('stove_id')) {
      context.handle(
        _stoveIdMeta,
        stoveId.isAcceptableOrUnknown(data['stove_id']!, _stoveIdMeta),
      );
    } else if (isInserting) {
      context.missing(_stoveIdMeta);
    }
    if (data.containsKey('month')) {
      context.handle(
        _monthMeta,
        month.isAcceptableOrUnknown(data['month']!, _monthMeta),
      );
    } else if (isInserting) {
      context.missing(_monthMeta);
    }
    if (data.containsKey('year')) {
      context.handle(
        _yearMeta,
        year.isAcceptableOrUnknown(data['year']!, _yearMeta),
      );
    } else if (isInserting) {
      context.missing(_yearMeta);
    }
    if (data.containsKey('avg_room_temperature')) {
      context.handle(
        _avgRoomTemperatureMeta,
        avgRoomTemperature.isAcceptableOrUnknown(
          data['avg_room_temperature']!,
          _avgRoomTemperatureMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_avgRoomTemperatureMeta);
    }
    if (data.containsKey('min_room_temperature')) {
      context.handle(
        _minRoomTemperatureMeta,
        minRoomTemperature.isAcceptableOrUnknown(
          data['min_room_temperature']!,
          _minRoomTemperatureMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_minRoomTemperatureMeta);
    }
    if (data.containsKey('max_room_temperature')) {
      context.handle(
        _maxRoomTemperatureMeta,
        maxRoomTemperature.isAcceptableOrUnknown(
          data['max_room_temperature']!,
          _maxRoomTemperatureMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_maxRoomTemperatureMeta);
    }
    if (data.containsKey('avg_target_temperature')) {
      context.handle(
        _avgTargetTemperatureMeta,
        avgTargetTemperature.isAcceptableOrUnknown(
          data['avg_target_temperature']!,
          _avgTargetTemperatureMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_avgTargetTemperatureMeta);
    }
    if (data.containsKey('avg_flame_temperature')) {
      context.handle(
        _avgFlameTemperatureMeta,
        avgFlameTemperature.isAcceptableOrUnknown(
          data['avg_flame_temperature']!,
          _avgFlameTemperatureMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_avgFlameTemperatureMeta);
    }
    if (data.containsKey('pellet_consumption_kg')) {
      context.handle(
        _pelletConsumptionKgMeta,
        pelletConsumptionKg.isAcceptableOrUnknown(
          data['pellet_consumption_kg']!,
          _pelletConsumptionKgMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_pelletConsumptionKgMeta);
    }
    if (data.containsKey('runtime_minutes')) {
      context.handle(
        _runtimeMinutesMeta,
        runtimeMinutes.isAcceptableOrUnknown(
          data['runtime_minutes']!,
          _runtimeMinutesMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_runtimeMinutesMeta);
    }
    if (data.containsKey('burning_minutes')) {
      context.handle(
        _burningMinutesMeta,
        burningMinutes.isAcceptableOrUnknown(
          data['burning_minutes']!,
          _burningMinutesMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_burningMinutesMeta);
    }
    if (data.containsKey('ignition_count')) {
      context.handle(
        _ignitionCountMeta,
        ignitionCount.isAcceptableOrUnknown(
          data['ignition_count']!,
          _ignitionCountMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_ignitionCountMeta);
    }
    if (data.containsKey('minutes_off')) {
      context.handle(
        _minutesOffMeta,
        minutesOff.isAcceptableOrUnknown(data['minutes_off']!, _minutesOffMeta),
      );
    } else if (isInserting) {
      context.missing(_minutesOffMeta);
    }
    if (data.containsKey('minutes_ignition')) {
      context.handle(
        _minutesIgnitionMeta,
        minutesIgnition.isAcceptableOrUnknown(
          data['minutes_ignition']!,
          _minutesIgnitionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_minutesIgnitionMeta);
    }
    if (data.containsKey('minutes_starting')) {
      context.handle(
        _minutesStartingMeta,
        minutesStarting.isAcceptableOrUnknown(
          data['minutes_starting']!,
          _minutesStartingMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_minutesStartingMeta);
    }
    if (data.containsKey('minutes_running')) {
      context.handle(
        _minutesRunningMeta,
        minutesRunning.isAcceptableOrUnknown(
          data['minutes_running']!,
          _minutesRunningMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_minutesRunningMeta);
    }
    if (data.containsKey('minutes_cleaning')) {
      context.handle(
        _minutesCleaningMeta,
        minutesCleaning.isAcceptableOrUnknown(
          data['minutes_cleaning']!,
          _minutesCleaningMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_minutesCleaningMeta);
    }
    if (data.containsKey('minutes_burn_off')) {
      context.handle(
        _minutesBurnOffMeta,
        minutesBurnOff.isAcceptableOrUnknown(
          data['minutes_burn_off']!,
          _minutesBurnOffMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_minutesBurnOffMeta);
    }
    if (data.containsKey('day_count')) {
      context.handle(
        _dayCountMeta,
        dayCount.isAcceptableOrUnknown(data['day_count']!, _dayCountMeta),
      );
    } else if (isInserting) {
      context.missing(_dayCountMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MonthlyStatistic map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MonthlyStatistic(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      stoveId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}stove_id'],
      )!,
      month: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}month'],
      )!,
      year: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}year'],
      )!,
      avgRoomTemperature: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}avg_room_temperature'],
      )!,
      minRoomTemperature: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}min_room_temperature'],
      )!,
      maxRoomTemperature: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}max_room_temperature'],
      )!,
      avgTargetTemperature: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}avg_target_temperature'],
      )!,
      avgFlameTemperature: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}avg_flame_temperature'],
      )!,
      pelletConsumptionKg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}pellet_consumption_kg'],
      )!,
      runtimeMinutes: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}runtime_minutes'],
      )!,
      burningMinutes: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}burning_minutes'],
      )!,
      ignitionCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}ignition_count'],
      )!,
      minutesOff: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}minutes_off'],
      )!,
      minutesIgnition: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}minutes_ignition'],
      )!,
      minutesStarting: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}minutes_starting'],
      )!,
      minutesRunning: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}minutes_running'],
      )!,
      minutesCleaning: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}minutes_cleaning'],
      )!,
      minutesBurnOff: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}minutes_burn_off'],
      )!,
      dayCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}day_count'],
      )!,
    );
  }

  @override
  $MonthlyStatisticsTable createAlias(String alias) {
    return $MonthlyStatisticsTable(attachedDatabase, alias);
  }
}

class MonthlyStatistic extends DataClass
    implements Insertable<MonthlyStatistic> {
  final int id;
  final String stoveId;
  final int month;
  final int year;
  final double avgRoomTemperature;
  final double minRoomTemperature;
  final double maxRoomTemperature;
  final double avgTargetTemperature;
  final int avgFlameTemperature;
  final double pelletConsumptionKg;
  final int runtimeMinutes;
  final int burningMinutes;
  final int ignitionCount;
  final int minutesOff;
  final int minutesIgnition;
  final int minutesStarting;
  final int minutesRunning;
  final int minutesCleaning;
  final int minutesBurnOff;
  final int dayCount;
  const MonthlyStatistic({
    required this.id,
    required this.stoveId,
    required this.month,
    required this.year,
    required this.avgRoomTemperature,
    required this.minRoomTemperature,
    required this.maxRoomTemperature,
    required this.avgTargetTemperature,
    required this.avgFlameTemperature,
    required this.pelletConsumptionKg,
    required this.runtimeMinutes,
    required this.burningMinutes,
    required this.ignitionCount,
    required this.minutesOff,
    required this.minutesIgnition,
    required this.minutesStarting,
    required this.minutesRunning,
    required this.minutesCleaning,
    required this.minutesBurnOff,
    required this.dayCount,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['stove_id'] = Variable<String>(stoveId);
    map['month'] = Variable<int>(month);
    map['year'] = Variable<int>(year);
    map['avg_room_temperature'] = Variable<double>(avgRoomTemperature);
    map['min_room_temperature'] = Variable<double>(minRoomTemperature);
    map['max_room_temperature'] = Variable<double>(maxRoomTemperature);
    map['avg_target_temperature'] = Variable<double>(avgTargetTemperature);
    map['avg_flame_temperature'] = Variable<int>(avgFlameTemperature);
    map['pellet_consumption_kg'] = Variable<double>(pelletConsumptionKg);
    map['runtime_minutes'] = Variable<int>(runtimeMinutes);
    map['burning_minutes'] = Variable<int>(burningMinutes);
    map['ignition_count'] = Variable<int>(ignitionCount);
    map['minutes_off'] = Variable<int>(minutesOff);
    map['minutes_ignition'] = Variable<int>(minutesIgnition);
    map['minutes_starting'] = Variable<int>(minutesStarting);
    map['minutes_running'] = Variable<int>(minutesRunning);
    map['minutes_cleaning'] = Variable<int>(minutesCleaning);
    map['minutes_burn_off'] = Variable<int>(minutesBurnOff);
    map['day_count'] = Variable<int>(dayCount);
    return map;
  }

  MonthlyStatisticsCompanion toCompanion(bool nullToAbsent) {
    return MonthlyStatisticsCompanion(
      id: Value(id),
      stoveId: Value(stoveId),
      month: Value(month),
      year: Value(year),
      avgRoomTemperature: Value(avgRoomTemperature),
      minRoomTemperature: Value(minRoomTemperature),
      maxRoomTemperature: Value(maxRoomTemperature),
      avgTargetTemperature: Value(avgTargetTemperature),
      avgFlameTemperature: Value(avgFlameTemperature),
      pelletConsumptionKg: Value(pelletConsumptionKg),
      runtimeMinutes: Value(runtimeMinutes),
      burningMinutes: Value(burningMinutes),
      ignitionCount: Value(ignitionCount),
      minutesOff: Value(minutesOff),
      minutesIgnition: Value(minutesIgnition),
      minutesStarting: Value(minutesStarting),
      minutesRunning: Value(minutesRunning),
      minutesCleaning: Value(minutesCleaning),
      minutesBurnOff: Value(minutesBurnOff),
      dayCount: Value(dayCount),
    );
  }

  factory MonthlyStatistic.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MonthlyStatistic(
      id: serializer.fromJson<int>(json['id']),
      stoveId: serializer.fromJson<String>(json['stoveId']),
      month: serializer.fromJson<int>(json['month']),
      year: serializer.fromJson<int>(json['year']),
      avgRoomTemperature: serializer.fromJson<double>(
        json['avgRoomTemperature'],
      ),
      minRoomTemperature: serializer.fromJson<double>(
        json['minRoomTemperature'],
      ),
      maxRoomTemperature: serializer.fromJson<double>(
        json['maxRoomTemperature'],
      ),
      avgTargetTemperature: serializer.fromJson<double>(
        json['avgTargetTemperature'],
      ),
      avgFlameTemperature: serializer.fromJson<int>(
        json['avgFlameTemperature'],
      ),
      pelletConsumptionKg: serializer.fromJson<double>(
        json['pelletConsumptionKg'],
      ),
      runtimeMinutes: serializer.fromJson<int>(json['runtimeMinutes']),
      burningMinutes: serializer.fromJson<int>(json['burningMinutes']),
      ignitionCount: serializer.fromJson<int>(json['ignitionCount']),
      minutesOff: serializer.fromJson<int>(json['minutesOff']),
      minutesIgnition: serializer.fromJson<int>(json['minutesIgnition']),
      minutesStarting: serializer.fromJson<int>(json['minutesStarting']),
      minutesRunning: serializer.fromJson<int>(json['minutesRunning']),
      minutesCleaning: serializer.fromJson<int>(json['minutesCleaning']),
      minutesBurnOff: serializer.fromJson<int>(json['minutesBurnOff']),
      dayCount: serializer.fromJson<int>(json['dayCount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'stoveId': serializer.toJson<String>(stoveId),
      'month': serializer.toJson<int>(month),
      'year': serializer.toJson<int>(year),
      'avgRoomTemperature': serializer.toJson<double>(avgRoomTemperature),
      'minRoomTemperature': serializer.toJson<double>(minRoomTemperature),
      'maxRoomTemperature': serializer.toJson<double>(maxRoomTemperature),
      'avgTargetTemperature': serializer.toJson<double>(avgTargetTemperature),
      'avgFlameTemperature': serializer.toJson<int>(avgFlameTemperature),
      'pelletConsumptionKg': serializer.toJson<double>(pelletConsumptionKg),
      'runtimeMinutes': serializer.toJson<int>(runtimeMinutes),
      'burningMinutes': serializer.toJson<int>(burningMinutes),
      'ignitionCount': serializer.toJson<int>(ignitionCount),
      'minutesOff': serializer.toJson<int>(minutesOff),
      'minutesIgnition': serializer.toJson<int>(minutesIgnition),
      'minutesStarting': serializer.toJson<int>(minutesStarting),
      'minutesRunning': serializer.toJson<int>(minutesRunning),
      'minutesCleaning': serializer.toJson<int>(minutesCleaning),
      'minutesBurnOff': serializer.toJson<int>(minutesBurnOff),
      'dayCount': serializer.toJson<int>(dayCount),
    };
  }

  MonthlyStatistic copyWith({
    int? id,
    String? stoveId,
    int? month,
    int? year,
    double? avgRoomTemperature,
    double? minRoomTemperature,
    double? maxRoomTemperature,
    double? avgTargetTemperature,
    int? avgFlameTemperature,
    double? pelletConsumptionKg,
    int? runtimeMinutes,
    int? burningMinutes,
    int? ignitionCount,
    int? minutesOff,
    int? minutesIgnition,
    int? minutesStarting,
    int? minutesRunning,
    int? minutesCleaning,
    int? minutesBurnOff,
    int? dayCount,
  }) => MonthlyStatistic(
    id: id ?? this.id,
    stoveId: stoveId ?? this.stoveId,
    month: month ?? this.month,
    year: year ?? this.year,
    avgRoomTemperature: avgRoomTemperature ?? this.avgRoomTemperature,
    minRoomTemperature: minRoomTemperature ?? this.minRoomTemperature,
    maxRoomTemperature: maxRoomTemperature ?? this.maxRoomTemperature,
    avgTargetTemperature: avgTargetTemperature ?? this.avgTargetTemperature,
    avgFlameTemperature: avgFlameTemperature ?? this.avgFlameTemperature,
    pelletConsumptionKg: pelletConsumptionKg ?? this.pelletConsumptionKg,
    runtimeMinutes: runtimeMinutes ?? this.runtimeMinutes,
    burningMinutes: burningMinutes ?? this.burningMinutes,
    ignitionCount: ignitionCount ?? this.ignitionCount,
    minutesOff: minutesOff ?? this.minutesOff,
    minutesIgnition: minutesIgnition ?? this.minutesIgnition,
    minutesStarting: minutesStarting ?? this.minutesStarting,
    minutesRunning: minutesRunning ?? this.minutesRunning,
    minutesCleaning: minutesCleaning ?? this.minutesCleaning,
    minutesBurnOff: minutesBurnOff ?? this.minutesBurnOff,
    dayCount: dayCount ?? this.dayCount,
  );
  MonthlyStatistic copyWithCompanion(MonthlyStatisticsCompanion data) {
    return MonthlyStatistic(
      id: data.id.present ? data.id.value : this.id,
      stoveId: data.stoveId.present ? data.stoveId.value : this.stoveId,
      month: data.month.present ? data.month.value : this.month,
      year: data.year.present ? data.year.value : this.year,
      avgRoomTemperature: data.avgRoomTemperature.present
          ? data.avgRoomTemperature.value
          : this.avgRoomTemperature,
      minRoomTemperature: data.minRoomTemperature.present
          ? data.minRoomTemperature.value
          : this.minRoomTemperature,
      maxRoomTemperature: data.maxRoomTemperature.present
          ? data.maxRoomTemperature.value
          : this.maxRoomTemperature,
      avgTargetTemperature: data.avgTargetTemperature.present
          ? data.avgTargetTemperature.value
          : this.avgTargetTemperature,
      avgFlameTemperature: data.avgFlameTemperature.present
          ? data.avgFlameTemperature.value
          : this.avgFlameTemperature,
      pelletConsumptionKg: data.pelletConsumptionKg.present
          ? data.pelletConsumptionKg.value
          : this.pelletConsumptionKg,
      runtimeMinutes: data.runtimeMinutes.present
          ? data.runtimeMinutes.value
          : this.runtimeMinutes,
      burningMinutes: data.burningMinutes.present
          ? data.burningMinutes.value
          : this.burningMinutes,
      ignitionCount: data.ignitionCount.present
          ? data.ignitionCount.value
          : this.ignitionCount,
      minutesOff: data.minutesOff.present
          ? data.minutesOff.value
          : this.minutesOff,
      minutesIgnition: data.minutesIgnition.present
          ? data.minutesIgnition.value
          : this.minutesIgnition,
      minutesStarting: data.minutesStarting.present
          ? data.minutesStarting.value
          : this.minutesStarting,
      minutesRunning: data.minutesRunning.present
          ? data.minutesRunning.value
          : this.minutesRunning,
      minutesCleaning: data.minutesCleaning.present
          ? data.minutesCleaning.value
          : this.minutesCleaning,
      minutesBurnOff: data.minutesBurnOff.present
          ? data.minutesBurnOff.value
          : this.minutesBurnOff,
      dayCount: data.dayCount.present ? data.dayCount.value : this.dayCount,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MonthlyStatistic(')
          ..write('id: $id, ')
          ..write('stoveId: $stoveId, ')
          ..write('month: $month, ')
          ..write('year: $year, ')
          ..write('avgRoomTemperature: $avgRoomTemperature, ')
          ..write('minRoomTemperature: $minRoomTemperature, ')
          ..write('maxRoomTemperature: $maxRoomTemperature, ')
          ..write('avgTargetTemperature: $avgTargetTemperature, ')
          ..write('avgFlameTemperature: $avgFlameTemperature, ')
          ..write('pelletConsumptionKg: $pelletConsumptionKg, ')
          ..write('runtimeMinutes: $runtimeMinutes, ')
          ..write('burningMinutes: $burningMinutes, ')
          ..write('ignitionCount: $ignitionCount, ')
          ..write('minutesOff: $minutesOff, ')
          ..write('minutesIgnition: $minutesIgnition, ')
          ..write('minutesStarting: $minutesStarting, ')
          ..write('minutesRunning: $minutesRunning, ')
          ..write('minutesCleaning: $minutesCleaning, ')
          ..write('minutesBurnOff: $minutesBurnOff, ')
          ..write('dayCount: $dayCount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    stoveId,
    month,
    year,
    avgRoomTemperature,
    minRoomTemperature,
    maxRoomTemperature,
    avgTargetTemperature,
    avgFlameTemperature,
    pelletConsumptionKg,
    runtimeMinutes,
    burningMinutes,
    ignitionCount,
    minutesOff,
    minutesIgnition,
    minutesStarting,
    minutesRunning,
    minutesCleaning,
    minutesBurnOff,
    dayCount,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MonthlyStatistic &&
          other.id == this.id &&
          other.stoveId == this.stoveId &&
          other.month == this.month &&
          other.year == this.year &&
          other.avgRoomTemperature == this.avgRoomTemperature &&
          other.minRoomTemperature == this.minRoomTemperature &&
          other.maxRoomTemperature == this.maxRoomTemperature &&
          other.avgTargetTemperature == this.avgTargetTemperature &&
          other.avgFlameTemperature == this.avgFlameTemperature &&
          other.pelletConsumptionKg == this.pelletConsumptionKg &&
          other.runtimeMinutes == this.runtimeMinutes &&
          other.burningMinutes == this.burningMinutes &&
          other.ignitionCount == this.ignitionCount &&
          other.minutesOff == this.minutesOff &&
          other.minutesIgnition == this.minutesIgnition &&
          other.minutesStarting == this.minutesStarting &&
          other.minutesRunning == this.minutesRunning &&
          other.minutesCleaning == this.minutesCleaning &&
          other.minutesBurnOff == this.minutesBurnOff &&
          other.dayCount == this.dayCount);
}

class MonthlyStatisticsCompanion extends UpdateCompanion<MonthlyStatistic> {
  final Value<int> id;
  final Value<String> stoveId;
  final Value<int> month;
  final Value<int> year;
  final Value<double> avgRoomTemperature;
  final Value<double> minRoomTemperature;
  final Value<double> maxRoomTemperature;
  final Value<double> avgTargetTemperature;
  final Value<int> avgFlameTemperature;
  final Value<double> pelletConsumptionKg;
  final Value<int> runtimeMinutes;
  final Value<int> burningMinutes;
  final Value<int> ignitionCount;
  final Value<int> minutesOff;
  final Value<int> minutesIgnition;
  final Value<int> minutesStarting;
  final Value<int> minutesRunning;
  final Value<int> minutesCleaning;
  final Value<int> minutesBurnOff;
  final Value<int> dayCount;
  const MonthlyStatisticsCompanion({
    this.id = const Value.absent(),
    this.stoveId = const Value.absent(),
    this.month = const Value.absent(),
    this.year = const Value.absent(),
    this.avgRoomTemperature = const Value.absent(),
    this.minRoomTemperature = const Value.absent(),
    this.maxRoomTemperature = const Value.absent(),
    this.avgTargetTemperature = const Value.absent(),
    this.avgFlameTemperature = const Value.absent(),
    this.pelletConsumptionKg = const Value.absent(),
    this.runtimeMinutes = const Value.absent(),
    this.burningMinutes = const Value.absent(),
    this.ignitionCount = const Value.absent(),
    this.minutesOff = const Value.absent(),
    this.minutesIgnition = const Value.absent(),
    this.minutesStarting = const Value.absent(),
    this.minutesRunning = const Value.absent(),
    this.minutesCleaning = const Value.absent(),
    this.minutesBurnOff = const Value.absent(),
    this.dayCount = const Value.absent(),
  });
  MonthlyStatisticsCompanion.insert({
    this.id = const Value.absent(),
    required String stoveId,
    required int month,
    required int year,
    required double avgRoomTemperature,
    required double minRoomTemperature,
    required double maxRoomTemperature,
    required double avgTargetTemperature,
    required int avgFlameTemperature,
    required double pelletConsumptionKg,
    required int runtimeMinutes,
    required int burningMinutes,
    required int ignitionCount,
    required int minutesOff,
    required int minutesIgnition,
    required int minutesStarting,
    required int minutesRunning,
    required int minutesCleaning,
    required int minutesBurnOff,
    required int dayCount,
  }) : stoveId = Value(stoveId),
       month = Value(month),
       year = Value(year),
       avgRoomTemperature = Value(avgRoomTemperature),
       minRoomTemperature = Value(minRoomTemperature),
       maxRoomTemperature = Value(maxRoomTemperature),
       avgTargetTemperature = Value(avgTargetTemperature),
       avgFlameTemperature = Value(avgFlameTemperature),
       pelletConsumptionKg = Value(pelletConsumptionKg),
       runtimeMinutes = Value(runtimeMinutes),
       burningMinutes = Value(burningMinutes),
       ignitionCount = Value(ignitionCount),
       minutesOff = Value(minutesOff),
       minutesIgnition = Value(minutesIgnition),
       minutesStarting = Value(minutesStarting),
       minutesRunning = Value(minutesRunning),
       minutesCleaning = Value(minutesCleaning),
       minutesBurnOff = Value(minutesBurnOff),
       dayCount = Value(dayCount);
  static Insertable<MonthlyStatistic> custom({
    Expression<int>? id,
    Expression<String>? stoveId,
    Expression<int>? month,
    Expression<int>? year,
    Expression<double>? avgRoomTemperature,
    Expression<double>? minRoomTemperature,
    Expression<double>? maxRoomTemperature,
    Expression<double>? avgTargetTemperature,
    Expression<int>? avgFlameTemperature,
    Expression<double>? pelletConsumptionKg,
    Expression<int>? runtimeMinutes,
    Expression<int>? burningMinutes,
    Expression<int>? ignitionCount,
    Expression<int>? minutesOff,
    Expression<int>? minutesIgnition,
    Expression<int>? minutesStarting,
    Expression<int>? minutesRunning,
    Expression<int>? minutesCleaning,
    Expression<int>? minutesBurnOff,
    Expression<int>? dayCount,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (stoveId != null) 'stove_id': stoveId,
      if (month != null) 'month': month,
      if (year != null) 'year': year,
      if (avgRoomTemperature != null)
        'avg_room_temperature': avgRoomTemperature,
      if (minRoomTemperature != null)
        'min_room_temperature': minRoomTemperature,
      if (maxRoomTemperature != null)
        'max_room_temperature': maxRoomTemperature,
      if (avgTargetTemperature != null)
        'avg_target_temperature': avgTargetTemperature,
      if (avgFlameTemperature != null)
        'avg_flame_temperature': avgFlameTemperature,
      if (pelletConsumptionKg != null)
        'pellet_consumption_kg': pelletConsumptionKg,
      if (runtimeMinutes != null) 'runtime_minutes': runtimeMinutes,
      if (burningMinutes != null) 'burning_minutes': burningMinutes,
      if (ignitionCount != null) 'ignition_count': ignitionCount,
      if (minutesOff != null) 'minutes_off': minutesOff,
      if (minutesIgnition != null) 'minutes_ignition': minutesIgnition,
      if (minutesStarting != null) 'minutes_starting': minutesStarting,
      if (minutesRunning != null) 'minutes_running': minutesRunning,
      if (minutesCleaning != null) 'minutes_cleaning': minutesCleaning,
      if (minutesBurnOff != null) 'minutes_burn_off': minutesBurnOff,
      if (dayCount != null) 'day_count': dayCount,
    });
  }

  MonthlyStatisticsCompanion copyWith({
    Value<int>? id,
    Value<String>? stoveId,
    Value<int>? month,
    Value<int>? year,
    Value<double>? avgRoomTemperature,
    Value<double>? minRoomTemperature,
    Value<double>? maxRoomTemperature,
    Value<double>? avgTargetTemperature,
    Value<int>? avgFlameTemperature,
    Value<double>? pelletConsumptionKg,
    Value<int>? runtimeMinutes,
    Value<int>? burningMinutes,
    Value<int>? ignitionCount,
    Value<int>? minutesOff,
    Value<int>? minutesIgnition,
    Value<int>? minutesStarting,
    Value<int>? minutesRunning,
    Value<int>? minutesCleaning,
    Value<int>? minutesBurnOff,
    Value<int>? dayCount,
  }) {
    return MonthlyStatisticsCompanion(
      id: id ?? this.id,
      stoveId: stoveId ?? this.stoveId,
      month: month ?? this.month,
      year: year ?? this.year,
      avgRoomTemperature: avgRoomTemperature ?? this.avgRoomTemperature,
      minRoomTemperature: minRoomTemperature ?? this.minRoomTemperature,
      maxRoomTemperature: maxRoomTemperature ?? this.maxRoomTemperature,
      avgTargetTemperature: avgTargetTemperature ?? this.avgTargetTemperature,
      avgFlameTemperature: avgFlameTemperature ?? this.avgFlameTemperature,
      pelletConsumptionKg: pelletConsumptionKg ?? this.pelletConsumptionKg,
      runtimeMinutes: runtimeMinutes ?? this.runtimeMinutes,
      burningMinutes: burningMinutes ?? this.burningMinutes,
      ignitionCount: ignitionCount ?? this.ignitionCount,
      minutesOff: minutesOff ?? this.minutesOff,
      minutesIgnition: minutesIgnition ?? this.minutesIgnition,
      minutesStarting: minutesStarting ?? this.minutesStarting,
      minutesRunning: minutesRunning ?? this.minutesRunning,
      minutesCleaning: minutesCleaning ?? this.minutesCleaning,
      minutesBurnOff: minutesBurnOff ?? this.minutesBurnOff,
      dayCount: dayCount ?? this.dayCount,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (stoveId.present) {
      map['stove_id'] = Variable<String>(stoveId.value);
    }
    if (month.present) {
      map['month'] = Variable<int>(month.value);
    }
    if (year.present) {
      map['year'] = Variable<int>(year.value);
    }
    if (avgRoomTemperature.present) {
      map['avg_room_temperature'] = Variable<double>(avgRoomTemperature.value);
    }
    if (minRoomTemperature.present) {
      map['min_room_temperature'] = Variable<double>(minRoomTemperature.value);
    }
    if (maxRoomTemperature.present) {
      map['max_room_temperature'] = Variable<double>(maxRoomTemperature.value);
    }
    if (avgTargetTemperature.present) {
      map['avg_target_temperature'] = Variable<double>(
        avgTargetTemperature.value,
      );
    }
    if (avgFlameTemperature.present) {
      map['avg_flame_temperature'] = Variable<int>(avgFlameTemperature.value);
    }
    if (pelletConsumptionKg.present) {
      map['pellet_consumption_kg'] = Variable<double>(
        pelletConsumptionKg.value,
      );
    }
    if (runtimeMinutes.present) {
      map['runtime_minutes'] = Variable<int>(runtimeMinutes.value);
    }
    if (burningMinutes.present) {
      map['burning_minutes'] = Variable<int>(burningMinutes.value);
    }
    if (ignitionCount.present) {
      map['ignition_count'] = Variable<int>(ignitionCount.value);
    }
    if (minutesOff.present) {
      map['minutes_off'] = Variable<int>(minutesOff.value);
    }
    if (minutesIgnition.present) {
      map['minutes_ignition'] = Variable<int>(minutesIgnition.value);
    }
    if (minutesStarting.present) {
      map['minutes_starting'] = Variable<int>(minutesStarting.value);
    }
    if (minutesRunning.present) {
      map['minutes_running'] = Variable<int>(minutesRunning.value);
    }
    if (minutesCleaning.present) {
      map['minutes_cleaning'] = Variable<int>(minutesCleaning.value);
    }
    if (minutesBurnOff.present) {
      map['minutes_burn_off'] = Variable<int>(minutesBurnOff.value);
    }
    if (dayCount.present) {
      map['day_count'] = Variable<int>(dayCount.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MonthlyStatisticsCompanion(')
          ..write('id: $id, ')
          ..write('stoveId: $stoveId, ')
          ..write('month: $month, ')
          ..write('year: $year, ')
          ..write('avgRoomTemperature: $avgRoomTemperature, ')
          ..write('minRoomTemperature: $minRoomTemperature, ')
          ..write('maxRoomTemperature: $maxRoomTemperature, ')
          ..write('avgTargetTemperature: $avgTargetTemperature, ')
          ..write('avgFlameTemperature: $avgFlameTemperature, ')
          ..write('pelletConsumptionKg: $pelletConsumptionKg, ')
          ..write('runtimeMinutes: $runtimeMinutes, ')
          ..write('burningMinutes: $burningMinutes, ')
          ..write('ignitionCount: $ignitionCount, ')
          ..write('minutesOff: $minutesOff, ')
          ..write('minutesIgnition: $minutesIgnition, ')
          ..write('minutesStarting: $minutesStarting, ')
          ..write('minutesRunning: $minutesRunning, ')
          ..write('minutesCleaning: $minutesCleaning, ')
          ..write('minutesBurnOff: $minutesBurnOff, ')
          ..write('dayCount: $dayCount')
          ..write(')'))
        .toString();
  }
}

class $StateTransitionsTable extends StateTransitions
    with TableInfo<$StateTransitionsTable, StateTransition> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StateTransitionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _stoveIdMeta = const VerificationMeta(
    'stoveId',
  );
  @override
  late final GeneratedColumn<String> stoveId = GeneratedColumn<String>(
    'stove_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _timestampMeta = const VerificationMeta(
    'timestamp',
  );
  @override
  late final GeneratedColumn<DateTime> timestamp = GeneratedColumn<DateTime>(
    'timestamp',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fromStateMeta = const VerificationMeta(
    'fromState',
  );
  @override
  late final GeneratedColumn<int> fromState = GeneratedColumn<int>(
    'from_state',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _toStateMeta = const VerificationMeta(
    'toState',
  );
  @override
  late final GeneratedColumn<int> toState = GeneratedColumn<int>(
    'to_state',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _durationSecondsMeta = const VerificationMeta(
    'durationSeconds',
  );
  @override
  late final GeneratedColumn<int> durationSeconds = GeneratedColumn<int>(
    'duration_seconds',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    stoveId,
    timestamp,
    fromState,
    toState,
    durationSeconds,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'state_transitions';
  @override
  VerificationContext validateIntegrity(
    Insertable<StateTransition> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('stove_id')) {
      context.handle(
        _stoveIdMeta,
        stoveId.isAcceptableOrUnknown(data['stove_id']!, _stoveIdMeta),
      );
    } else if (isInserting) {
      context.missing(_stoveIdMeta);
    }
    if (data.containsKey('timestamp')) {
      context.handle(
        _timestampMeta,
        timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta),
      );
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('from_state')) {
      context.handle(
        _fromStateMeta,
        fromState.isAcceptableOrUnknown(data['from_state']!, _fromStateMeta),
      );
    }
    if (data.containsKey('to_state')) {
      context.handle(
        _toStateMeta,
        toState.isAcceptableOrUnknown(data['to_state']!, _toStateMeta),
      );
    } else if (isInserting) {
      context.missing(_toStateMeta);
    }
    if (data.containsKey('duration_seconds')) {
      context.handle(
        _durationSecondsMeta,
        durationSeconds.isAcceptableOrUnknown(
          data['duration_seconds']!,
          _durationSecondsMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StateTransition map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StateTransition(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      stoveId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}stove_id'],
      )!,
      timestamp: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}timestamp'],
      )!,
      fromState: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}from_state'],
      ),
      toState: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}to_state'],
      )!,
      durationSeconds: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}duration_seconds'],
      ),
    );
  }

  @override
  $StateTransitionsTable createAlias(String alias) {
    return $StateTransitionsTable(attachedDatabase, alias);
  }
}

class StateTransition extends DataClass implements Insertable<StateTransition> {
  final int id;
  final String stoveId;
  final DateTime timestamp;
  final int? fromState;
  final int toState;
  final int? durationSeconds;
  const StateTransition({
    required this.id,
    required this.stoveId,
    required this.timestamp,
    this.fromState,
    required this.toState,
    this.durationSeconds,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['stove_id'] = Variable<String>(stoveId);
    map['timestamp'] = Variable<DateTime>(timestamp);
    if (!nullToAbsent || fromState != null) {
      map['from_state'] = Variable<int>(fromState);
    }
    map['to_state'] = Variable<int>(toState);
    if (!nullToAbsent || durationSeconds != null) {
      map['duration_seconds'] = Variable<int>(durationSeconds);
    }
    return map;
  }

  StateTransitionsCompanion toCompanion(bool nullToAbsent) {
    return StateTransitionsCompanion(
      id: Value(id),
      stoveId: Value(stoveId),
      timestamp: Value(timestamp),
      fromState: fromState == null && nullToAbsent
          ? const Value.absent()
          : Value(fromState),
      toState: Value(toState),
      durationSeconds: durationSeconds == null && nullToAbsent
          ? const Value.absent()
          : Value(durationSeconds),
    );
  }

  factory StateTransition.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StateTransition(
      id: serializer.fromJson<int>(json['id']),
      stoveId: serializer.fromJson<String>(json['stoveId']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      fromState: serializer.fromJson<int?>(json['fromState']),
      toState: serializer.fromJson<int>(json['toState']),
      durationSeconds: serializer.fromJson<int?>(json['durationSeconds']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'stoveId': serializer.toJson<String>(stoveId),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'fromState': serializer.toJson<int?>(fromState),
      'toState': serializer.toJson<int>(toState),
      'durationSeconds': serializer.toJson<int?>(durationSeconds),
    };
  }

  StateTransition copyWith({
    int? id,
    String? stoveId,
    DateTime? timestamp,
    Value<int?> fromState = const Value.absent(),
    int? toState,
    Value<int?> durationSeconds = const Value.absent(),
  }) => StateTransition(
    id: id ?? this.id,
    stoveId: stoveId ?? this.stoveId,
    timestamp: timestamp ?? this.timestamp,
    fromState: fromState.present ? fromState.value : this.fromState,
    toState: toState ?? this.toState,
    durationSeconds: durationSeconds.present
        ? durationSeconds.value
        : this.durationSeconds,
  );
  StateTransition copyWithCompanion(StateTransitionsCompanion data) {
    return StateTransition(
      id: data.id.present ? data.id.value : this.id,
      stoveId: data.stoveId.present ? data.stoveId.value : this.stoveId,
      timestamp: data.timestamp.present ? data.timestamp.value : this.timestamp,
      fromState: data.fromState.present ? data.fromState.value : this.fromState,
      toState: data.toState.present ? data.toState.value : this.toState,
      durationSeconds: data.durationSeconds.present
          ? data.durationSeconds.value
          : this.durationSeconds,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StateTransition(')
          ..write('id: $id, ')
          ..write('stoveId: $stoveId, ')
          ..write('timestamp: $timestamp, ')
          ..write('fromState: $fromState, ')
          ..write('toState: $toState, ')
          ..write('durationSeconds: $durationSeconds')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, stoveId, timestamp, fromState, toState, durationSeconds);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StateTransition &&
          other.id == this.id &&
          other.stoveId == this.stoveId &&
          other.timestamp == this.timestamp &&
          other.fromState == this.fromState &&
          other.toState == this.toState &&
          other.durationSeconds == this.durationSeconds);
}

class StateTransitionsCompanion extends UpdateCompanion<StateTransition> {
  final Value<int> id;
  final Value<String> stoveId;
  final Value<DateTime> timestamp;
  final Value<int?> fromState;
  final Value<int> toState;
  final Value<int?> durationSeconds;
  const StateTransitionsCompanion({
    this.id = const Value.absent(),
    this.stoveId = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.fromState = const Value.absent(),
    this.toState = const Value.absent(),
    this.durationSeconds = const Value.absent(),
  });
  StateTransitionsCompanion.insert({
    this.id = const Value.absent(),
    required String stoveId,
    required DateTime timestamp,
    this.fromState = const Value.absent(),
    required int toState,
    this.durationSeconds = const Value.absent(),
  }) : stoveId = Value(stoveId),
       timestamp = Value(timestamp),
       toState = Value(toState);
  static Insertable<StateTransition> custom({
    Expression<int>? id,
    Expression<String>? stoveId,
    Expression<DateTime>? timestamp,
    Expression<int>? fromState,
    Expression<int>? toState,
    Expression<int>? durationSeconds,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (stoveId != null) 'stove_id': stoveId,
      if (timestamp != null) 'timestamp': timestamp,
      if (fromState != null) 'from_state': fromState,
      if (toState != null) 'to_state': toState,
      if (durationSeconds != null) 'duration_seconds': durationSeconds,
    });
  }

  StateTransitionsCompanion copyWith({
    Value<int>? id,
    Value<String>? stoveId,
    Value<DateTime>? timestamp,
    Value<int?>? fromState,
    Value<int>? toState,
    Value<int?>? durationSeconds,
  }) {
    return StateTransitionsCompanion(
      id: id ?? this.id,
      stoveId: stoveId ?? this.stoveId,
      timestamp: timestamp ?? this.timestamp,
      fromState: fromState ?? this.fromState,
      toState: toState ?? this.toState,
      durationSeconds: durationSeconds ?? this.durationSeconds,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (stoveId.present) {
      map['stove_id'] = Variable<String>(stoveId.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (fromState.present) {
      map['from_state'] = Variable<int>(fromState.value);
    }
    if (toState.present) {
      map['to_state'] = Variable<int>(toState.value);
    }
    if (durationSeconds.present) {
      map['duration_seconds'] = Variable<int>(durationSeconds.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StateTransitionsCompanion(')
          ..write('id: $id, ')
          ..write('stoveId: $stoveId, ')
          ..write('timestamp: $timestamp, ')
          ..write('fromState: $fromState, ')
          ..write('toState: $toState, ')
          ..write('durationSeconds: $durationSeconds')
          ..write(')'))
        .toString();
  }
}

class $CostSettingsTable extends CostSettings
    with TableInfo<$CostSettingsTable, CostSetting> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CostSettingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _stoveIdMeta = const VerificationMeta(
    'stoveId',
  );
  @override
  late final GeneratedColumn<String> stoveId = GeneratedColumn<String>(
    'stove_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pricePerKgMeta = const VerificationMeta(
    'pricePerKg',
  );
  @override
  late final GeneratedColumn<double> pricePerKg = GeneratedColumn<double>(
    'price_per_kg',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _currencyMeta = const VerificationMeta(
    'currency',
  );
  @override
  late final GeneratedColumn<String> currency = GeneratedColumn<String>(
    'currency',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('EUR'),
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    stoveId,
    pricePerKg,
    currency,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cost_settings';
  @override
  VerificationContext validateIntegrity(
    Insertable<CostSetting> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('stove_id')) {
      context.handle(
        _stoveIdMeta,
        stoveId.isAcceptableOrUnknown(data['stove_id']!, _stoveIdMeta),
      );
    } else if (isInserting) {
      context.missing(_stoveIdMeta);
    }
    if (data.containsKey('price_per_kg')) {
      context.handle(
        _pricePerKgMeta,
        pricePerKg.isAcceptableOrUnknown(
          data['price_per_kg']!,
          _pricePerKgMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_pricePerKgMeta);
    }
    if (data.containsKey('currency')) {
      context.handle(
        _currencyMeta,
        currency.isAcceptableOrUnknown(data['currency']!, _currencyMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CostSetting map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CostSetting(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      stoveId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}stove_id'],
      )!,
      pricePerKg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}price_per_kg'],
      )!,
      currency: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}currency'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $CostSettingsTable createAlias(String alias) {
    return $CostSettingsTable(attachedDatabase, alias);
  }
}

class CostSetting extends DataClass implements Insertable<CostSetting> {
  final int id;
  final String stoveId;
  final double pricePerKg;
  final String currency;
  final DateTime updatedAt;
  const CostSetting({
    required this.id,
    required this.stoveId,
    required this.pricePerKg,
    required this.currency,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['stove_id'] = Variable<String>(stoveId);
    map['price_per_kg'] = Variable<double>(pricePerKg);
    map['currency'] = Variable<String>(currency);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  CostSettingsCompanion toCompanion(bool nullToAbsent) {
    return CostSettingsCompanion(
      id: Value(id),
      stoveId: Value(stoveId),
      pricePerKg: Value(pricePerKg),
      currency: Value(currency),
      updatedAt: Value(updatedAt),
    );
  }

  factory CostSetting.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CostSetting(
      id: serializer.fromJson<int>(json['id']),
      stoveId: serializer.fromJson<String>(json['stoveId']),
      pricePerKg: serializer.fromJson<double>(json['pricePerKg']),
      currency: serializer.fromJson<String>(json['currency']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'stoveId': serializer.toJson<String>(stoveId),
      'pricePerKg': serializer.toJson<double>(pricePerKg),
      'currency': serializer.toJson<String>(currency),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  CostSetting copyWith({
    int? id,
    String? stoveId,
    double? pricePerKg,
    String? currency,
    DateTime? updatedAt,
  }) => CostSetting(
    id: id ?? this.id,
    stoveId: stoveId ?? this.stoveId,
    pricePerKg: pricePerKg ?? this.pricePerKg,
    currency: currency ?? this.currency,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  CostSetting copyWithCompanion(CostSettingsCompanion data) {
    return CostSetting(
      id: data.id.present ? data.id.value : this.id,
      stoveId: data.stoveId.present ? data.stoveId.value : this.stoveId,
      pricePerKg: data.pricePerKg.present
          ? data.pricePerKg.value
          : this.pricePerKg,
      currency: data.currency.present ? data.currency.value : this.currency,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CostSetting(')
          ..write('id: $id, ')
          ..write('stoveId: $stoveId, ')
          ..write('pricePerKg: $pricePerKg, ')
          ..write('currency: $currency, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, stoveId, pricePerKg, currency, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CostSetting &&
          other.id == this.id &&
          other.stoveId == this.stoveId &&
          other.pricePerKg == this.pricePerKg &&
          other.currency == this.currency &&
          other.updatedAt == this.updatedAt);
}

class CostSettingsCompanion extends UpdateCompanion<CostSetting> {
  final Value<int> id;
  final Value<String> stoveId;
  final Value<double> pricePerKg;
  final Value<String> currency;
  final Value<DateTime> updatedAt;
  const CostSettingsCompanion({
    this.id = const Value.absent(),
    this.stoveId = const Value.absent(),
    this.pricePerKg = const Value.absent(),
    this.currency = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  CostSettingsCompanion.insert({
    this.id = const Value.absent(),
    required String stoveId,
    required double pricePerKg,
    this.currency = const Value.absent(),
    required DateTime updatedAt,
  }) : stoveId = Value(stoveId),
       pricePerKg = Value(pricePerKg),
       updatedAt = Value(updatedAt);
  static Insertable<CostSetting> custom({
    Expression<int>? id,
    Expression<String>? stoveId,
    Expression<double>? pricePerKg,
    Expression<String>? currency,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (stoveId != null) 'stove_id': stoveId,
      if (pricePerKg != null) 'price_per_kg': pricePerKg,
      if (currency != null) 'currency': currency,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  CostSettingsCompanion copyWith({
    Value<int>? id,
    Value<String>? stoveId,
    Value<double>? pricePerKg,
    Value<String>? currency,
    Value<DateTime>? updatedAt,
  }) {
    return CostSettingsCompanion(
      id: id ?? this.id,
      stoveId: stoveId ?? this.stoveId,
      pricePerKg: pricePerKg ?? this.pricePerKg,
      currency: currency ?? this.currency,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (stoveId.present) {
      map['stove_id'] = Variable<String>(stoveId.value);
    }
    if (pricePerKg.present) {
      map['price_per_kg'] = Variable<double>(pricePerKg.value);
    }
    if (currency.present) {
      map['currency'] = Variable<String>(currency.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CostSettingsCompanion(')
          ..write('id: $id, ')
          ..write('stoveId: $stoveId, ')
          ..write('pricePerKg: $pricePerKg, ')
          ..write('currency: $currency, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $SensorReadingsTable sensorReadings = $SensorReadingsTable(this);
  late final $DailyStatisticsTable dailyStatistics = $DailyStatisticsTable(
    this,
  );
  late final $WeeklyStatisticsTable weeklyStatistics = $WeeklyStatisticsTable(
    this,
  );
  late final $MonthlyStatisticsTable monthlyStatistics =
      $MonthlyStatisticsTable(this);
  late final $StateTransitionsTable stateTransitions = $StateTransitionsTable(
    this,
  );
  late final $CostSettingsTable costSettings = $CostSettingsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    sensorReadings,
    dailyStatistics,
    weeklyStatistics,
    monthlyStatistics,
    stateTransitions,
    costSettings,
  ];
}

typedef $$SensorReadingsTableCreateCompanionBuilder =
    SensorReadingsCompanion Function({
      Value<int> id,
      required String stoveId,
      required DateTime timestamp,
      required double inputRoomTemperature,
      required int inputFlameTemperature,
      required double targetTemperature,
      required int outputDischargeMotor,
      required int outputIDFan,
      required int statusMainState,
      required int statusSubState,
      required int parameterRuntimePellets,
      required int parameterFeedRateTotal,
      required int parameterIgnitionCount,
      required bool statusFrostStarted,
      required bool hasError,
      required bool hasWarning,
    });
typedef $$SensorReadingsTableUpdateCompanionBuilder =
    SensorReadingsCompanion Function({
      Value<int> id,
      Value<String> stoveId,
      Value<DateTime> timestamp,
      Value<double> inputRoomTemperature,
      Value<int> inputFlameTemperature,
      Value<double> targetTemperature,
      Value<int> outputDischargeMotor,
      Value<int> outputIDFan,
      Value<int> statusMainState,
      Value<int> statusSubState,
      Value<int> parameterRuntimePellets,
      Value<int> parameterFeedRateTotal,
      Value<int> parameterIgnitionCount,
      Value<bool> statusFrostStarted,
      Value<bool> hasError,
      Value<bool> hasWarning,
    });

class $$SensorReadingsTableFilterComposer
    extends Composer<_$AppDatabase, $SensorReadingsTable> {
  $$SensorReadingsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get stoveId => $composableBuilder(
    column: $table.stoveId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get timestamp => $composableBuilder(
    column: $table.timestamp,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get inputRoomTemperature => $composableBuilder(
    column: $table.inputRoomTemperature,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get inputFlameTemperature => $composableBuilder(
    column: $table.inputFlameTemperature,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get targetTemperature => $composableBuilder(
    column: $table.targetTemperature,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get outputDischargeMotor => $composableBuilder(
    column: $table.outputDischargeMotor,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get outputIDFan => $composableBuilder(
    column: $table.outputIDFan,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get statusMainState => $composableBuilder(
    column: $table.statusMainState,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get statusSubState => $composableBuilder(
    column: $table.statusSubState,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get parameterRuntimePellets => $composableBuilder(
    column: $table.parameterRuntimePellets,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get parameterFeedRateTotal => $composableBuilder(
    column: $table.parameterFeedRateTotal,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get parameterIgnitionCount => $composableBuilder(
    column: $table.parameterIgnitionCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get statusFrostStarted => $composableBuilder(
    column: $table.statusFrostStarted,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get hasError => $composableBuilder(
    column: $table.hasError,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get hasWarning => $composableBuilder(
    column: $table.hasWarning,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SensorReadingsTableOrderingComposer
    extends Composer<_$AppDatabase, $SensorReadingsTable> {
  $$SensorReadingsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get stoveId => $composableBuilder(
    column: $table.stoveId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get timestamp => $composableBuilder(
    column: $table.timestamp,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get inputRoomTemperature => $composableBuilder(
    column: $table.inputRoomTemperature,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get inputFlameTemperature => $composableBuilder(
    column: $table.inputFlameTemperature,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get targetTemperature => $composableBuilder(
    column: $table.targetTemperature,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get outputDischargeMotor => $composableBuilder(
    column: $table.outputDischargeMotor,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get outputIDFan => $composableBuilder(
    column: $table.outputIDFan,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get statusMainState => $composableBuilder(
    column: $table.statusMainState,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get statusSubState => $composableBuilder(
    column: $table.statusSubState,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get parameterRuntimePellets => $composableBuilder(
    column: $table.parameterRuntimePellets,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get parameterFeedRateTotal => $composableBuilder(
    column: $table.parameterFeedRateTotal,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get parameterIgnitionCount => $composableBuilder(
    column: $table.parameterIgnitionCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get statusFrostStarted => $composableBuilder(
    column: $table.statusFrostStarted,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get hasError => $composableBuilder(
    column: $table.hasError,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get hasWarning => $composableBuilder(
    column: $table.hasWarning,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SensorReadingsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SensorReadingsTable> {
  $$SensorReadingsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get stoveId =>
      $composableBuilder(column: $table.stoveId, builder: (column) => column);

  GeneratedColumn<DateTime> get timestamp =>
      $composableBuilder(column: $table.timestamp, builder: (column) => column);

  GeneratedColumn<double> get inputRoomTemperature => $composableBuilder(
    column: $table.inputRoomTemperature,
    builder: (column) => column,
  );

  GeneratedColumn<int> get inputFlameTemperature => $composableBuilder(
    column: $table.inputFlameTemperature,
    builder: (column) => column,
  );

  GeneratedColumn<double> get targetTemperature => $composableBuilder(
    column: $table.targetTemperature,
    builder: (column) => column,
  );

  GeneratedColumn<int> get outputDischargeMotor => $composableBuilder(
    column: $table.outputDischargeMotor,
    builder: (column) => column,
  );

  GeneratedColumn<int> get outputIDFan => $composableBuilder(
    column: $table.outputIDFan,
    builder: (column) => column,
  );

  GeneratedColumn<int> get statusMainState => $composableBuilder(
    column: $table.statusMainState,
    builder: (column) => column,
  );

  GeneratedColumn<int> get statusSubState => $composableBuilder(
    column: $table.statusSubState,
    builder: (column) => column,
  );

  GeneratedColumn<int> get parameterRuntimePellets => $composableBuilder(
    column: $table.parameterRuntimePellets,
    builder: (column) => column,
  );

  GeneratedColumn<int> get parameterFeedRateTotal => $composableBuilder(
    column: $table.parameterFeedRateTotal,
    builder: (column) => column,
  );

  GeneratedColumn<int> get parameterIgnitionCount => $composableBuilder(
    column: $table.parameterIgnitionCount,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get statusFrostStarted => $composableBuilder(
    column: $table.statusFrostStarted,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get hasError =>
      $composableBuilder(column: $table.hasError, builder: (column) => column);

  GeneratedColumn<bool> get hasWarning => $composableBuilder(
    column: $table.hasWarning,
    builder: (column) => column,
  );
}

class $$SensorReadingsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SensorReadingsTable,
          SensorReading,
          $$SensorReadingsTableFilterComposer,
          $$SensorReadingsTableOrderingComposer,
          $$SensorReadingsTableAnnotationComposer,
          $$SensorReadingsTableCreateCompanionBuilder,
          $$SensorReadingsTableUpdateCompanionBuilder,
          (
            SensorReading,
            BaseReferences<_$AppDatabase, $SensorReadingsTable, SensorReading>,
          ),
          SensorReading,
          PrefetchHooks Function()
        > {
  $$SensorReadingsTableTableManager(
    _$AppDatabase db,
    $SensorReadingsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SensorReadingsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SensorReadingsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SensorReadingsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> stoveId = const Value.absent(),
                Value<DateTime> timestamp = const Value.absent(),
                Value<double> inputRoomTemperature = const Value.absent(),
                Value<int> inputFlameTemperature = const Value.absent(),
                Value<double> targetTemperature = const Value.absent(),
                Value<int> outputDischargeMotor = const Value.absent(),
                Value<int> outputIDFan = const Value.absent(),
                Value<int> statusMainState = const Value.absent(),
                Value<int> statusSubState = const Value.absent(),
                Value<int> parameterRuntimePellets = const Value.absent(),
                Value<int> parameterFeedRateTotal = const Value.absent(),
                Value<int> parameterIgnitionCount = const Value.absent(),
                Value<bool> statusFrostStarted = const Value.absent(),
                Value<bool> hasError = const Value.absent(),
                Value<bool> hasWarning = const Value.absent(),
              }) => SensorReadingsCompanion(
                id: id,
                stoveId: stoveId,
                timestamp: timestamp,
                inputRoomTemperature: inputRoomTemperature,
                inputFlameTemperature: inputFlameTemperature,
                targetTemperature: targetTemperature,
                outputDischargeMotor: outputDischargeMotor,
                outputIDFan: outputIDFan,
                statusMainState: statusMainState,
                statusSubState: statusSubState,
                parameterRuntimePellets: parameterRuntimePellets,
                parameterFeedRateTotal: parameterFeedRateTotal,
                parameterIgnitionCount: parameterIgnitionCount,
                statusFrostStarted: statusFrostStarted,
                hasError: hasError,
                hasWarning: hasWarning,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String stoveId,
                required DateTime timestamp,
                required double inputRoomTemperature,
                required int inputFlameTemperature,
                required double targetTemperature,
                required int outputDischargeMotor,
                required int outputIDFan,
                required int statusMainState,
                required int statusSubState,
                required int parameterRuntimePellets,
                required int parameterFeedRateTotal,
                required int parameterIgnitionCount,
                required bool statusFrostStarted,
                required bool hasError,
                required bool hasWarning,
              }) => SensorReadingsCompanion.insert(
                id: id,
                stoveId: stoveId,
                timestamp: timestamp,
                inputRoomTemperature: inputRoomTemperature,
                inputFlameTemperature: inputFlameTemperature,
                targetTemperature: targetTemperature,
                outputDischargeMotor: outputDischargeMotor,
                outputIDFan: outputIDFan,
                statusMainState: statusMainState,
                statusSubState: statusSubState,
                parameterRuntimePellets: parameterRuntimePellets,
                parameterFeedRateTotal: parameterFeedRateTotal,
                parameterIgnitionCount: parameterIgnitionCount,
                statusFrostStarted: statusFrostStarted,
                hasError: hasError,
                hasWarning: hasWarning,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SensorReadingsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SensorReadingsTable,
      SensorReading,
      $$SensorReadingsTableFilterComposer,
      $$SensorReadingsTableOrderingComposer,
      $$SensorReadingsTableAnnotationComposer,
      $$SensorReadingsTableCreateCompanionBuilder,
      $$SensorReadingsTableUpdateCompanionBuilder,
      (
        SensorReading,
        BaseReferences<_$AppDatabase, $SensorReadingsTable, SensorReading>,
      ),
      SensorReading,
      PrefetchHooks Function()
    >;
typedef $$DailyStatisticsTableCreateCompanionBuilder =
    DailyStatisticsCompanion Function({
      Value<int> id,
      required String stoveId,
      required DateTime date,
      required double avgRoomTemperature,
      required double minRoomTemperature,
      required double maxRoomTemperature,
      required double avgTargetTemperature,
      required int avgFlameTemperature,
      required double pelletConsumptionKg,
      required int runtimeMinutes,
      required int burningMinutes,
      required int ignitionCount,
      required int minutesOff,
      required int minutesIgnition,
      required int minutesStarting,
      required int minutesRunning,
      required int minutesCleaning,
      required int minutesBurnOff,
      required int readingCount,
    });
typedef $$DailyStatisticsTableUpdateCompanionBuilder =
    DailyStatisticsCompanion Function({
      Value<int> id,
      Value<String> stoveId,
      Value<DateTime> date,
      Value<double> avgRoomTemperature,
      Value<double> minRoomTemperature,
      Value<double> maxRoomTemperature,
      Value<double> avgTargetTemperature,
      Value<int> avgFlameTemperature,
      Value<double> pelletConsumptionKg,
      Value<int> runtimeMinutes,
      Value<int> burningMinutes,
      Value<int> ignitionCount,
      Value<int> minutesOff,
      Value<int> minutesIgnition,
      Value<int> minutesStarting,
      Value<int> minutesRunning,
      Value<int> minutesCleaning,
      Value<int> minutesBurnOff,
      Value<int> readingCount,
    });

class $$DailyStatisticsTableFilterComposer
    extends Composer<_$AppDatabase, $DailyStatisticsTable> {
  $$DailyStatisticsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get stoveId => $composableBuilder(
    column: $table.stoveId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get avgRoomTemperature => $composableBuilder(
    column: $table.avgRoomTemperature,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get minRoomTemperature => $composableBuilder(
    column: $table.minRoomTemperature,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get maxRoomTemperature => $composableBuilder(
    column: $table.maxRoomTemperature,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get avgTargetTemperature => $composableBuilder(
    column: $table.avgTargetTemperature,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get avgFlameTemperature => $composableBuilder(
    column: $table.avgFlameTemperature,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get pelletConsumptionKg => $composableBuilder(
    column: $table.pelletConsumptionKg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get runtimeMinutes => $composableBuilder(
    column: $table.runtimeMinutes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get burningMinutes => $composableBuilder(
    column: $table.burningMinutes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get ignitionCount => $composableBuilder(
    column: $table.ignitionCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minutesOff => $composableBuilder(
    column: $table.minutesOff,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minutesIgnition => $composableBuilder(
    column: $table.minutesIgnition,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minutesStarting => $composableBuilder(
    column: $table.minutesStarting,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minutesRunning => $composableBuilder(
    column: $table.minutesRunning,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minutesCleaning => $composableBuilder(
    column: $table.minutesCleaning,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minutesBurnOff => $composableBuilder(
    column: $table.minutesBurnOff,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get readingCount => $composableBuilder(
    column: $table.readingCount,
    builder: (column) => ColumnFilters(column),
  );
}

class $$DailyStatisticsTableOrderingComposer
    extends Composer<_$AppDatabase, $DailyStatisticsTable> {
  $$DailyStatisticsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get stoveId => $composableBuilder(
    column: $table.stoveId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get avgRoomTemperature => $composableBuilder(
    column: $table.avgRoomTemperature,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get minRoomTemperature => $composableBuilder(
    column: $table.minRoomTemperature,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get maxRoomTemperature => $composableBuilder(
    column: $table.maxRoomTemperature,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get avgTargetTemperature => $composableBuilder(
    column: $table.avgTargetTemperature,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get avgFlameTemperature => $composableBuilder(
    column: $table.avgFlameTemperature,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get pelletConsumptionKg => $composableBuilder(
    column: $table.pelletConsumptionKg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get runtimeMinutes => $composableBuilder(
    column: $table.runtimeMinutes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get burningMinutes => $composableBuilder(
    column: $table.burningMinutes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get ignitionCount => $composableBuilder(
    column: $table.ignitionCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minutesOff => $composableBuilder(
    column: $table.minutesOff,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minutesIgnition => $composableBuilder(
    column: $table.minutesIgnition,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minutesStarting => $composableBuilder(
    column: $table.minutesStarting,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minutesRunning => $composableBuilder(
    column: $table.minutesRunning,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minutesCleaning => $composableBuilder(
    column: $table.minutesCleaning,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minutesBurnOff => $composableBuilder(
    column: $table.minutesBurnOff,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get readingCount => $composableBuilder(
    column: $table.readingCount,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$DailyStatisticsTableAnnotationComposer
    extends Composer<_$AppDatabase, $DailyStatisticsTable> {
  $$DailyStatisticsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get stoveId =>
      $composableBuilder(column: $table.stoveId, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<double> get avgRoomTemperature => $composableBuilder(
    column: $table.avgRoomTemperature,
    builder: (column) => column,
  );

  GeneratedColumn<double> get minRoomTemperature => $composableBuilder(
    column: $table.minRoomTemperature,
    builder: (column) => column,
  );

  GeneratedColumn<double> get maxRoomTemperature => $composableBuilder(
    column: $table.maxRoomTemperature,
    builder: (column) => column,
  );

  GeneratedColumn<double> get avgTargetTemperature => $composableBuilder(
    column: $table.avgTargetTemperature,
    builder: (column) => column,
  );

  GeneratedColumn<int> get avgFlameTemperature => $composableBuilder(
    column: $table.avgFlameTemperature,
    builder: (column) => column,
  );

  GeneratedColumn<double> get pelletConsumptionKg => $composableBuilder(
    column: $table.pelletConsumptionKg,
    builder: (column) => column,
  );

  GeneratedColumn<int> get runtimeMinutes => $composableBuilder(
    column: $table.runtimeMinutes,
    builder: (column) => column,
  );

  GeneratedColumn<int> get burningMinutes => $composableBuilder(
    column: $table.burningMinutes,
    builder: (column) => column,
  );

  GeneratedColumn<int> get ignitionCount => $composableBuilder(
    column: $table.ignitionCount,
    builder: (column) => column,
  );

  GeneratedColumn<int> get minutesOff => $composableBuilder(
    column: $table.minutesOff,
    builder: (column) => column,
  );

  GeneratedColumn<int> get minutesIgnition => $composableBuilder(
    column: $table.minutesIgnition,
    builder: (column) => column,
  );

  GeneratedColumn<int> get minutesStarting => $composableBuilder(
    column: $table.minutesStarting,
    builder: (column) => column,
  );

  GeneratedColumn<int> get minutesRunning => $composableBuilder(
    column: $table.minutesRunning,
    builder: (column) => column,
  );

  GeneratedColumn<int> get minutesCleaning => $composableBuilder(
    column: $table.minutesCleaning,
    builder: (column) => column,
  );

  GeneratedColumn<int> get minutesBurnOff => $composableBuilder(
    column: $table.minutesBurnOff,
    builder: (column) => column,
  );

  GeneratedColumn<int> get readingCount => $composableBuilder(
    column: $table.readingCount,
    builder: (column) => column,
  );
}

class $$DailyStatisticsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $DailyStatisticsTable,
          DailyStatistic,
          $$DailyStatisticsTableFilterComposer,
          $$DailyStatisticsTableOrderingComposer,
          $$DailyStatisticsTableAnnotationComposer,
          $$DailyStatisticsTableCreateCompanionBuilder,
          $$DailyStatisticsTableUpdateCompanionBuilder,
          (
            DailyStatistic,
            BaseReferences<
              _$AppDatabase,
              $DailyStatisticsTable,
              DailyStatistic
            >,
          ),
          DailyStatistic,
          PrefetchHooks Function()
        > {
  $$DailyStatisticsTableTableManager(
    _$AppDatabase db,
    $DailyStatisticsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DailyStatisticsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DailyStatisticsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DailyStatisticsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> stoveId = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<double> avgRoomTemperature = const Value.absent(),
                Value<double> minRoomTemperature = const Value.absent(),
                Value<double> maxRoomTemperature = const Value.absent(),
                Value<double> avgTargetTemperature = const Value.absent(),
                Value<int> avgFlameTemperature = const Value.absent(),
                Value<double> pelletConsumptionKg = const Value.absent(),
                Value<int> runtimeMinutes = const Value.absent(),
                Value<int> burningMinutes = const Value.absent(),
                Value<int> ignitionCount = const Value.absent(),
                Value<int> minutesOff = const Value.absent(),
                Value<int> minutesIgnition = const Value.absent(),
                Value<int> minutesStarting = const Value.absent(),
                Value<int> minutesRunning = const Value.absent(),
                Value<int> minutesCleaning = const Value.absent(),
                Value<int> minutesBurnOff = const Value.absent(),
                Value<int> readingCount = const Value.absent(),
              }) => DailyStatisticsCompanion(
                id: id,
                stoveId: stoveId,
                date: date,
                avgRoomTemperature: avgRoomTemperature,
                minRoomTemperature: minRoomTemperature,
                maxRoomTemperature: maxRoomTemperature,
                avgTargetTemperature: avgTargetTemperature,
                avgFlameTemperature: avgFlameTemperature,
                pelletConsumptionKg: pelletConsumptionKg,
                runtimeMinutes: runtimeMinutes,
                burningMinutes: burningMinutes,
                ignitionCount: ignitionCount,
                minutesOff: minutesOff,
                minutesIgnition: minutesIgnition,
                minutesStarting: minutesStarting,
                minutesRunning: minutesRunning,
                minutesCleaning: minutesCleaning,
                minutesBurnOff: minutesBurnOff,
                readingCount: readingCount,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String stoveId,
                required DateTime date,
                required double avgRoomTemperature,
                required double minRoomTemperature,
                required double maxRoomTemperature,
                required double avgTargetTemperature,
                required int avgFlameTemperature,
                required double pelletConsumptionKg,
                required int runtimeMinutes,
                required int burningMinutes,
                required int ignitionCount,
                required int minutesOff,
                required int minutesIgnition,
                required int minutesStarting,
                required int minutesRunning,
                required int minutesCleaning,
                required int minutesBurnOff,
                required int readingCount,
              }) => DailyStatisticsCompanion.insert(
                id: id,
                stoveId: stoveId,
                date: date,
                avgRoomTemperature: avgRoomTemperature,
                minRoomTemperature: minRoomTemperature,
                maxRoomTemperature: maxRoomTemperature,
                avgTargetTemperature: avgTargetTemperature,
                avgFlameTemperature: avgFlameTemperature,
                pelletConsumptionKg: pelletConsumptionKg,
                runtimeMinutes: runtimeMinutes,
                burningMinutes: burningMinutes,
                ignitionCount: ignitionCount,
                minutesOff: minutesOff,
                minutesIgnition: minutesIgnition,
                minutesStarting: minutesStarting,
                minutesRunning: minutesRunning,
                minutesCleaning: minutesCleaning,
                minutesBurnOff: minutesBurnOff,
                readingCount: readingCount,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$DailyStatisticsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $DailyStatisticsTable,
      DailyStatistic,
      $$DailyStatisticsTableFilterComposer,
      $$DailyStatisticsTableOrderingComposer,
      $$DailyStatisticsTableAnnotationComposer,
      $$DailyStatisticsTableCreateCompanionBuilder,
      $$DailyStatisticsTableUpdateCompanionBuilder,
      (
        DailyStatistic,
        BaseReferences<_$AppDatabase, $DailyStatisticsTable, DailyStatistic>,
      ),
      DailyStatistic,
      PrefetchHooks Function()
    >;
typedef $$WeeklyStatisticsTableCreateCompanionBuilder =
    WeeklyStatisticsCompanion Function({
      Value<int> id,
      required String stoveId,
      required DateTime weekStart,
      required int weekNumber,
      required int year,
      required double avgRoomTemperature,
      required double minRoomTemperature,
      required double maxRoomTemperature,
      required double avgTargetTemperature,
      required int avgFlameTemperature,
      required double pelletConsumptionKg,
      required int runtimeMinutes,
      required int burningMinutes,
      required int ignitionCount,
      required int minutesOff,
      required int minutesIgnition,
      required int minutesStarting,
      required int minutesRunning,
      required int minutesCleaning,
      required int minutesBurnOff,
      required int dayCount,
    });
typedef $$WeeklyStatisticsTableUpdateCompanionBuilder =
    WeeklyStatisticsCompanion Function({
      Value<int> id,
      Value<String> stoveId,
      Value<DateTime> weekStart,
      Value<int> weekNumber,
      Value<int> year,
      Value<double> avgRoomTemperature,
      Value<double> minRoomTemperature,
      Value<double> maxRoomTemperature,
      Value<double> avgTargetTemperature,
      Value<int> avgFlameTemperature,
      Value<double> pelletConsumptionKg,
      Value<int> runtimeMinutes,
      Value<int> burningMinutes,
      Value<int> ignitionCount,
      Value<int> minutesOff,
      Value<int> minutesIgnition,
      Value<int> minutesStarting,
      Value<int> minutesRunning,
      Value<int> minutesCleaning,
      Value<int> minutesBurnOff,
      Value<int> dayCount,
    });

class $$WeeklyStatisticsTableFilterComposer
    extends Composer<_$AppDatabase, $WeeklyStatisticsTable> {
  $$WeeklyStatisticsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get stoveId => $composableBuilder(
    column: $table.stoveId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get weekStart => $composableBuilder(
    column: $table.weekStart,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get weekNumber => $composableBuilder(
    column: $table.weekNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get year => $composableBuilder(
    column: $table.year,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get avgRoomTemperature => $composableBuilder(
    column: $table.avgRoomTemperature,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get minRoomTemperature => $composableBuilder(
    column: $table.minRoomTemperature,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get maxRoomTemperature => $composableBuilder(
    column: $table.maxRoomTemperature,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get avgTargetTemperature => $composableBuilder(
    column: $table.avgTargetTemperature,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get avgFlameTemperature => $composableBuilder(
    column: $table.avgFlameTemperature,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get pelletConsumptionKg => $composableBuilder(
    column: $table.pelletConsumptionKg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get runtimeMinutes => $composableBuilder(
    column: $table.runtimeMinutes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get burningMinutes => $composableBuilder(
    column: $table.burningMinutes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get ignitionCount => $composableBuilder(
    column: $table.ignitionCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minutesOff => $composableBuilder(
    column: $table.minutesOff,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minutesIgnition => $composableBuilder(
    column: $table.minutesIgnition,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minutesStarting => $composableBuilder(
    column: $table.minutesStarting,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minutesRunning => $composableBuilder(
    column: $table.minutesRunning,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minutesCleaning => $composableBuilder(
    column: $table.minutesCleaning,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minutesBurnOff => $composableBuilder(
    column: $table.minutesBurnOff,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get dayCount => $composableBuilder(
    column: $table.dayCount,
    builder: (column) => ColumnFilters(column),
  );
}

class $$WeeklyStatisticsTableOrderingComposer
    extends Composer<_$AppDatabase, $WeeklyStatisticsTable> {
  $$WeeklyStatisticsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get stoveId => $composableBuilder(
    column: $table.stoveId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get weekStart => $composableBuilder(
    column: $table.weekStart,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get weekNumber => $composableBuilder(
    column: $table.weekNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get year => $composableBuilder(
    column: $table.year,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get avgRoomTemperature => $composableBuilder(
    column: $table.avgRoomTemperature,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get minRoomTemperature => $composableBuilder(
    column: $table.minRoomTemperature,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get maxRoomTemperature => $composableBuilder(
    column: $table.maxRoomTemperature,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get avgTargetTemperature => $composableBuilder(
    column: $table.avgTargetTemperature,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get avgFlameTemperature => $composableBuilder(
    column: $table.avgFlameTemperature,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get pelletConsumptionKg => $composableBuilder(
    column: $table.pelletConsumptionKg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get runtimeMinutes => $composableBuilder(
    column: $table.runtimeMinutes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get burningMinutes => $composableBuilder(
    column: $table.burningMinutes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get ignitionCount => $composableBuilder(
    column: $table.ignitionCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minutesOff => $composableBuilder(
    column: $table.minutesOff,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minutesIgnition => $composableBuilder(
    column: $table.minutesIgnition,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minutesStarting => $composableBuilder(
    column: $table.minutesStarting,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minutesRunning => $composableBuilder(
    column: $table.minutesRunning,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minutesCleaning => $composableBuilder(
    column: $table.minutesCleaning,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minutesBurnOff => $composableBuilder(
    column: $table.minutesBurnOff,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get dayCount => $composableBuilder(
    column: $table.dayCount,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$WeeklyStatisticsTableAnnotationComposer
    extends Composer<_$AppDatabase, $WeeklyStatisticsTable> {
  $$WeeklyStatisticsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get stoveId =>
      $composableBuilder(column: $table.stoveId, builder: (column) => column);

  GeneratedColumn<DateTime> get weekStart =>
      $composableBuilder(column: $table.weekStart, builder: (column) => column);

  GeneratedColumn<int> get weekNumber => $composableBuilder(
    column: $table.weekNumber,
    builder: (column) => column,
  );

  GeneratedColumn<int> get year =>
      $composableBuilder(column: $table.year, builder: (column) => column);

  GeneratedColumn<double> get avgRoomTemperature => $composableBuilder(
    column: $table.avgRoomTemperature,
    builder: (column) => column,
  );

  GeneratedColumn<double> get minRoomTemperature => $composableBuilder(
    column: $table.minRoomTemperature,
    builder: (column) => column,
  );

  GeneratedColumn<double> get maxRoomTemperature => $composableBuilder(
    column: $table.maxRoomTemperature,
    builder: (column) => column,
  );

  GeneratedColumn<double> get avgTargetTemperature => $composableBuilder(
    column: $table.avgTargetTemperature,
    builder: (column) => column,
  );

  GeneratedColumn<int> get avgFlameTemperature => $composableBuilder(
    column: $table.avgFlameTemperature,
    builder: (column) => column,
  );

  GeneratedColumn<double> get pelletConsumptionKg => $composableBuilder(
    column: $table.pelletConsumptionKg,
    builder: (column) => column,
  );

  GeneratedColumn<int> get runtimeMinutes => $composableBuilder(
    column: $table.runtimeMinutes,
    builder: (column) => column,
  );

  GeneratedColumn<int> get burningMinutes => $composableBuilder(
    column: $table.burningMinutes,
    builder: (column) => column,
  );

  GeneratedColumn<int> get ignitionCount => $composableBuilder(
    column: $table.ignitionCount,
    builder: (column) => column,
  );

  GeneratedColumn<int> get minutesOff => $composableBuilder(
    column: $table.minutesOff,
    builder: (column) => column,
  );

  GeneratedColumn<int> get minutesIgnition => $composableBuilder(
    column: $table.minutesIgnition,
    builder: (column) => column,
  );

  GeneratedColumn<int> get minutesStarting => $composableBuilder(
    column: $table.minutesStarting,
    builder: (column) => column,
  );

  GeneratedColumn<int> get minutesRunning => $composableBuilder(
    column: $table.minutesRunning,
    builder: (column) => column,
  );

  GeneratedColumn<int> get minutesCleaning => $composableBuilder(
    column: $table.minutesCleaning,
    builder: (column) => column,
  );

  GeneratedColumn<int> get minutesBurnOff => $composableBuilder(
    column: $table.minutesBurnOff,
    builder: (column) => column,
  );

  GeneratedColumn<int> get dayCount =>
      $composableBuilder(column: $table.dayCount, builder: (column) => column);
}

class $$WeeklyStatisticsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $WeeklyStatisticsTable,
          WeeklyStatistic,
          $$WeeklyStatisticsTableFilterComposer,
          $$WeeklyStatisticsTableOrderingComposer,
          $$WeeklyStatisticsTableAnnotationComposer,
          $$WeeklyStatisticsTableCreateCompanionBuilder,
          $$WeeklyStatisticsTableUpdateCompanionBuilder,
          (
            WeeklyStatistic,
            BaseReferences<
              _$AppDatabase,
              $WeeklyStatisticsTable,
              WeeklyStatistic
            >,
          ),
          WeeklyStatistic,
          PrefetchHooks Function()
        > {
  $$WeeklyStatisticsTableTableManager(
    _$AppDatabase db,
    $WeeklyStatisticsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WeeklyStatisticsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WeeklyStatisticsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WeeklyStatisticsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> stoveId = const Value.absent(),
                Value<DateTime> weekStart = const Value.absent(),
                Value<int> weekNumber = const Value.absent(),
                Value<int> year = const Value.absent(),
                Value<double> avgRoomTemperature = const Value.absent(),
                Value<double> minRoomTemperature = const Value.absent(),
                Value<double> maxRoomTemperature = const Value.absent(),
                Value<double> avgTargetTemperature = const Value.absent(),
                Value<int> avgFlameTemperature = const Value.absent(),
                Value<double> pelletConsumptionKg = const Value.absent(),
                Value<int> runtimeMinutes = const Value.absent(),
                Value<int> burningMinutes = const Value.absent(),
                Value<int> ignitionCount = const Value.absent(),
                Value<int> minutesOff = const Value.absent(),
                Value<int> minutesIgnition = const Value.absent(),
                Value<int> minutesStarting = const Value.absent(),
                Value<int> minutesRunning = const Value.absent(),
                Value<int> minutesCleaning = const Value.absent(),
                Value<int> minutesBurnOff = const Value.absent(),
                Value<int> dayCount = const Value.absent(),
              }) => WeeklyStatisticsCompanion(
                id: id,
                stoveId: stoveId,
                weekStart: weekStart,
                weekNumber: weekNumber,
                year: year,
                avgRoomTemperature: avgRoomTemperature,
                minRoomTemperature: minRoomTemperature,
                maxRoomTemperature: maxRoomTemperature,
                avgTargetTemperature: avgTargetTemperature,
                avgFlameTemperature: avgFlameTemperature,
                pelletConsumptionKg: pelletConsumptionKg,
                runtimeMinutes: runtimeMinutes,
                burningMinutes: burningMinutes,
                ignitionCount: ignitionCount,
                minutesOff: minutesOff,
                minutesIgnition: minutesIgnition,
                minutesStarting: minutesStarting,
                minutesRunning: minutesRunning,
                minutesCleaning: minutesCleaning,
                minutesBurnOff: minutesBurnOff,
                dayCount: dayCount,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String stoveId,
                required DateTime weekStart,
                required int weekNumber,
                required int year,
                required double avgRoomTemperature,
                required double minRoomTemperature,
                required double maxRoomTemperature,
                required double avgTargetTemperature,
                required int avgFlameTemperature,
                required double pelletConsumptionKg,
                required int runtimeMinutes,
                required int burningMinutes,
                required int ignitionCount,
                required int minutesOff,
                required int minutesIgnition,
                required int minutesStarting,
                required int minutesRunning,
                required int minutesCleaning,
                required int minutesBurnOff,
                required int dayCount,
              }) => WeeklyStatisticsCompanion.insert(
                id: id,
                stoveId: stoveId,
                weekStart: weekStart,
                weekNumber: weekNumber,
                year: year,
                avgRoomTemperature: avgRoomTemperature,
                minRoomTemperature: minRoomTemperature,
                maxRoomTemperature: maxRoomTemperature,
                avgTargetTemperature: avgTargetTemperature,
                avgFlameTemperature: avgFlameTemperature,
                pelletConsumptionKg: pelletConsumptionKg,
                runtimeMinutes: runtimeMinutes,
                burningMinutes: burningMinutes,
                ignitionCount: ignitionCount,
                minutesOff: minutesOff,
                minutesIgnition: minutesIgnition,
                minutesStarting: minutesStarting,
                minutesRunning: minutesRunning,
                minutesCleaning: minutesCleaning,
                minutesBurnOff: minutesBurnOff,
                dayCount: dayCount,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$WeeklyStatisticsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $WeeklyStatisticsTable,
      WeeklyStatistic,
      $$WeeklyStatisticsTableFilterComposer,
      $$WeeklyStatisticsTableOrderingComposer,
      $$WeeklyStatisticsTableAnnotationComposer,
      $$WeeklyStatisticsTableCreateCompanionBuilder,
      $$WeeklyStatisticsTableUpdateCompanionBuilder,
      (
        WeeklyStatistic,
        BaseReferences<_$AppDatabase, $WeeklyStatisticsTable, WeeklyStatistic>,
      ),
      WeeklyStatistic,
      PrefetchHooks Function()
    >;
typedef $$MonthlyStatisticsTableCreateCompanionBuilder =
    MonthlyStatisticsCompanion Function({
      Value<int> id,
      required String stoveId,
      required int month,
      required int year,
      required double avgRoomTemperature,
      required double minRoomTemperature,
      required double maxRoomTemperature,
      required double avgTargetTemperature,
      required int avgFlameTemperature,
      required double pelletConsumptionKg,
      required int runtimeMinutes,
      required int burningMinutes,
      required int ignitionCount,
      required int minutesOff,
      required int minutesIgnition,
      required int minutesStarting,
      required int minutesRunning,
      required int minutesCleaning,
      required int minutesBurnOff,
      required int dayCount,
    });
typedef $$MonthlyStatisticsTableUpdateCompanionBuilder =
    MonthlyStatisticsCompanion Function({
      Value<int> id,
      Value<String> stoveId,
      Value<int> month,
      Value<int> year,
      Value<double> avgRoomTemperature,
      Value<double> minRoomTemperature,
      Value<double> maxRoomTemperature,
      Value<double> avgTargetTemperature,
      Value<int> avgFlameTemperature,
      Value<double> pelletConsumptionKg,
      Value<int> runtimeMinutes,
      Value<int> burningMinutes,
      Value<int> ignitionCount,
      Value<int> minutesOff,
      Value<int> minutesIgnition,
      Value<int> minutesStarting,
      Value<int> minutesRunning,
      Value<int> minutesCleaning,
      Value<int> minutesBurnOff,
      Value<int> dayCount,
    });

class $$MonthlyStatisticsTableFilterComposer
    extends Composer<_$AppDatabase, $MonthlyStatisticsTable> {
  $$MonthlyStatisticsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get stoveId => $composableBuilder(
    column: $table.stoveId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get month => $composableBuilder(
    column: $table.month,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get year => $composableBuilder(
    column: $table.year,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get avgRoomTemperature => $composableBuilder(
    column: $table.avgRoomTemperature,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get minRoomTemperature => $composableBuilder(
    column: $table.minRoomTemperature,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get maxRoomTemperature => $composableBuilder(
    column: $table.maxRoomTemperature,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get avgTargetTemperature => $composableBuilder(
    column: $table.avgTargetTemperature,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get avgFlameTemperature => $composableBuilder(
    column: $table.avgFlameTemperature,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get pelletConsumptionKg => $composableBuilder(
    column: $table.pelletConsumptionKg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get runtimeMinutes => $composableBuilder(
    column: $table.runtimeMinutes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get burningMinutes => $composableBuilder(
    column: $table.burningMinutes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get ignitionCount => $composableBuilder(
    column: $table.ignitionCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minutesOff => $composableBuilder(
    column: $table.minutesOff,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minutesIgnition => $composableBuilder(
    column: $table.minutesIgnition,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minutesStarting => $composableBuilder(
    column: $table.minutesStarting,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minutesRunning => $composableBuilder(
    column: $table.minutesRunning,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minutesCleaning => $composableBuilder(
    column: $table.minutesCleaning,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minutesBurnOff => $composableBuilder(
    column: $table.minutesBurnOff,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get dayCount => $composableBuilder(
    column: $table.dayCount,
    builder: (column) => ColumnFilters(column),
  );
}

class $$MonthlyStatisticsTableOrderingComposer
    extends Composer<_$AppDatabase, $MonthlyStatisticsTable> {
  $$MonthlyStatisticsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get stoveId => $composableBuilder(
    column: $table.stoveId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get month => $composableBuilder(
    column: $table.month,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get year => $composableBuilder(
    column: $table.year,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get avgRoomTemperature => $composableBuilder(
    column: $table.avgRoomTemperature,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get minRoomTemperature => $composableBuilder(
    column: $table.minRoomTemperature,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get maxRoomTemperature => $composableBuilder(
    column: $table.maxRoomTemperature,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get avgTargetTemperature => $composableBuilder(
    column: $table.avgTargetTemperature,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get avgFlameTemperature => $composableBuilder(
    column: $table.avgFlameTemperature,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get pelletConsumptionKg => $composableBuilder(
    column: $table.pelletConsumptionKg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get runtimeMinutes => $composableBuilder(
    column: $table.runtimeMinutes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get burningMinutes => $composableBuilder(
    column: $table.burningMinutes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get ignitionCount => $composableBuilder(
    column: $table.ignitionCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minutesOff => $composableBuilder(
    column: $table.minutesOff,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minutesIgnition => $composableBuilder(
    column: $table.minutesIgnition,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minutesStarting => $composableBuilder(
    column: $table.minutesStarting,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minutesRunning => $composableBuilder(
    column: $table.minutesRunning,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minutesCleaning => $composableBuilder(
    column: $table.minutesCleaning,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minutesBurnOff => $composableBuilder(
    column: $table.minutesBurnOff,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get dayCount => $composableBuilder(
    column: $table.dayCount,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MonthlyStatisticsTableAnnotationComposer
    extends Composer<_$AppDatabase, $MonthlyStatisticsTable> {
  $$MonthlyStatisticsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get stoveId =>
      $composableBuilder(column: $table.stoveId, builder: (column) => column);

  GeneratedColumn<int> get month =>
      $composableBuilder(column: $table.month, builder: (column) => column);

  GeneratedColumn<int> get year =>
      $composableBuilder(column: $table.year, builder: (column) => column);

  GeneratedColumn<double> get avgRoomTemperature => $composableBuilder(
    column: $table.avgRoomTemperature,
    builder: (column) => column,
  );

  GeneratedColumn<double> get minRoomTemperature => $composableBuilder(
    column: $table.minRoomTemperature,
    builder: (column) => column,
  );

  GeneratedColumn<double> get maxRoomTemperature => $composableBuilder(
    column: $table.maxRoomTemperature,
    builder: (column) => column,
  );

  GeneratedColumn<double> get avgTargetTemperature => $composableBuilder(
    column: $table.avgTargetTemperature,
    builder: (column) => column,
  );

  GeneratedColumn<int> get avgFlameTemperature => $composableBuilder(
    column: $table.avgFlameTemperature,
    builder: (column) => column,
  );

  GeneratedColumn<double> get pelletConsumptionKg => $composableBuilder(
    column: $table.pelletConsumptionKg,
    builder: (column) => column,
  );

  GeneratedColumn<int> get runtimeMinutes => $composableBuilder(
    column: $table.runtimeMinutes,
    builder: (column) => column,
  );

  GeneratedColumn<int> get burningMinutes => $composableBuilder(
    column: $table.burningMinutes,
    builder: (column) => column,
  );

  GeneratedColumn<int> get ignitionCount => $composableBuilder(
    column: $table.ignitionCount,
    builder: (column) => column,
  );

  GeneratedColumn<int> get minutesOff => $composableBuilder(
    column: $table.minutesOff,
    builder: (column) => column,
  );

  GeneratedColumn<int> get minutesIgnition => $composableBuilder(
    column: $table.minutesIgnition,
    builder: (column) => column,
  );

  GeneratedColumn<int> get minutesStarting => $composableBuilder(
    column: $table.minutesStarting,
    builder: (column) => column,
  );

  GeneratedColumn<int> get minutesRunning => $composableBuilder(
    column: $table.minutesRunning,
    builder: (column) => column,
  );

  GeneratedColumn<int> get minutesCleaning => $composableBuilder(
    column: $table.minutesCleaning,
    builder: (column) => column,
  );

  GeneratedColumn<int> get minutesBurnOff => $composableBuilder(
    column: $table.minutesBurnOff,
    builder: (column) => column,
  );

  GeneratedColumn<int> get dayCount =>
      $composableBuilder(column: $table.dayCount, builder: (column) => column);
}

class $$MonthlyStatisticsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MonthlyStatisticsTable,
          MonthlyStatistic,
          $$MonthlyStatisticsTableFilterComposer,
          $$MonthlyStatisticsTableOrderingComposer,
          $$MonthlyStatisticsTableAnnotationComposer,
          $$MonthlyStatisticsTableCreateCompanionBuilder,
          $$MonthlyStatisticsTableUpdateCompanionBuilder,
          (
            MonthlyStatistic,
            BaseReferences<
              _$AppDatabase,
              $MonthlyStatisticsTable,
              MonthlyStatistic
            >,
          ),
          MonthlyStatistic,
          PrefetchHooks Function()
        > {
  $$MonthlyStatisticsTableTableManager(
    _$AppDatabase db,
    $MonthlyStatisticsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MonthlyStatisticsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MonthlyStatisticsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MonthlyStatisticsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> stoveId = const Value.absent(),
                Value<int> month = const Value.absent(),
                Value<int> year = const Value.absent(),
                Value<double> avgRoomTemperature = const Value.absent(),
                Value<double> minRoomTemperature = const Value.absent(),
                Value<double> maxRoomTemperature = const Value.absent(),
                Value<double> avgTargetTemperature = const Value.absent(),
                Value<int> avgFlameTemperature = const Value.absent(),
                Value<double> pelletConsumptionKg = const Value.absent(),
                Value<int> runtimeMinutes = const Value.absent(),
                Value<int> burningMinutes = const Value.absent(),
                Value<int> ignitionCount = const Value.absent(),
                Value<int> minutesOff = const Value.absent(),
                Value<int> minutesIgnition = const Value.absent(),
                Value<int> minutesStarting = const Value.absent(),
                Value<int> minutesRunning = const Value.absent(),
                Value<int> minutesCleaning = const Value.absent(),
                Value<int> minutesBurnOff = const Value.absent(),
                Value<int> dayCount = const Value.absent(),
              }) => MonthlyStatisticsCompanion(
                id: id,
                stoveId: stoveId,
                month: month,
                year: year,
                avgRoomTemperature: avgRoomTemperature,
                minRoomTemperature: minRoomTemperature,
                maxRoomTemperature: maxRoomTemperature,
                avgTargetTemperature: avgTargetTemperature,
                avgFlameTemperature: avgFlameTemperature,
                pelletConsumptionKg: pelletConsumptionKg,
                runtimeMinutes: runtimeMinutes,
                burningMinutes: burningMinutes,
                ignitionCount: ignitionCount,
                minutesOff: minutesOff,
                minutesIgnition: minutesIgnition,
                minutesStarting: minutesStarting,
                minutesRunning: minutesRunning,
                minutesCleaning: minutesCleaning,
                minutesBurnOff: minutesBurnOff,
                dayCount: dayCount,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String stoveId,
                required int month,
                required int year,
                required double avgRoomTemperature,
                required double minRoomTemperature,
                required double maxRoomTemperature,
                required double avgTargetTemperature,
                required int avgFlameTemperature,
                required double pelletConsumptionKg,
                required int runtimeMinutes,
                required int burningMinutes,
                required int ignitionCount,
                required int minutesOff,
                required int minutesIgnition,
                required int minutesStarting,
                required int minutesRunning,
                required int minutesCleaning,
                required int minutesBurnOff,
                required int dayCount,
              }) => MonthlyStatisticsCompanion.insert(
                id: id,
                stoveId: stoveId,
                month: month,
                year: year,
                avgRoomTemperature: avgRoomTemperature,
                minRoomTemperature: minRoomTemperature,
                maxRoomTemperature: maxRoomTemperature,
                avgTargetTemperature: avgTargetTemperature,
                avgFlameTemperature: avgFlameTemperature,
                pelletConsumptionKg: pelletConsumptionKg,
                runtimeMinutes: runtimeMinutes,
                burningMinutes: burningMinutes,
                ignitionCount: ignitionCount,
                minutesOff: minutesOff,
                minutesIgnition: minutesIgnition,
                minutesStarting: minutesStarting,
                minutesRunning: minutesRunning,
                minutesCleaning: minutesCleaning,
                minutesBurnOff: minutesBurnOff,
                dayCount: dayCount,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$MonthlyStatisticsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MonthlyStatisticsTable,
      MonthlyStatistic,
      $$MonthlyStatisticsTableFilterComposer,
      $$MonthlyStatisticsTableOrderingComposer,
      $$MonthlyStatisticsTableAnnotationComposer,
      $$MonthlyStatisticsTableCreateCompanionBuilder,
      $$MonthlyStatisticsTableUpdateCompanionBuilder,
      (
        MonthlyStatistic,
        BaseReferences<
          _$AppDatabase,
          $MonthlyStatisticsTable,
          MonthlyStatistic
        >,
      ),
      MonthlyStatistic,
      PrefetchHooks Function()
    >;
typedef $$StateTransitionsTableCreateCompanionBuilder =
    StateTransitionsCompanion Function({
      Value<int> id,
      required String stoveId,
      required DateTime timestamp,
      Value<int?> fromState,
      required int toState,
      Value<int?> durationSeconds,
    });
typedef $$StateTransitionsTableUpdateCompanionBuilder =
    StateTransitionsCompanion Function({
      Value<int> id,
      Value<String> stoveId,
      Value<DateTime> timestamp,
      Value<int?> fromState,
      Value<int> toState,
      Value<int?> durationSeconds,
    });

class $$StateTransitionsTableFilterComposer
    extends Composer<_$AppDatabase, $StateTransitionsTable> {
  $$StateTransitionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get stoveId => $composableBuilder(
    column: $table.stoveId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get timestamp => $composableBuilder(
    column: $table.timestamp,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get fromState => $composableBuilder(
    column: $table.fromState,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get toState => $composableBuilder(
    column: $table.toState,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get durationSeconds => $composableBuilder(
    column: $table.durationSeconds,
    builder: (column) => ColumnFilters(column),
  );
}

class $$StateTransitionsTableOrderingComposer
    extends Composer<_$AppDatabase, $StateTransitionsTable> {
  $$StateTransitionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get stoveId => $composableBuilder(
    column: $table.stoveId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get timestamp => $composableBuilder(
    column: $table.timestamp,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get fromState => $composableBuilder(
    column: $table.fromState,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get toState => $composableBuilder(
    column: $table.toState,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get durationSeconds => $composableBuilder(
    column: $table.durationSeconds,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$StateTransitionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $StateTransitionsTable> {
  $$StateTransitionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get stoveId =>
      $composableBuilder(column: $table.stoveId, builder: (column) => column);

  GeneratedColumn<DateTime> get timestamp =>
      $composableBuilder(column: $table.timestamp, builder: (column) => column);

  GeneratedColumn<int> get fromState =>
      $composableBuilder(column: $table.fromState, builder: (column) => column);

  GeneratedColumn<int> get toState =>
      $composableBuilder(column: $table.toState, builder: (column) => column);

  GeneratedColumn<int> get durationSeconds => $composableBuilder(
    column: $table.durationSeconds,
    builder: (column) => column,
  );
}

class $$StateTransitionsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $StateTransitionsTable,
          StateTransition,
          $$StateTransitionsTableFilterComposer,
          $$StateTransitionsTableOrderingComposer,
          $$StateTransitionsTableAnnotationComposer,
          $$StateTransitionsTableCreateCompanionBuilder,
          $$StateTransitionsTableUpdateCompanionBuilder,
          (
            StateTransition,
            BaseReferences<
              _$AppDatabase,
              $StateTransitionsTable,
              StateTransition
            >,
          ),
          StateTransition,
          PrefetchHooks Function()
        > {
  $$StateTransitionsTableTableManager(
    _$AppDatabase db,
    $StateTransitionsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StateTransitionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StateTransitionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StateTransitionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> stoveId = const Value.absent(),
                Value<DateTime> timestamp = const Value.absent(),
                Value<int?> fromState = const Value.absent(),
                Value<int> toState = const Value.absent(),
                Value<int?> durationSeconds = const Value.absent(),
              }) => StateTransitionsCompanion(
                id: id,
                stoveId: stoveId,
                timestamp: timestamp,
                fromState: fromState,
                toState: toState,
                durationSeconds: durationSeconds,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String stoveId,
                required DateTime timestamp,
                Value<int?> fromState = const Value.absent(),
                required int toState,
                Value<int?> durationSeconds = const Value.absent(),
              }) => StateTransitionsCompanion.insert(
                id: id,
                stoveId: stoveId,
                timestamp: timestamp,
                fromState: fromState,
                toState: toState,
                durationSeconds: durationSeconds,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$StateTransitionsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $StateTransitionsTable,
      StateTransition,
      $$StateTransitionsTableFilterComposer,
      $$StateTransitionsTableOrderingComposer,
      $$StateTransitionsTableAnnotationComposer,
      $$StateTransitionsTableCreateCompanionBuilder,
      $$StateTransitionsTableUpdateCompanionBuilder,
      (
        StateTransition,
        BaseReferences<_$AppDatabase, $StateTransitionsTable, StateTransition>,
      ),
      StateTransition,
      PrefetchHooks Function()
    >;
typedef $$CostSettingsTableCreateCompanionBuilder =
    CostSettingsCompanion Function({
      Value<int> id,
      required String stoveId,
      required double pricePerKg,
      Value<String> currency,
      required DateTime updatedAt,
    });
typedef $$CostSettingsTableUpdateCompanionBuilder =
    CostSettingsCompanion Function({
      Value<int> id,
      Value<String> stoveId,
      Value<double> pricePerKg,
      Value<String> currency,
      Value<DateTime> updatedAt,
    });

class $$CostSettingsTableFilterComposer
    extends Composer<_$AppDatabase, $CostSettingsTable> {
  $$CostSettingsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get stoveId => $composableBuilder(
    column: $table.stoveId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get pricePerKg => $composableBuilder(
    column: $table.pricePerKg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CostSettingsTableOrderingComposer
    extends Composer<_$AppDatabase, $CostSettingsTable> {
  $$CostSettingsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get stoveId => $composableBuilder(
    column: $table.stoveId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get pricePerKg => $composableBuilder(
    column: $table.pricePerKg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CostSettingsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CostSettingsTable> {
  $$CostSettingsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get stoveId =>
      $composableBuilder(column: $table.stoveId, builder: (column) => column);

  GeneratedColumn<double> get pricePerKg => $composableBuilder(
    column: $table.pricePerKg,
    builder: (column) => column,
  );

  GeneratedColumn<String> get currency =>
      $composableBuilder(column: $table.currency, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$CostSettingsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CostSettingsTable,
          CostSetting,
          $$CostSettingsTableFilterComposer,
          $$CostSettingsTableOrderingComposer,
          $$CostSettingsTableAnnotationComposer,
          $$CostSettingsTableCreateCompanionBuilder,
          $$CostSettingsTableUpdateCompanionBuilder,
          (
            CostSetting,
            BaseReferences<_$AppDatabase, $CostSettingsTable, CostSetting>,
          ),
          CostSetting,
          PrefetchHooks Function()
        > {
  $$CostSettingsTableTableManager(_$AppDatabase db, $CostSettingsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CostSettingsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CostSettingsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CostSettingsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> stoveId = const Value.absent(),
                Value<double> pricePerKg = const Value.absent(),
                Value<String> currency = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => CostSettingsCompanion(
                id: id,
                stoveId: stoveId,
                pricePerKg: pricePerKg,
                currency: currency,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String stoveId,
                required double pricePerKg,
                Value<String> currency = const Value.absent(),
                required DateTime updatedAt,
              }) => CostSettingsCompanion.insert(
                id: id,
                stoveId: stoveId,
                pricePerKg: pricePerKg,
                currency: currency,
                updatedAt: updatedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CostSettingsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CostSettingsTable,
      CostSetting,
      $$CostSettingsTableFilterComposer,
      $$CostSettingsTableOrderingComposer,
      $$CostSettingsTableAnnotationComposer,
      $$CostSettingsTableCreateCompanionBuilder,
      $$CostSettingsTableUpdateCompanionBuilder,
      (
        CostSetting,
        BaseReferences<_$AppDatabase, $CostSettingsTable, CostSetting>,
      ),
      CostSetting,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$SensorReadingsTableTableManager get sensorReadings =>
      $$SensorReadingsTableTableManager(_db, _db.sensorReadings);
  $$DailyStatisticsTableTableManager get dailyStatistics =>
      $$DailyStatisticsTableTableManager(_db, _db.dailyStatistics);
  $$WeeklyStatisticsTableTableManager get weeklyStatistics =>
      $$WeeklyStatisticsTableTableManager(_db, _db.weeklyStatistics);
  $$MonthlyStatisticsTableTableManager get monthlyStatistics =>
      $$MonthlyStatisticsTableTableManager(_db, _db.monthlyStatistics);
  $$StateTransitionsTableTableManager get stateTransitions =>
      $$StateTransitionsTableTableManager(_db, _db.stateTransitions);
  $$CostSettingsTableTableManager get costSettings =>
      $$CostSettingsTableTableManager(_db, _db.costSettings);
}
