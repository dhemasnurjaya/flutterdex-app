// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokeapi_database.dart';

// ignore_for_file: type=lint
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
      type: DriftSqlType.int, requiredDuringInsert: false);
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
  late final $PokemonsTable pokemons = $PokemonsTable(this);
  late final $TypesTable types = $TypesTable(this);
  late final $PokemonTypesTable pokemonTypes = $PokemonTypesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [pokemons, types, pokemonTypes];
}
