// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokeapi_database.dart';

// ignore_for_file: type=lint
class $PokemonSpeciesTable extends PokemonSpecies
    with TableInfo<$PokemonSpeciesTable, PokemonSpeciesModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PokemonSpeciesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _orderMeta = const VerificationMeta('order');
  @override
  late final GeneratedColumn<int> order = GeneratedColumn<int>(
      'order', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _genderRateMeta =
      const VerificationMeta('genderRate');
  @override
  late final GeneratedColumn<int> genderRate = GeneratedColumn<int>(
      'gender_rate', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _captureRateMeta =
      const VerificationMeta('captureRate');
  @override
  late final GeneratedColumn<int> captureRate = GeneratedColumn<int>(
      'capture_rate', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _baseHappinessMeta =
      const VerificationMeta('baseHappiness');
  @override
  late final GeneratedColumn<int> baseHappiness = GeneratedColumn<int>(
      'base_happiness', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _isBabyMeta = const VerificationMeta('isBaby');
  @override
  late final GeneratedColumn<bool> isBaby = GeneratedColumn<bool>(
      'is_baby', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_baby" IN (0, 1))'));
  static const VerificationMeta _hatchCounterMeta =
      const VerificationMeta('hatchCounter');
  @override
  late final GeneratedColumn<int> hatchCounter = GeneratedColumn<int>(
      'hatch_counter', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _hasGenderDifferencesMeta =
      const VerificationMeta('hasGenderDifferences');
  @override
  late final GeneratedColumn<bool> hasGenderDifferences = GeneratedColumn<bool>(
      'has_gender_differences', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("has_gender_differences" IN (0, 1))'));
  static const VerificationMeta _formsSwitchableMeta =
      const VerificationMeta('formsSwitchable');
  @override
  late final GeneratedColumn<bool> formsSwitchable = GeneratedColumn<bool>(
      'forms_switchable', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("forms_switchable" IN (0, 1))'));
  static const VerificationMeta _evolutionChainIdMeta =
      const VerificationMeta('evolutionChainId');
  @override
  late final GeneratedColumn<int> evolutionChainId = GeneratedColumn<int>(
      'evolution_chain_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _generationIdMeta =
      const VerificationMeta('generationId');
  @override
  late final GeneratedColumn<int> generationId = GeneratedColumn<int>(
      'generation_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _growthRateIdMeta =
      const VerificationMeta('growthRateId');
  @override
  late final GeneratedColumn<int> growthRateId = GeneratedColumn<int>(
      'growth_rate_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _pokemonColorIdMeta =
      const VerificationMeta('pokemonColorId');
  @override
  late final GeneratedColumn<int> pokemonColorId = GeneratedColumn<int>(
      'pokemon_color_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _pokemonHabitatIdMeta =
      const VerificationMeta('pokemonHabitatId');
  @override
  late final GeneratedColumn<int> pokemonHabitatId = GeneratedColumn<int>(
      'pokemon_habitat_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _pokemonShapeIdMeta =
      const VerificationMeta('pokemonShapeId');
  @override
  late final GeneratedColumn<int> pokemonShapeId = GeneratedColumn<int>(
      'pokemon_shape_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _isLegendaryMeta =
      const VerificationMeta('isLegendary');
  @override
  late final GeneratedColumn<bool> isLegendary = GeneratedColumn<bool>(
      'is_legendary', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_legendary" IN (0, 1))'));
  static const VerificationMeta _isMythicalMeta =
      const VerificationMeta('isMythical');
  @override
  late final GeneratedColumn<bool> isMythical = GeneratedColumn<bool>(
      'is_mythical', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_mythical" IN (0, 1))'));
  static const VerificationMeta _evolvesFromSpeciesIdMeta =
      const VerificationMeta('evolvesFromSpeciesId');
  @override
  late final GeneratedColumn<int> evolvesFromSpeciesId = GeneratedColumn<int>(
      'evolves_from_species_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        order,
        genderRate,
        captureRate,
        baseHappiness,
        isBaby,
        hatchCounter,
        hasGenderDifferences,
        formsSwitchable,
        evolutionChainId,
        generationId,
        growthRateId,
        pokemonColorId,
        pokemonHabitatId,
        pokemonShapeId,
        isLegendary,
        isMythical,
        evolvesFromSpeciesId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pokemon_v2_pokemonspecies';
  @override
  VerificationContext validateIntegrity(
      Insertable<PokemonSpeciesModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('order')) {
      context.handle(
          _orderMeta, order.isAcceptableOrUnknown(data['order']!, _orderMeta));
    }
    if (data.containsKey('gender_rate')) {
      context.handle(
          _genderRateMeta,
          genderRate.isAcceptableOrUnknown(
              data['gender_rate']!, _genderRateMeta));
    }
    if (data.containsKey('capture_rate')) {
      context.handle(
          _captureRateMeta,
          captureRate.isAcceptableOrUnknown(
              data['capture_rate']!, _captureRateMeta));
    }
    if (data.containsKey('base_happiness')) {
      context.handle(
          _baseHappinessMeta,
          baseHappiness.isAcceptableOrUnknown(
              data['base_happiness']!, _baseHappinessMeta));
    }
    if (data.containsKey('is_baby')) {
      context.handle(_isBabyMeta,
          isBaby.isAcceptableOrUnknown(data['is_baby']!, _isBabyMeta));
    } else if (isInserting) {
      context.missing(_isBabyMeta);
    }
    if (data.containsKey('hatch_counter')) {
      context.handle(
          _hatchCounterMeta,
          hatchCounter.isAcceptableOrUnknown(
              data['hatch_counter']!, _hatchCounterMeta));
    }
    if (data.containsKey('has_gender_differences')) {
      context.handle(
          _hasGenderDifferencesMeta,
          hasGenderDifferences.isAcceptableOrUnknown(
              data['has_gender_differences']!, _hasGenderDifferencesMeta));
    } else if (isInserting) {
      context.missing(_hasGenderDifferencesMeta);
    }
    if (data.containsKey('forms_switchable')) {
      context.handle(
          _formsSwitchableMeta,
          formsSwitchable.isAcceptableOrUnknown(
              data['forms_switchable']!, _formsSwitchableMeta));
    } else if (isInserting) {
      context.missing(_formsSwitchableMeta);
    }
    if (data.containsKey('evolution_chain_id')) {
      context.handle(
          _evolutionChainIdMeta,
          evolutionChainId.isAcceptableOrUnknown(
              data['evolution_chain_id']!, _evolutionChainIdMeta));
    }
    if (data.containsKey('generation_id')) {
      context.handle(
          _generationIdMeta,
          generationId.isAcceptableOrUnknown(
              data['generation_id']!, _generationIdMeta));
    }
    if (data.containsKey('growth_rate_id')) {
      context.handle(
          _growthRateIdMeta,
          growthRateId.isAcceptableOrUnknown(
              data['growth_rate_id']!, _growthRateIdMeta));
    }
    if (data.containsKey('pokemon_color_id')) {
      context.handle(
          _pokemonColorIdMeta,
          pokemonColorId.isAcceptableOrUnknown(
              data['pokemon_color_id']!, _pokemonColorIdMeta));
    }
    if (data.containsKey('pokemon_habitat_id')) {
      context.handle(
          _pokemonHabitatIdMeta,
          pokemonHabitatId.isAcceptableOrUnknown(
              data['pokemon_habitat_id']!, _pokemonHabitatIdMeta));
    }
    if (data.containsKey('pokemon_shape_id')) {
      context.handle(
          _pokemonShapeIdMeta,
          pokemonShapeId.isAcceptableOrUnknown(
              data['pokemon_shape_id']!, _pokemonShapeIdMeta));
    }
    if (data.containsKey('is_legendary')) {
      context.handle(
          _isLegendaryMeta,
          isLegendary.isAcceptableOrUnknown(
              data['is_legendary']!, _isLegendaryMeta));
    } else if (isInserting) {
      context.missing(_isLegendaryMeta);
    }
    if (data.containsKey('is_mythical')) {
      context.handle(
          _isMythicalMeta,
          isMythical.isAcceptableOrUnknown(
              data['is_mythical']!, _isMythicalMeta));
    } else if (isInserting) {
      context.missing(_isMythicalMeta);
    }
    if (data.containsKey('evolves_from_species_id')) {
      context.handle(
          _evolvesFromSpeciesIdMeta,
          evolvesFromSpeciesId.isAcceptableOrUnknown(
              data['evolves_from_species_id']!, _evolvesFromSpeciesIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PokemonSpeciesModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PokemonSpeciesModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      order: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order']),
      genderRate: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}gender_rate']),
      captureRate: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}capture_rate']),
      baseHappiness: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}base_happiness']),
      isBaby: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_baby'])!,
      hatchCounter: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}hatch_counter']),
      hasGenderDifferences: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}has_gender_differences'])!,
      formsSwitchable: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}forms_switchable'])!,
      evolutionChainId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}evolution_chain_id']),
      generationId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}generation_id']),
      growthRateId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}growth_rate_id']),
      pokemonColorId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pokemon_color_id']),
      pokemonHabitatId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pokemon_habitat_id']),
      pokemonShapeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pokemon_shape_id']),
      isLegendary: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_legendary'])!,
      isMythical: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_mythical'])!,
      evolvesFromSpeciesId: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}evolves_from_species_id']),
    );
  }

  @override
  $PokemonSpeciesTable createAlias(String alias) {
    return $PokemonSpeciesTable(attachedDatabase, alias);
  }
}

class PokemonSpeciesModel extends DataClass
    implements Insertable<PokemonSpeciesModel> {
  final int id;
  final String name;
  final int? order;
  final int? genderRate;
  final int? captureRate;
  final int? baseHappiness;
  final bool isBaby;
  final int? hatchCounter;
  final bool hasGenderDifferences;
  final bool formsSwitchable;
  final int? evolutionChainId;
  final int? generationId;
  final int? growthRateId;
  final int? pokemonColorId;
  final int? pokemonHabitatId;
  final int? pokemonShapeId;
  final bool isLegendary;
  final bool isMythical;
  final int? evolvesFromSpeciesId;
  const PokemonSpeciesModel(
      {required this.id,
      required this.name,
      this.order,
      this.genderRate,
      this.captureRate,
      this.baseHappiness,
      required this.isBaby,
      this.hatchCounter,
      required this.hasGenderDifferences,
      required this.formsSwitchable,
      this.evolutionChainId,
      this.generationId,
      this.growthRateId,
      this.pokemonColorId,
      this.pokemonHabitatId,
      this.pokemonShapeId,
      required this.isLegendary,
      required this.isMythical,
      this.evolvesFromSpeciesId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || order != null) {
      map['order'] = Variable<int>(order);
    }
    if (!nullToAbsent || genderRate != null) {
      map['gender_rate'] = Variable<int>(genderRate);
    }
    if (!nullToAbsent || captureRate != null) {
      map['capture_rate'] = Variable<int>(captureRate);
    }
    if (!nullToAbsent || baseHappiness != null) {
      map['base_happiness'] = Variable<int>(baseHappiness);
    }
    map['is_baby'] = Variable<bool>(isBaby);
    if (!nullToAbsent || hatchCounter != null) {
      map['hatch_counter'] = Variable<int>(hatchCounter);
    }
    map['has_gender_differences'] = Variable<bool>(hasGenderDifferences);
    map['forms_switchable'] = Variable<bool>(formsSwitchable);
    if (!nullToAbsent || evolutionChainId != null) {
      map['evolution_chain_id'] = Variable<int>(evolutionChainId);
    }
    if (!nullToAbsent || generationId != null) {
      map['generation_id'] = Variable<int>(generationId);
    }
    if (!nullToAbsent || growthRateId != null) {
      map['growth_rate_id'] = Variable<int>(growthRateId);
    }
    if (!nullToAbsent || pokemonColorId != null) {
      map['pokemon_color_id'] = Variable<int>(pokemonColorId);
    }
    if (!nullToAbsent || pokemonHabitatId != null) {
      map['pokemon_habitat_id'] = Variable<int>(pokemonHabitatId);
    }
    if (!nullToAbsent || pokemonShapeId != null) {
      map['pokemon_shape_id'] = Variable<int>(pokemonShapeId);
    }
    map['is_legendary'] = Variable<bool>(isLegendary);
    map['is_mythical'] = Variable<bool>(isMythical);
    if (!nullToAbsent || evolvesFromSpeciesId != null) {
      map['evolves_from_species_id'] = Variable<int>(evolvesFromSpeciesId);
    }
    return map;
  }

  PokemonSpeciesCompanion toCompanion(bool nullToAbsent) {
    return PokemonSpeciesCompanion(
      id: Value(id),
      name: Value(name),
      order:
          order == null && nullToAbsent ? const Value.absent() : Value(order),
      genderRate: genderRate == null && nullToAbsent
          ? const Value.absent()
          : Value(genderRate),
      captureRate: captureRate == null && nullToAbsent
          ? const Value.absent()
          : Value(captureRate),
      baseHappiness: baseHappiness == null && nullToAbsent
          ? const Value.absent()
          : Value(baseHappiness),
      isBaby: Value(isBaby),
      hatchCounter: hatchCounter == null && nullToAbsent
          ? const Value.absent()
          : Value(hatchCounter),
      hasGenderDifferences: Value(hasGenderDifferences),
      formsSwitchable: Value(formsSwitchable),
      evolutionChainId: evolutionChainId == null && nullToAbsent
          ? const Value.absent()
          : Value(evolutionChainId),
      generationId: generationId == null && nullToAbsent
          ? const Value.absent()
          : Value(generationId),
      growthRateId: growthRateId == null && nullToAbsent
          ? const Value.absent()
          : Value(growthRateId),
      pokemonColorId: pokemonColorId == null && nullToAbsent
          ? const Value.absent()
          : Value(pokemonColorId),
      pokemonHabitatId: pokemonHabitatId == null && nullToAbsent
          ? const Value.absent()
          : Value(pokemonHabitatId),
      pokemonShapeId: pokemonShapeId == null && nullToAbsent
          ? const Value.absent()
          : Value(pokemonShapeId),
      isLegendary: Value(isLegendary),
      isMythical: Value(isMythical),
      evolvesFromSpeciesId: evolvesFromSpeciesId == null && nullToAbsent
          ? const Value.absent()
          : Value(evolvesFromSpeciesId),
    );
  }

  factory PokemonSpeciesModel.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PokemonSpeciesModel(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      order: serializer.fromJson<int?>(json['order']),
      genderRate: serializer.fromJson<int?>(json['genderRate']),
      captureRate: serializer.fromJson<int?>(json['captureRate']),
      baseHappiness: serializer.fromJson<int?>(json['baseHappiness']),
      isBaby: serializer.fromJson<bool>(json['isBaby']),
      hatchCounter: serializer.fromJson<int?>(json['hatchCounter']),
      hasGenderDifferences:
          serializer.fromJson<bool>(json['hasGenderDifferences']),
      formsSwitchable: serializer.fromJson<bool>(json['formsSwitchable']),
      evolutionChainId: serializer.fromJson<int?>(json['evolutionChainId']),
      generationId: serializer.fromJson<int?>(json['generationId']),
      growthRateId: serializer.fromJson<int?>(json['growthRateId']),
      pokemonColorId: serializer.fromJson<int?>(json['pokemonColorId']),
      pokemonHabitatId: serializer.fromJson<int?>(json['pokemonHabitatId']),
      pokemonShapeId: serializer.fromJson<int?>(json['pokemonShapeId']),
      isLegendary: serializer.fromJson<bool>(json['isLegendary']),
      isMythical: serializer.fromJson<bool>(json['isMythical']),
      evolvesFromSpeciesId:
          serializer.fromJson<int?>(json['evolvesFromSpeciesId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'order': serializer.toJson<int?>(order),
      'genderRate': serializer.toJson<int?>(genderRate),
      'captureRate': serializer.toJson<int?>(captureRate),
      'baseHappiness': serializer.toJson<int?>(baseHappiness),
      'isBaby': serializer.toJson<bool>(isBaby),
      'hatchCounter': serializer.toJson<int?>(hatchCounter),
      'hasGenderDifferences': serializer.toJson<bool>(hasGenderDifferences),
      'formsSwitchable': serializer.toJson<bool>(formsSwitchable),
      'evolutionChainId': serializer.toJson<int?>(evolutionChainId),
      'generationId': serializer.toJson<int?>(generationId),
      'growthRateId': serializer.toJson<int?>(growthRateId),
      'pokemonColorId': serializer.toJson<int?>(pokemonColorId),
      'pokemonHabitatId': serializer.toJson<int?>(pokemonHabitatId),
      'pokemonShapeId': serializer.toJson<int?>(pokemonShapeId),
      'isLegendary': serializer.toJson<bool>(isLegendary),
      'isMythical': serializer.toJson<bool>(isMythical),
      'evolvesFromSpeciesId': serializer.toJson<int?>(evolvesFromSpeciesId),
    };
  }

  PokemonSpeciesModel copyWith(
          {int? id,
          String? name,
          Value<int?> order = const Value.absent(),
          Value<int?> genderRate = const Value.absent(),
          Value<int?> captureRate = const Value.absent(),
          Value<int?> baseHappiness = const Value.absent(),
          bool? isBaby,
          Value<int?> hatchCounter = const Value.absent(),
          bool? hasGenderDifferences,
          bool? formsSwitchable,
          Value<int?> evolutionChainId = const Value.absent(),
          Value<int?> generationId = const Value.absent(),
          Value<int?> growthRateId = const Value.absent(),
          Value<int?> pokemonColorId = const Value.absent(),
          Value<int?> pokemonHabitatId = const Value.absent(),
          Value<int?> pokemonShapeId = const Value.absent(),
          bool? isLegendary,
          bool? isMythical,
          Value<int?> evolvesFromSpeciesId = const Value.absent()}) =>
      PokemonSpeciesModel(
        id: id ?? this.id,
        name: name ?? this.name,
        order: order.present ? order.value : this.order,
        genderRate: genderRate.present ? genderRate.value : this.genderRate,
        captureRate: captureRate.present ? captureRate.value : this.captureRate,
        baseHappiness:
            baseHappiness.present ? baseHappiness.value : this.baseHappiness,
        isBaby: isBaby ?? this.isBaby,
        hatchCounter:
            hatchCounter.present ? hatchCounter.value : this.hatchCounter,
        hasGenderDifferences: hasGenderDifferences ?? this.hasGenderDifferences,
        formsSwitchable: formsSwitchable ?? this.formsSwitchable,
        evolutionChainId: evolutionChainId.present
            ? evolutionChainId.value
            : this.evolutionChainId,
        generationId:
            generationId.present ? generationId.value : this.generationId,
        growthRateId:
            growthRateId.present ? growthRateId.value : this.growthRateId,
        pokemonColorId:
            pokemonColorId.present ? pokemonColorId.value : this.pokemonColorId,
        pokemonHabitatId: pokemonHabitatId.present
            ? pokemonHabitatId.value
            : this.pokemonHabitatId,
        pokemonShapeId:
            pokemonShapeId.present ? pokemonShapeId.value : this.pokemonShapeId,
        isLegendary: isLegendary ?? this.isLegendary,
        isMythical: isMythical ?? this.isMythical,
        evolvesFromSpeciesId: evolvesFromSpeciesId.present
            ? evolvesFromSpeciesId.value
            : this.evolvesFromSpeciesId,
      );
  @override
  String toString() {
    return (StringBuffer('PokemonSpeciesModel(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('order: $order, ')
          ..write('genderRate: $genderRate, ')
          ..write('captureRate: $captureRate, ')
          ..write('baseHappiness: $baseHappiness, ')
          ..write('isBaby: $isBaby, ')
          ..write('hatchCounter: $hatchCounter, ')
          ..write('hasGenderDifferences: $hasGenderDifferences, ')
          ..write('formsSwitchable: $formsSwitchable, ')
          ..write('evolutionChainId: $evolutionChainId, ')
          ..write('generationId: $generationId, ')
          ..write('growthRateId: $growthRateId, ')
          ..write('pokemonColorId: $pokemonColorId, ')
          ..write('pokemonHabitatId: $pokemonHabitatId, ')
          ..write('pokemonShapeId: $pokemonShapeId, ')
          ..write('isLegendary: $isLegendary, ')
          ..write('isMythical: $isMythical, ')
          ..write('evolvesFromSpeciesId: $evolvesFromSpeciesId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      name,
      order,
      genderRate,
      captureRate,
      baseHappiness,
      isBaby,
      hatchCounter,
      hasGenderDifferences,
      formsSwitchable,
      evolutionChainId,
      generationId,
      growthRateId,
      pokemonColorId,
      pokemonHabitatId,
      pokemonShapeId,
      isLegendary,
      isMythical,
      evolvesFromSpeciesId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PokemonSpeciesModel &&
          other.id == this.id &&
          other.name == this.name &&
          other.order == this.order &&
          other.genderRate == this.genderRate &&
          other.captureRate == this.captureRate &&
          other.baseHappiness == this.baseHappiness &&
          other.isBaby == this.isBaby &&
          other.hatchCounter == this.hatchCounter &&
          other.hasGenderDifferences == this.hasGenderDifferences &&
          other.formsSwitchable == this.formsSwitchable &&
          other.evolutionChainId == this.evolutionChainId &&
          other.generationId == this.generationId &&
          other.growthRateId == this.growthRateId &&
          other.pokemonColorId == this.pokemonColorId &&
          other.pokemonHabitatId == this.pokemonHabitatId &&
          other.pokemonShapeId == this.pokemonShapeId &&
          other.isLegendary == this.isLegendary &&
          other.isMythical == this.isMythical &&
          other.evolvesFromSpeciesId == this.evolvesFromSpeciesId);
}

class PokemonSpeciesCompanion extends UpdateCompanion<PokemonSpeciesModel> {
  final Value<int> id;
  final Value<String> name;
  final Value<int?> order;
  final Value<int?> genderRate;
  final Value<int?> captureRate;
  final Value<int?> baseHappiness;
  final Value<bool> isBaby;
  final Value<int?> hatchCounter;
  final Value<bool> hasGenderDifferences;
  final Value<bool> formsSwitchable;
  final Value<int?> evolutionChainId;
  final Value<int?> generationId;
  final Value<int?> growthRateId;
  final Value<int?> pokemonColorId;
  final Value<int?> pokemonHabitatId;
  final Value<int?> pokemonShapeId;
  final Value<bool> isLegendary;
  final Value<bool> isMythical;
  final Value<int?> evolvesFromSpeciesId;
  const PokemonSpeciesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.order = const Value.absent(),
    this.genderRate = const Value.absent(),
    this.captureRate = const Value.absent(),
    this.baseHappiness = const Value.absent(),
    this.isBaby = const Value.absent(),
    this.hatchCounter = const Value.absent(),
    this.hasGenderDifferences = const Value.absent(),
    this.formsSwitchable = const Value.absent(),
    this.evolutionChainId = const Value.absent(),
    this.generationId = const Value.absent(),
    this.growthRateId = const Value.absent(),
    this.pokemonColorId = const Value.absent(),
    this.pokemonHabitatId = const Value.absent(),
    this.pokemonShapeId = const Value.absent(),
    this.isLegendary = const Value.absent(),
    this.isMythical = const Value.absent(),
    this.evolvesFromSpeciesId = const Value.absent(),
  });
  PokemonSpeciesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.order = const Value.absent(),
    this.genderRate = const Value.absent(),
    this.captureRate = const Value.absent(),
    this.baseHappiness = const Value.absent(),
    required bool isBaby,
    this.hatchCounter = const Value.absent(),
    required bool hasGenderDifferences,
    required bool formsSwitchable,
    this.evolutionChainId = const Value.absent(),
    this.generationId = const Value.absent(),
    this.growthRateId = const Value.absent(),
    this.pokemonColorId = const Value.absent(),
    this.pokemonHabitatId = const Value.absent(),
    this.pokemonShapeId = const Value.absent(),
    required bool isLegendary,
    required bool isMythical,
    this.evolvesFromSpeciesId = const Value.absent(),
  })  : name = Value(name),
        isBaby = Value(isBaby),
        hasGenderDifferences = Value(hasGenderDifferences),
        formsSwitchable = Value(formsSwitchable),
        isLegendary = Value(isLegendary),
        isMythical = Value(isMythical);
  static Insertable<PokemonSpeciesModel> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? order,
    Expression<int>? genderRate,
    Expression<int>? captureRate,
    Expression<int>? baseHappiness,
    Expression<bool>? isBaby,
    Expression<int>? hatchCounter,
    Expression<bool>? hasGenderDifferences,
    Expression<bool>? formsSwitchable,
    Expression<int>? evolutionChainId,
    Expression<int>? generationId,
    Expression<int>? growthRateId,
    Expression<int>? pokemonColorId,
    Expression<int>? pokemonHabitatId,
    Expression<int>? pokemonShapeId,
    Expression<bool>? isLegendary,
    Expression<bool>? isMythical,
    Expression<int>? evolvesFromSpeciesId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (order != null) 'order': order,
      if (genderRate != null) 'gender_rate': genderRate,
      if (captureRate != null) 'capture_rate': captureRate,
      if (baseHappiness != null) 'base_happiness': baseHappiness,
      if (isBaby != null) 'is_baby': isBaby,
      if (hatchCounter != null) 'hatch_counter': hatchCounter,
      if (hasGenderDifferences != null)
        'has_gender_differences': hasGenderDifferences,
      if (formsSwitchable != null) 'forms_switchable': formsSwitchable,
      if (evolutionChainId != null) 'evolution_chain_id': evolutionChainId,
      if (generationId != null) 'generation_id': generationId,
      if (growthRateId != null) 'growth_rate_id': growthRateId,
      if (pokemonColorId != null) 'pokemon_color_id': pokemonColorId,
      if (pokemonHabitatId != null) 'pokemon_habitat_id': pokemonHabitatId,
      if (pokemonShapeId != null) 'pokemon_shape_id': pokemonShapeId,
      if (isLegendary != null) 'is_legendary': isLegendary,
      if (isMythical != null) 'is_mythical': isMythical,
      if (evolvesFromSpeciesId != null)
        'evolves_from_species_id': evolvesFromSpeciesId,
    });
  }

  PokemonSpeciesCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<int?>? order,
      Value<int?>? genderRate,
      Value<int?>? captureRate,
      Value<int?>? baseHappiness,
      Value<bool>? isBaby,
      Value<int?>? hatchCounter,
      Value<bool>? hasGenderDifferences,
      Value<bool>? formsSwitchable,
      Value<int?>? evolutionChainId,
      Value<int?>? generationId,
      Value<int?>? growthRateId,
      Value<int?>? pokemonColorId,
      Value<int?>? pokemonHabitatId,
      Value<int?>? pokemonShapeId,
      Value<bool>? isLegendary,
      Value<bool>? isMythical,
      Value<int?>? evolvesFromSpeciesId}) {
    return PokemonSpeciesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      order: order ?? this.order,
      genderRate: genderRate ?? this.genderRate,
      captureRate: captureRate ?? this.captureRate,
      baseHappiness: baseHappiness ?? this.baseHappiness,
      isBaby: isBaby ?? this.isBaby,
      hatchCounter: hatchCounter ?? this.hatchCounter,
      hasGenderDifferences: hasGenderDifferences ?? this.hasGenderDifferences,
      formsSwitchable: formsSwitchable ?? this.formsSwitchable,
      evolutionChainId: evolutionChainId ?? this.evolutionChainId,
      generationId: generationId ?? this.generationId,
      growthRateId: growthRateId ?? this.growthRateId,
      pokemonColorId: pokemonColorId ?? this.pokemonColorId,
      pokemonHabitatId: pokemonHabitatId ?? this.pokemonHabitatId,
      pokemonShapeId: pokemonShapeId ?? this.pokemonShapeId,
      isLegendary: isLegendary ?? this.isLegendary,
      isMythical: isMythical ?? this.isMythical,
      evolvesFromSpeciesId: evolvesFromSpeciesId ?? this.evolvesFromSpeciesId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (order.present) {
      map['order'] = Variable<int>(order.value);
    }
    if (genderRate.present) {
      map['gender_rate'] = Variable<int>(genderRate.value);
    }
    if (captureRate.present) {
      map['capture_rate'] = Variable<int>(captureRate.value);
    }
    if (baseHappiness.present) {
      map['base_happiness'] = Variable<int>(baseHappiness.value);
    }
    if (isBaby.present) {
      map['is_baby'] = Variable<bool>(isBaby.value);
    }
    if (hatchCounter.present) {
      map['hatch_counter'] = Variable<int>(hatchCounter.value);
    }
    if (hasGenderDifferences.present) {
      map['has_gender_differences'] =
          Variable<bool>(hasGenderDifferences.value);
    }
    if (formsSwitchable.present) {
      map['forms_switchable'] = Variable<bool>(formsSwitchable.value);
    }
    if (evolutionChainId.present) {
      map['evolution_chain_id'] = Variable<int>(evolutionChainId.value);
    }
    if (generationId.present) {
      map['generation_id'] = Variable<int>(generationId.value);
    }
    if (growthRateId.present) {
      map['growth_rate_id'] = Variable<int>(growthRateId.value);
    }
    if (pokemonColorId.present) {
      map['pokemon_color_id'] = Variable<int>(pokemonColorId.value);
    }
    if (pokemonHabitatId.present) {
      map['pokemon_habitat_id'] = Variable<int>(pokemonHabitatId.value);
    }
    if (pokemonShapeId.present) {
      map['pokemon_shape_id'] = Variable<int>(pokemonShapeId.value);
    }
    if (isLegendary.present) {
      map['is_legendary'] = Variable<bool>(isLegendary.value);
    }
    if (isMythical.present) {
      map['is_mythical'] = Variable<bool>(isMythical.value);
    }
    if (evolvesFromSpeciesId.present) {
      map['evolves_from_species_id'] =
          Variable<int>(evolvesFromSpeciesId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PokemonSpeciesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('order: $order, ')
          ..write('genderRate: $genderRate, ')
          ..write('captureRate: $captureRate, ')
          ..write('baseHappiness: $baseHappiness, ')
          ..write('isBaby: $isBaby, ')
          ..write('hatchCounter: $hatchCounter, ')
          ..write('hasGenderDifferences: $hasGenderDifferences, ')
          ..write('formsSwitchable: $formsSwitchable, ')
          ..write('evolutionChainId: $evolutionChainId, ')
          ..write('generationId: $generationId, ')
          ..write('growthRateId: $growthRateId, ')
          ..write('pokemonColorId: $pokemonColorId, ')
          ..write('pokemonHabitatId: $pokemonHabitatId, ')
          ..write('pokemonShapeId: $pokemonShapeId, ')
          ..write('isLegendary: $isLegendary, ')
          ..write('isMythical: $isMythical, ')
          ..write('evolvesFromSpeciesId: $evolvesFromSpeciesId')
          ..write(')'))
        .toString();
  }
}

class $PokemonsTable extends Pokemons
    with TableInfo<$PokemonsTable, PokemonModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PokemonsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orderMeta = const VerificationMeta('order');
  @override
  late final GeneratedColumn<int> order = GeneratedColumn<int>(
      'order', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _weightMeta = const VerificationMeta('weight');
  @override
  late final GeneratedColumn<int> weight = GeneratedColumn<int>(
      'weight', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<int> height = GeneratedColumn<int>(
      'height', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _isDefaultMeta =
      const VerificationMeta('isDefault');
  @override
  late final GeneratedColumn<bool> isDefault = GeneratedColumn<bool>(
      'is_default', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_default" IN (0, 1))'));
  static const VerificationMeta _pokemonSpeciesIdMeta =
      const VerificationMeta('pokemonSpeciesId');
  @override
  late final GeneratedColumn<int> pokemonSpeciesId = GeneratedColumn<int>(
      'pokemon_species_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES pokemon_v2_pokemonspecies (id)'));
  static const VerificationMeta _baseExperienceMeta =
      const VerificationMeta('baseExperience');
  @override
  late final GeneratedColumn<int> baseExperience = GeneratedColumn<int>(
      'base_experience', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        order,
        weight,
        height,
        isDefault,
        pokemonSpeciesId,
        baseExperience
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pokemon_v2_pokemon';
  @override
  VerificationContext validateIntegrity(Insertable<PokemonModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('order')) {
      context.handle(
          _orderMeta, order.isAcceptableOrUnknown(data['order']!, _orderMeta));
    }
    if (data.containsKey('weight')) {
      context.handle(_weightMeta,
          weight.isAcceptableOrUnknown(data['weight']!, _weightMeta));
    }
    if (data.containsKey('height')) {
      context.handle(_heightMeta,
          height.isAcceptableOrUnknown(data['height']!, _heightMeta));
    }
    if (data.containsKey('is_default')) {
      context.handle(_isDefaultMeta,
          isDefault.isAcceptableOrUnknown(data['is_default']!, _isDefaultMeta));
    } else if (isInserting) {
      context.missing(_isDefaultMeta);
    }
    if (data.containsKey('pokemon_species_id')) {
      context.handle(
          _pokemonSpeciesIdMeta,
          pokemonSpeciesId.isAcceptableOrUnknown(
              data['pokemon_species_id']!, _pokemonSpeciesIdMeta));
    }
    if (data.containsKey('base_experience')) {
      context.handle(
          _baseExperienceMeta,
          baseExperience.isAcceptableOrUnknown(
              data['base_experience']!, _baseExperienceMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PokemonModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PokemonModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      order: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order']),
      weight: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}weight']),
      height: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}height']),
      isDefault: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_default'])!,
      pokemonSpeciesId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pokemon_species_id']),
      baseExperience: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}base_experience']),
    );
  }

  @override
  $PokemonsTable createAlias(String alias) {
    return $PokemonsTable(attachedDatabase, alias);
  }
}

class PokemonModel extends DataClass implements Insertable<PokemonModel> {
  final int id;
  final String name;
  final int? order;
  final int? weight;
  final int? height;
  final bool isDefault;
  final int? pokemonSpeciesId;
  final int? baseExperience;
  const PokemonModel(
      {required this.id,
      required this.name,
      this.order,
      this.weight,
      this.height,
      required this.isDefault,
      this.pokemonSpeciesId,
      this.baseExperience});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || order != null) {
      map['order'] = Variable<int>(order);
    }
    if (!nullToAbsent || weight != null) {
      map['weight'] = Variable<int>(weight);
    }
    if (!nullToAbsent || height != null) {
      map['height'] = Variable<int>(height);
    }
    map['is_default'] = Variable<bool>(isDefault);
    if (!nullToAbsent || pokemonSpeciesId != null) {
      map['pokemon_species_id'] = Variable<int>(pokemonSpeciesId);
    }
    if (!nullToAbsent || baseExperience != null) {
      map['base_experience'] = Variable<int>(baseExperience);
    }
    return map;
  }

  PokemonsCompanion toCompanion(bool nullToAbsent) {
    return PokemonsCompanion(
      id: Value(id),
      name: Value(name),
      order:
          order == null && nullToAbsent ? const Value.absent() : Value(order),
      weight:
          weight == null && nullToAbsent ? const Value.absent() : Value(weight),
      height:
          height == null && nullToAbsent ? const Value.absent() : Value(height),
      isDefault: Value(isDefault),
      pokemonSpeciesId: pokemonSpeciesId == null && nullToAbsent
          ? const Value.absent()
          : Value(pokemonSpeciesId),
      baseExperience: baseExperience == null && nullToAbsent
          ? const Value.absent()
          : Value(baseExperience),
    );
  }

  factory PokemonModel.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PokemonModel(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      order: serializer.fromJson<int?>(json['order']),
      weight: serializer.fromJson<int?>(json['weight']),
      height: serializer.fromJson<int?>(json['height']),
      isDefault: serializer.fromJson<bool>(json['isDefault']),
      pokemonSpeciesId: serializer.fromJson<int?>(json['pokemonSpeciesId']),
      baseExperience: serializer.fromJson<int?>(json['baseExperience']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'order': serializer.toJson<int?>(order),
      'weight': serializer.toJson<int?>(weight),
      'height': serializer.toJson<int?>(height),
      'isDefault': serializer.toJson<bool>(isDefault),
      'pokemonSpeciesId': serializer.toJson<int?>(pokemonSpeciesId),
      'baseExperience': serializer.toJson<int?>(baseExperience),
    };
  }

  PokemonModel copyWith(
          {int? id,
          String? name,
          Value<int?> order = const Value.absent(),
          Value<int?> weight = const Value.absent(),
          Value<int?> height = const Value.absent(),
          bool? isDefault,
          Value<int?> pokemonSpeciesId = const Value.absent(),
          Value<int?> baseExperience = const Value.absent()}) =>
      PokemonModel(
        id: id ?? this.id,
        name: name ?? this.name,
        order: order.present ? order.value : this.order,
        weight: weight.present ? weight.value : this.weight,
        height: height.present ? height.value : this.height,
        isDefault: isDefault ?? this.isDefault,
        pokemonSpeciesId: pokemonSpeciesId.present
            ? pokemonSpeciesId.value
            : this.pokemonSpeciesId,
        baseExperience:
            baseExperience.present ? baseExperience.value : this.baseExperience,
      );
  @override
  String toString() {
    return (StringBuffer('PokemonModel(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('order: $order, ')
          ..write('weight: $weight, ')
          ..write('height: $height, ')
          ..write('isDefault: $isDefault, ')
          ..write('pokemonSpeciesId: $pokemonSpeciesId, ')
          ..write('baseExperience: $baseExperience')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, order, weight, height, isDefault,
      pokemonSpeciesId, baseExperience);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PokemonModel &&
          other.id == this.id &&
          other.name == this.name &&
          other.order == this.order &&
          other.weight == this.weight &&
          other.height == this.height &&
          other.isDefault == this.isDefault &&
          other.pokemonSpeciesId == this.pokemonSpeciesId &&
          other.baseExperience == this.baseExperience);
}

class PokemonsCompanion extends UpdateCompanion<PokemonModel> {
  final Value<int> id;
  final Value<String> name;
  final Value<int?> order;
  final Value<int?> weight;
  final Value<int?> height;
  final Value<bool> isDefault;
  final Value<int?> pokemonSpeciesId;
  final Value<int?> baseExperience;
  const PokemonsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.order = const Value.absent(),
    this.weight = const Value.absent(),
    this.height = const Value.absent(),
    this.isDefault = const Value.absent(),
    this.pokemonSpeciesId = const Value.absent(),
    this.baseExperience = const Value.absent(),
  });
  PokemonsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.order = const Value.absent(),
    this.weight = const Value.absent(),
    this.height = const Value.absent(),
    required bool isDefault,
    this.pokemonSpeciesId = const Value.absent(),
    this.baseExperience = const Value.absent(),
  })  : name = Value(name),
        isDefault = Value(isDefault);
  static Insertable<PokemonModel> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? order,
    Expression<int>? weight,
    Expression<int>? height,
    Expression<bool>? isDefault,
    Expression<int>? pokemonSpeciesId,
    Expression<int>? baseExperience,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (order != null) 'order': order,
      if (weight != null) 'weight': weight,
      if (height != null) 'height': height,
      if (isDefault != null) 'is_default': isDefault,
      if (pokemonSpeciesId != null) 'pokemon_species_id': pokemonSpeciesId,
      if (baseExperience != null) 'base_experience': baseExperience,
    });
  }

  PokemonsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<int?>? order,
      Value<int?>? weight,
      Value<int?>? height,
      Value<bool>? isDefault,
      Value<int?>? pokemonSpeciesId,
      Value<int?>? baseExperience}) {
    return PokemonsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      order: order ?? this.order,
      weight: weight ?? this.weight,
      height: height ?? this.height,
      isDefault: isDefault ?? this.isDefault,
      pokemonSpeciesId: pokemonSpeciesId ?? this.pokemonSpeciesId,
      baseExperience: baseExperience ?? this.baseExperience,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (order.present) {
      map['order'] = Variable<int>(order.value);
    }
    if (weight.present) {
      map['weight'] = Variable<int>(weight.value);
    }
    if (height.present) {
      map['height'] = Variable<int>(height.value);
    }
    if (isDefault.present) {
      map['is_default'] = Variable<bool>(isDefault.value);
    }
    if (pokemonSpeciesId.present) {
      map['pokemon_species_id'] = Variable<int>(pokemonSpeciesId.value);
    }
    if (baseExperience.present) {
      map['base_experience'] = Variable<int>(baseExperience.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PokemonsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('order: $order, ')
          ..write('weight: $weight, ')
          ..write('height: $height, ')
          ..write('isDefault: $isDefault, ')
          ..write('pokemonSpeciesId: $pokemonSpeciesId, ')
          ..write('baseExperience: $baseExperience')
          ..write(')'))
        .toString();
  }
}

class $PokemonSpeciesFlavorTextTable extends PokemonSpeciesFlavorText
    with
        TableInfo<$PokemonSpeciesFlavorTextTable,
            PokemonSpeciesFlavorTextModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PokemonSpeciesFlavorTextTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _flavorTextMeta =
      const VerificationMeta('flavorText');
  @override
  late final GeneratedColumn<String> flavorText = GeneratedColumn<String>(
      'flavor_text', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 0, maxTextLength: 500),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _languageIdMeta =
      const VerificationMeta('languageId');
  @override
  late final GeneratedColumn<int> languageId = GeneratedColumn<int>(
      'language_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _pokemonSpeciesIdMeta =
      const VerificationMeta('pokemonSpeciesId');
  @override
  late final GeneratedColumn<int> pokemonSpeciesId = GeneratedColumn<int>(
      'pokemon_species_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _versionIdMeta =
      const VerificationMeta('versionId');
  @override
  late final GeneratedColumn<int> versionId = GeneratedColumn<int>(
      'version_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, flavorText, languageId, pokemonSpeciesId, versionId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pokemon_v2_pokemonspeciesflavortext';
  @override
  VerificationContext validateIntegrity(
      Insertable<PokemonSpeciesFlavorTextModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('flavor_text')) {
      context.handle(
          _flavorTextMeta,
          flavorText.isAcceptableOrUnknown(
              data['flavor_text']!, _flavorTextMeta));
    } else if (isInserting) {
      context.missing(_flavorTextMeta);
    }
    if (data.containsKey('language_id')) {
      context.handle(
          _languageIdMeta,
          languageId.isAcceptableOrUnknown(
              data['language_id']!, _languageIdMeta));
    }
    if (data.containsKey('pokemon_species_id')) {
      context.handle(
          _pokemonSpeciesIdMeta,
          pokemonSpeciesId.isAcceptableOrUnknown(
              data['pokemon_species_id']!, _pokemonSpeciesIdMeta));
    }
    if (data.containsKey('version_id')) {
      context.handle(_versionIdMeta,
          versionId.isAcceptableOrUnknown(data['version_id']!, _versionIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PokemonSpeciesFlavorTextModel map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PokemonSpeciesFlavorTextModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      flavorText: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}flavor_text'])!,
      languageId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}language_id']),
      pokemonSpeciesId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pokemon_species_id']),
      versionId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}version_id']),
    );
  }

  @override
  $PokemonSpeciesFlavorTextTable createAlias(String alias) {
    return $PokemonSpeciesFlavorTextTable(attachedDatabase, alias);
  }
}

class PokemonSpeciesFlavorTextModel extends DataClass
    implements Insertable<PokemonSpeciesFlavorTextModel> {
  final int id;
  final String flavorText;
  final int? languageId;
  final int? pokemonSpeciesId;
  final int? versionId;
  const PokemonSpeciesFlavorTextModel(
      {required this.id,
      required this.flavorText,
      this.languageId,
      this.pokemonSpeciesId,
      this.versionId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['flavor_text'] = Variable<String>(flavorText);
    if (!nullToAbsent || languageId != null) {
      map['language_id'] = Variable<int>(languageId);
    }
    if (!nullToAbsent || pokemonSpeciesId != null) {
      map['pokemon_species_id'] = Variable<int>(pokemonSpeciesId);
    }
    if (!nullToAbsent || versionId != null) {
      map['version_id'] = Variable<int>(versionId);
    }
    return map;
  }

  PokemonSpeciesFlavorTextCompanion toCompanion(bool nullToAbsent) {
    return PokemonSpeciesFlavorTextCompanion(
      id: Value(id),
      flavorText: Value(flavorText),
      languageId: languageId == null && nullToAbsent
          ? const Value.absent()
          : Value(languageId),
      pokemonSpeciesId: pokemonSpeciesId == null && nullToAbsent
          ? const Value.absent()
          : Value(pokemonSpeciesId),
      versionId: versionId == null && nullToAbsent
          ? const Value.absent()
          : Value(versionId),
    );
  }

  factory PokemonSpeciesFlavorTextModel.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PokemonSpeciesFlavorTextModel(
      id: serializer.fromJson<int>(json['id']),
      flavorText: serializer.fromJson<String>(json['flavorText']),
      languageId: serializer.fromJson<int?>(json['languageId']),
      pokemonSpeciesId: serializer.fromJson<int?>(json['pokemonSpeciesId']),
      versionId: serializer.fromJson<int?>(json['versionId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'flavorText': serializer.toJson<String>(flavorText),
      'languageId': serializer.toJson<int?>(languageId),
      'pokemonSpeciesId': serializer.toJson<int?>(pokemonSpeciesId),
      'versionId': serializer.toJson<int?>(versionId),
    };
  }

  PokemonSpeciesFlavorTextModel copyWith(
          {int? id,
          String? flavorText,
          Value<int?> languageId = const Value.absent(),
          Value<int?> pokemonSpeciesId = const Value.absent(),
          Value<int?> versionId = const Value.absent()}) =>
      PokemonSpeciesFlavorTextModel(
        id: id ?? this.id,
        flavorText: flavorText ?? this.flavorText,
        languageId: languageId.present ? languageId.value : this.languageId,
        pokemonSpeciesId: pokemonSpeciesId.present
            ? pokemonSpeciesId.value
            : this.pokemonSpeciesId,
        versionId: versionId.present ? versionId.value : this.versionId,
      );
  @override
  String toString() {
    return (StringBuffer('PokemonSpeciesFlavorTextModel(')
          ..write('id: $id, ')
          ..write('flavorText: $flavorText, ')
          ..write('languageId: $languageId, ')
          ..write('pokemonSpeciesId: $pokemonSpeciesId, ')
          ..write('versionId: $versionId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, flavorText, languageId, pokemonSpeciesId, versionId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PokemonSpeciesFlavorTextModel &&
          other.id == this.id &&
          other.flavorText == this.flavorText &&
          other.languageId == this.languageId &&
          other.pokemonSpeciesId == this.pokemonSpeciesId &&
          other.versionId == this.versionId);
}

class PokemonSpeciesFlavorTextCompanion
    extends UpdateCompanion<PokemonSpeciesFlavorTextModel> {
  final Value<int> id;
  final Value<String> flavorText;
  final Value<int?> languageId;
  final Value<int?> pokemonSpeciesId;
  final Value<int?> versionId;
  const PokemonSpeciesFlavorTextCompanion({
    this.id = const Value.absent(),
    this.flavorText = const Value.absent(),
    this.languageId = const Value.absent(),
    this.pokemonSpeciesId = const Value.absent(),
    this.versionId = const Value.absent(),
  });
  PokemonSpeciesFlavorTextCompanion.insert({
    this.id = const Value.absent(),
    required String flavorText,
    this.languageId = const Value.absent(),
    this.pokemonSpeciesId = const Value.absent(),
    this.versionId = const Value.absent(),
  }) : flavorText = Value(flavorText);
  static Insertable<PokemonSpeciesFlavorTextModel> custom({
    Expression<int>? id,
    Expression<String>? flavorText,
    Expression<int>? languageId,
    Expression<int>? pokemonSpeciesId,
    Expression<int>? versionId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (flavorText != null) 'flavor_text': flavorText,
      if (languageId != null) 'language_id': languageId,
      if (pokemonSpeciesId != null) 'pokemon_species_id': pokemonSpeciesId,
      if (versionId != null) 'version_id': versionId,
    });
  }

  PokemonSpeciesFlavorTextCompanion copyWith(
      {Value<int>? id,
      Value<String>? flavorText,
      Value<int?>? languageId,
      Value<int?>? pokemonSpeciesId,
      Value<int?>? versionId}) {
    return PokemonSpeciesFlavorTextCompanion(
      id: id ?? this.id,
      flavorText: flavorText ?? this.flavorText,
      languageId: languageId ?? this.languageId,
      pokemonSpeciesId: pokemonSpeciesId ?? this.pokemonSpeciesId,
      versionId: versionId ?? this.versionId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (flavorText.present) {
      map['flavor_text'] = Variable<String>(flavorText.value);
    }
    if (languageId.present) {
      map['language_id'] = Variable<int>(languageId.value);
    }
    if (pokemonSpeciesId.present) {
      map['pokemon_species_id'] = Variable<int>(pokemonSpeciesId.value);
    }
    if (versionId.present) {
      map['version_id'] = Variable<int>(versionId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PokemonSpeciesFlavorTextCompanion(')
          ..write('id: $id, ')
          ..write('flavorText: $flavorText, ')
          ..write('languageId: $languageId, ')
          ..write('pokemonSpeciesId: $pokemonSpeciesId, ')
          ..write('versionId: $versionId')
          ..write(')'))
        .toString();
  }
}

class $TypesTable extends Types with TableInfo<$TypesTable, TypeModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TypesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pokemon_v2_type';
  @override
  VerificationContext validateIntegrity(Insertable<TypeModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TypeModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TypeModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $TypesTable createAlias(String alias) {
    return $TypesTable(attachedDatabase, alias);
  }
}

class TypeModel extends DataClass implements Insertable<TypeModel> {
  final int id;
  final String name;
  const TypeModel({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  TypesCompanion toCompanion(bool nullToAbsent) {
    return TypesCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory TypeModel.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TypeModel(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  TypeModel copyWith({int? id, String? name}) => TypeModel(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('TypeModel(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TypeModel && other.id == this.id && other.name == this.name);
}

class TypesCompanion extends UpdateCompanion<TypeModel> {
  final Value<int> id;
  final Value<String> name;
  const TypesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  TypesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<TypeModel> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  TypesCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return TypesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TypesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $PokemonTypesTable extends PokemonTypes
    with TableInfo<$PokemonTypesTable, PokemonTypeModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PokemonTypesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _slotMeta = const VerificationMeta('slot');
  @override
  late final GeneratedColumn<int> slot = GeneratedColumn<int>(
      'slot', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _pokemonIdMeta =
      const VerificationMeta('pokemonId');
  @override
  late final GeneratedColumn<int> pokemonId = GeneratedColumn<int>(
      'pokemon_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES pokemon_v2_pokemon (id)'));
  static const VerificationMeta _typeIdMeta = const VerificationMeta('typeId');
  @override
  late final GeneratedColumn<int> typeId = GeneratedColumn<int>(
      'type_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES pokemon_v2_type (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, slot, pokemonId, typeId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pokemon_v2_pokemontype';
  @override
  VerificationContext validateIntegrity(Insertable<PokemonTypeModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('slot')) {
      context.handle(
          _slotMeta, slot.isAcceptableOrUnknown(data['slot']!, _slotMeta));
    } else if (isInserting) {
      context.missing(_slotMeta);
    }
    if (data.containsKey('pokemon_id')) {
      context.handle(_pokemonIdMeta,
          pokemonId.isAcceptableOrUnknown(data['pokemon_id']!, _pokemonIdMeta));
    }
    if (data.containsKey('type_id')) {
      context.handle(_typeIdMeta,
          typeId.isAcceptableOrUnknown(data['type_id']!, _typeIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PokemonTypeModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PokemonTypeModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      slot: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}slot'])!,
      pokemonId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pokemon_id']),
      typeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}type_id']),
    );
  }

  @override
  $PokemonTypesTable createAlias(String alias) {
    return $PokemonTypesTable(attachedDatabase, alias);
  }
}

class PokemonTypeModel extends DataClass
    implements Insertable<PokemonTypeModel> {
  final int id;
  final int slot;
  final int? pokemonId;
  final int? typeId;
  const PokemonTypeModel(
      {required this.id, required this.slot, this.pokemonId, this.typeId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['slot'] = Variable<int>(slot);
    if (!nullToAbsent || pokemonId != null) {
      map['pokemon_id'] = Variable<int>(pokemonId);
    }
    if (!nullToAbsent || typeId != null) {
      map['type_id'] = Variable<int>(typeId);
    }
    return map;
  }

  PokemonTypesCompanion toCompanion(bool nullToAbsent) {
    return PokemonTypesCompanion(
      id: Value(id),
      slot: Value(slot),
      pokemonId: pokemonId == null && nullToAbsent
          ? const Value.absent()
          : Value(pokemonId),
      typeId:
          typeId == null && nullToAbsent ? const Value.absent() : Value(typeId),
    );
  }

  factory PokemonTypeModel.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PokemonTypeModel(
      id: serializer.fromJson<int>(json['id']),
      slot: serializer.fromJson<int>(json['slot']),
      pokemonId: serializer.fromJson<int?>(json['pokemonId']),
      typeId: serializer.fromJson<int?>(json['typeId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'slot': serializer.toJson<int>(slot),
      'pokemonId': serializer.toJson<int?>(pokemonId),
      'typeId': serializer.toJson<int?>(typeId),
    };
  }

  PokemonTypeModel copyWith(
          {int? id,
          int? slot,
          Value<int?> pokemonId = const Value.absent(),
          Value<int?> typeId = const Value.absent()}) =>
      PokemonTypeModel(
        id: id ?? this.id,
        slot: slot ?? this.slot,
        pokemonId: pokemonId.present ? pokemonId.value : this.pokemonId,
        typeId: typeId.present ? typeId.value : this.typeId,
      );
  @override
  String toString() {
    return (StringBuffer('PokemonTypeModel(')
          ..write('id: $id, ')
          ..write('slot: $slot, ')
          ..write('pokemonId: $pokemonId, ')
          ..write('typeId: $typeId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, slot, pokemonId, typeId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PokemonTypeModel &&
          other.id == this.id &&
          other.slot == this.slot &&
          other.pokemonId == this.pokemonId &&
          other.typeId == this.typeId);
}

class PokemonTypesCompanion extends UpdateCompanion<PokemonTypeModel> {
  final Value<int> id;
  final Value<int> slot;
  final Value<int?> pokemonId;
  final Value<int?> typeId;
  const PokemonTypesCompanion({
    this.id = const Value.absent(),
    this.slot = const Value.absent(),
    this.pokemonId = const Value.absent(),
    this.typeId = const Value.absent(),
  });
  PokemonTypesCompanion.insert({
    this.id = const Value.absent(),
    required int slot,
    this.pokemonId = const Value.absent(),
    this.typeId = const Value.absent(),
  }) : slot = Value(slot);
  static Insertable<PokemonTypeModel> custom({
    Expression<int>? id,
    Expression<int>? slot,
    Expression<int>? pokemonId,
    Expression<int>? typeId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (slot != null) 'slot': slot,
      if (pokemonId != null) 'pokemon_id': pokemonId,
      if (typeId != null) 'type_id': typeId,
    });
  }

  PokemonTypesCompanion copyWith(
      {Value<int>? id,
      Value<int>? slot,
      Value<int?>? pokemonId,
      Value<int?>? typeId}) {
    return PokemonTypesCompanion(
      id: id ?? this.id,
      slot: slot ?? this.slot,
      pokemonId: pokemonId ?? this.pokemonId,
      typeId: typeId ?? this.typeId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (slot.present) {
      map['slot'] = Variable<int>(slot.value);
    }
    if (pokemonId.present) {
      map['pokemon_id'] = Variable<int>(pokemonId.value);
    }
    if (typeId.present) {
      map['type_id'] = Variable<int>(typeId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PokemonTypesCompanion(')
          ..write('id: $id, ')
          ..write('slot: $slot, ')
          ..write('pokemonId: $pokemonId, ')
          ..write('typeId: $typeId')
          ..write(')'))
        .toString();
  }
}

abstract class _$PokeApiDatabase extends GeneratedDatabase {
  _$PokeApiDatabase(QueryExecutor e) : super(e);
  late final $PokemonSpeciesTable pokemonSpecies = $PokemonSpeciesTable(this);
  late final $PokemonsTable pokemons = $PokemonsTable(this);
  late final $PokemonSpeciesFlavorTextTable pokemonSpeciesFlavorText =
      $PokemonSpeciesFlavorTextTable(this);
  late final $TypesTable types = $TypesTable(this);
  late final $PokemonTypesTable pokemonTypes = $PokemonTypesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [pokemonSpecies, pokemons, pokemonSpeciesFlavorText, types, pokemonTypes];
}
