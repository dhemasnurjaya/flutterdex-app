// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_evolution_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonEvolutionModel {
  int get id;
  String get name;
  String get types;
  String get genus;
  bool get isBaby;
  int? get evolvesFromSpeciesId;
  String? get evolutionTriggers;
  int? get minLevel;
  String? get heldItem;
  String? get evolutionItem;
  String? get timeOfDay;
  int? get minHappiness;
  int? get minAffection;
  int? get minBeauty;
  int? get relativePhysicalStats;
  bool? get needsOverworldRain;
  bool? get turnUpsideDown;

  /// Create a copy of PokemonEvolutionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PokemonEvolutionModelCopyWith<PokemonEvolutionModel> get copyWith =>
      _$PokemonEvolutionModelCopyWithImpl<PokemonEvolutionModel>(
          this as PokemonEvolutionModel, _$identity);

  /// Serializes this PokemonEvolutionModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonEvolutionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.types, types) || other.types == types) &&
            (identical(other.genus, genus) || other.genus == genus) &&
            (identical(other.isBaby, isBaby) || other.isBaby == isBaby) &&
            (identical(other.evolvesFromSpeciesId, evolvesFromSpeciesId) ||
                other.evolvesFromSpeciesId == evolvesFromSpeciesId) &&
            (identical(other.evolutionTriggers, evolutionTriggers) ||
                other.evolutionTriggers == evolutionTriggers) &&
            (identical(other.minLevel, minLevel) ||
                other.minLevel == minLevel) &&
            (identical(other.heldItem, heldItem) ||
                other.heldItem == heldItem) &&
            (identical(other.evolutionItem, evolutionItem) ||
                other.evolutionItem == evolutionItem) &&
            (identical(other.timeOfDay, timeOfDay) ||
                other.timeOfDay == timeOfDay) &&
            (identical(other.minHappiness, minHappiness) ||
                other.minHappiness == minHappiness) &&
            (identical(other.minAffection, minAffection) ||
                other.minAffection == minAffection) &&
            (identical(other.minBeauty, minBeauty) ||
                other.minBeauty == minBeauty) &&
            (identical(other.relativePhysicalStats, relativePhysicalStats) ||
                other.relativePhysicalStats == relativePhysicalStats) &&
            (identical(other.needsOverworldRain, needsOverworldRain) ||
                other.needsOverworldRain == needsOverworldRain) &&
            (identical(other.turnUpsideDown, turnUpsideDown) ||
                other.turnUpsideDown == turnUpsideDown));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      types,
      genus,
      isBaby,
      evolvesFromSpeciesId,
      evolutionTriggers,
      minLevel,
      heldItem,
      evolutionItem,
      timeOfDay,
      minHappiness,
      minAffection,
      minBeauty,
      relativePhysicalStats,
      needsOverworldRain,
      turnUpsideDown);

  @override
  String toString() {
    return 'PokemonEvolutionModel(id: $id, name: $name, types: $types, genus: $genus, isBaby: $isBaby, evolvesFromSpeciesId: $evolvesFromSpeciesId, evolutionTriggers: $evolutionTriggers, minLevel: $minLevel, heldItem: $heldItem, evolutionItem: $evolutionItem, timeOfDay: $timeOfDay, minHappiness: $minHappiness, minAffection: $minAffection, minBeauty: $minBeauty, relativePhysicalStats: $relativePhysicalStats, needsOverworldRain: $needsOverworldRain, turnUpsideDown: $turnUpsideDown)';
  }
}

/// @nodoc
abstract mixin class $PokemonEvolutionModelCopyWith<$Res> {
  factory $PokemonEvolutionModelCopyWith(PokemonEvolutionModel value,
          $Res Function(PokemonEvolutionModel) _then) =
      _$PokemonEvolutionModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      String types,
      String genus,
      bool isBaby,
      int? evolvesFromSpeciesId,
      String? evolutionTriggers,
      int? minLevel,
      String? heldItem,
      String? evolutionItem,
      String? timeOfDay,
      int? minHappiness,
      int? minAffection,
      int? minBeauty,
      int? relativePhysicalStats,
      bool? needsOverworldRain,
      bool? turnUpsideDown});
}

/// @nodoc
class _$PokemonEvolutionModelCopyWithImpl<$Res>
    implements $PokemonEvolutionModelCopyWith<$Res> {
  _$PokemonEvolutionModelCopyWithImpl(this._self, this._then);

  final PokemonEvolutionModel _self;
  final $Res Function(PokemonEvolutionModel) _then;

  /// Create a copy of PokemonEvolutionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? types = null,
    Object? genus = null,
    Object? isBaby = null,
    Object? evolvesFromSpeciesId = freezed,
    Object? evolutionTriggers = freezed,
    Object? minLevel = freezed,
    Object? heldItem = freezed,
    Object? evolutionItem = freezed,
    Object? timeOfDay = freezed,
    Object? minHappiness = freezed,
    Object? minAffection = freezed,
    Object? minBeauty = freezed,
    Object? relativePhysicalStats = freezed,
    Object? needsOverworldRain = freezed,
    Object? turnUpsideDown = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _self.types
          : types // ignore: cast_nullable_to_non_nullable
              as String,
      genus: null == genus
          ? _self.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String,
      isBaby: null == isBaby
          ? _self.isBaby
          : isBaby // ignore: cast_nullable_to_non_nullable
              as bool,
      evolvesFromSpeciesId: freezed == evolvesFromSpeciesId
          ? _self.evolvesFromSpeciesId
          : evolvesFromSpeciesId // ignore: cast_nullable_to_non_nullable
              as int?,
      evolutionTriggers: freezed == evolutionTriggers
          ? _self.evolutionTriggers
          : evolutionTriggers // ignore: cast_nullable_to_non_nullable
              as String?,
      minLevel: freezed == minLevel
          ? _self.minLevel
          : minLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      heldItem: freezed == heldItem
          ? _self.heldItem
          : heldItem // ignore: cast_nullable_to_non_nullable
              as String?,
      evolutionItem: freezed == evolutionItem
          ? _self.evolutionItem
          : evolutionItem // ignore: cast_nullable_to_non_nullable
              as String?,
      timeOfDay: freezed == timeOfDay
          ? _self.timeOfDay
          : timeOfDay // ignore: cast_nullable_to_non_nullable
              as String?,
      minHappiness: freezed == minHappiness
          ? _self.minHappiness
          : minHappiness // ignore: cast_nullable_to_non_nullable
              as int?,
      minAffection: freezed == minAffection
          ? _self.minAffection
          : minAffection // ignore: cast_nullable_to_non_nullable
              as int?,
      minBeauty: freezed == minBeauty
          ? _self.minBeauty
          : minBeauty // ignore: cast_nullable_to_non_nullable
              as int?,
      relativePhysicalStats: freezed == relativePhysicalStats
          ? _self.relativePhysicalStats
          : relativePhysicalStats // ignore: cast_nullable_to_non_nullable
              as int?,
      needsOverworldRain: freezed == needsOverworldRain
          ? _self.needsOverworldRain
          : needsOverworldRain // ignore: cast_nullable_to_non_nullable
              as bool?,
      turnUpsideDown: freezed == turnUpsideDown
          ? _self.turnUpsideDown
          : turnUpsideDown // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PokemonEvolutionModel].
extension PokemonEvolutionModelPatterns on PokemonEvolutionModel {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PokemonEvolutionModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonEvolutionModel() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PokemonEvolutionModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonEvolutionModel():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PokemonEvolutionModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonEvolutionModel() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id,
            String name,
            String types,
            String genus,
            bool isBaby,
            int? evolvesFromSpeciesId,
            String? evolutionTriggers,
            int? minLevel,
            String? heldItem,
            String? evolutionItem,
            String? timeOfDay,
            int? minHappiness,
            int? minAffection,
            int? minBeauty,
            int? relativePhysicalStats,
            bool? needsOverworldRain,
            bool? turnUpsideDown)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonEvolutionModel() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.types,
            _that.genus,
            _that.isBaby,
            _that.evolvesFromSpeciesId,
            _that.evolutionTriggers,
            _that.minLevel,
            _that.heldItem,
            _that.evolutionItem,
            _that.timeOfDay,
            _that.minHappiness,
            _that.minAffection,
            _that.minBeauty,
            _that.relativePhysicalStats,
            _that.needsOverworldRain,
            _that.turnUpsideDown);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id,
            String name,
            String types,
            String genus,
            bool isBaby,
            int? evolvesFromSpeciesId,
            String? evolutionTriggers,
            int? minLevel,
            String? heldItem,
            String? evolutionItem,
            String? timeOfDay,
            int? minHappiness,
            int? minAffection,
            int? minBeauty,
            int? relativePhysicalStats,
            bool? needsOverworldRain,
            bool? turnUpsideDown)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonEvolutionModel():
        return $default(
            _that.id,
            _that.name,
            _that.types,
            _that.genus,
            _that.isBaby,
            _that.evolvesFromSpeciesId,
            _that.evolutionTriggers,
            _that.minLevel,
            _that.heldItem,
            _that.evolutionItem,
            _that.timeOfDay,
            _that.minHappiness,
            _that.minAffection,
            _that.minBeauty,
            _that.relativePhysicalStats,
            _that.needsOverworldRain,
            _that.turnUpsideDown);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id,
            String name,
            String types,
            String genus,
            bool isBaby,
            int? evolvesFromSpeciesId,
            String? evolutionTriggers,
            int? minLevel,
            String? heldItem,
            String? evolutionItem,
            String? timeOfDay,
            int? minHappiness,
            int? minAffection,
            int? minBeauty,
            int? relativePhysicalStats,
            bool? needsOverworldRain,
            bool? turnUpsideDown)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonEvolutionModel() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.types,
            _that.genus,
            _that.isBaby,
            _that.evolvesFromSpeciesId,
            _that.evolutionTriggers,
            _that.minLevel,
            _that.heldItem,
            _that.evolutionItem,
            _that.timeOfDay,
            _that.minHappiness,
            _that.minAffection,
            _that.minBeauty,
            _that.relativePhysicalStats,
            _that.needsOverworldRain,
            _that.turnUpsideDown);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PokemonEvolutionModel implements PokemonEvolutionModel {
  const _PokemonEvolutionModel(
      {required this.id,
      required this.name,
      required this.types,
      required this.genus,
      required this.isBaby,
      required this.evolvesFromSpeciesId,
      required this.evolutionTriggers,
      required this.minLevel,
      required this.heldItem,
      required this.evolutionItem,
      required this.timeOfDay,
      required this.minHappiness,
      required this.minAffection,
      required this.minBeauty,
      required this.relativePhysicalStats,
      required this.needsOverworldRain,
      required this.turnUpsideDown});
  factory _PokemonEvolutionModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonEvolutionModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String types;
  @override
  final String genus;
  @override
  final bool isBaby;
  @override
  final int? evolvesFromSpeciesId;
  @override
  final String? evolutionTriggers;
  @override
  final int? minLevel;
  @override
  final String? heldItem;
  @override
  final String? evolutionItem;
  @override
  final String? timeOfDay;
  @override
  final int? minHappiness;
  @override
  final int? minAffection;
  @override
  final int? minBeauty;
  @override
  final int? relativePhysicalStats;
  @override
  final bool? needsOverworldRain;
  @override
  final bool? turnUpsideDown;

  /// Create a copy of PokemonEvolutionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PokemonEvolutionModelCopyWith<_PokemonEvolutionModel> get copyWith =>
      __$PokemonEvolutionModelCopyWithImpl<_PokemonEvolutionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PokemonEvolutionModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonEvolutionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.types, types) || other.types == types) &&
            (identical(other.genus, genus) || other.genus == genus) &&
            (identical(other.isBaby, isBaby) || other.isBaby == isBaby) &&
            (identical(other.evolvesFromSpeciesId, evolvesFromSpeciesId) ||
                other.evolvesFromSpeciesId == evolvesFromSpeciesId) &&
            (identical(other.evolutionTriggers, evolutionTriggers) ||
                other.evolutionTriggers == evolutionTriggers) &&
            (identical(other.minLevel, minLevel) ||
                other.minLevel == minLevel) &&
            (identical(other.heldItem, heldItem) ||
                other.heldItem == heldItem) &&
            (identical(other.evolutionItem, evolutionItem) ||
                other.evolutionItem == evolutionItem) &&
            (identical(other.timeOfDay, timeOfDay) ||
                other.timeOfDay == timeOfDay) &&
            (identical(other.minHappiness, minHappiness) ||
                other.minHappiness == minHappiness) &&
            (identical(other.minAffection, minAffection) ||
                other.minAffection == minAffection) &&
            (identical(other.minBeauty, minBeauty) ||
                other.minBeauty == minBeauty) &&
            (identical(other.relativePhysicalStats, relativePhysicalStats) ||
                other.relativePhysicalStats == relativePhysicalStats) &&
            (identical(other.needsOverworldRain, needsOverworldRain) ||
                other.needsOverworldRain == needsOverworldRain) &&
            (identical(other.turnUpsideDown, turnUpsideDown) ||
                other.turnUpsideDown == turnUpsideDown));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      types,
      genus,
      isBaby,
      evolvesFromSpeciesId,
      evolutionTriggers,
      minLevel,
      heldItem,
      evolutionItem,
      timeOfDay,
      minHappiness,
      minAffection,
      minBeauty,
      relativePhysicalStats,
      needsOverworldRain,
      turnUpsideDown);

  @override
  String toString() {
    return 'PokemonEvolutionModel(id: $id, name: $name, types: $types, genus: $genus, isBaby: $isBaby, evolvesFromSpeciesId: $evolvesFromSpeciesId, evolutionTriggers: $evolutionTriggers, minLevel: $minLevel, heldItem: $heldItem, evolutionItem: $evolutionItem, timeOfDay: $timeOfDay, minHappiness: $minHappiness, minAffection: $minAffection, minBeauty: $minBeauty, relativePhysicalStats: $relativePhysicalStats, needsOverworldRain: $needsOverworldRain, turnUpsideDown: $turnUpsideDown)';
  }
}

/// @nodoc
abstract mixin class _$PokemonEvolutionModelCopyWith<$Res>
    implements $PokemonEvolutionModelCopyWith<$Res> {
  factory _$PokemonEvolutionModelCopyWith(_PokemonEvolutionModel value,
          $Res Function(_PokemonEvolutionModel) _then) =
      __$PokemonEvolutionModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String types,
      String genus,
      bool isBaby,
      int? evolvesFromSpeciesId,
      String? evolutionTriggers,
      int? minLevel,
      String? heldItem,
      String? evolutionItem,
      String? timeOfDay,
      int? minHappiness,
      int? minAffection,
      int? minBeauty,
      int? relativePhysicalStats,
      bool? needsOverworldRain,
      bool? turnUpsideDown});
}

/// @nodoc
class __$PokemonEvolutionModelCopyWithImpl<$Res>
    implements _$PokemonEvolutionModelCopyWith<$Res> {
  __$PokemonEvolutionModelCopyWithImpl(this._self, this._then);

  final _PokemonEvolutionModel _self;
  final $Res Function(_PokemonEvolutionModel) _then;

  /// Create a copy of PokemonEvolutionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? types = null,
    Object? genus = null,
    Object? isBaby = null,
    Object? evolvesFromSpeciesId = freezed,
    Object? evolutionTriggers = freezed,
    Object? minLevel = freezed,
    Object? heldItem = freezed,
    Object? evolutionItem = freezed,
    Object? timeOfDay = freezed,
    Object? minHappiness = freezed,
    Object? minAffection = freezed,
    Object? minBeauty = freezed,
    Object? relativePhysicalStats = freezed,
    Object? needsOverworldRain = freezed,
    Object? turnUpsideDown = freezed,
  }) {
    return _then(_PokemonEvolutionModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _self.types
          : types // ignore: cast_nullable_to_non_nullable
              as String,
      genus: null == genus
          ? _self.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String,
      isBaby: null == isBaby
          ? _self.isBaby
          : isBaby // ignore: cast_nullable_to_non_nullable
              as bool,
      evolvesFromSpeciesId: freezed == evolvesFromSpeciesId
          ? _self.evolvesFromSpeciesId
          : evolvesFromSpeciesId // ignore: cast_nullable_to_non_nullable
              as int?,
      evolutionTriggers: freezed == evolutionTriggers
          ? _self.evolutionTriggers
          : evolutionTriggers // ignore: cast_nullable_to_non_nullable
              as String?,
      minLevel: freezed == minLevel
          ? _self.minLevel
          : minLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      heldItem: freezed == heldItem
          ? _self.heldItem
          : heldItem // ignore: cast_nullable_to_non_nullable
              as String?,
      evolutionItem: freezed == evolutionItem
          ? _self.evolutionItem
          : evolutionItem // ignore: cast_nullable_to_non_nullable
              as String?,
      timeOfDay: freezed == timeOfDay
          ? _self.timeOfDay
          : timeOfDay // ignore: cast_nullable_to_non_nullable
              as String?,
      minHappiness: freezed == minHappiness
          ? _self.minHappiness
          : minHappiness // ignore: cast_nullable_to_non_nullable
              as int?,
      minAffection: freezed == minAffection
          ? _self.minAffection
          : minAffection // ignore: cast_nullable_to_non_nullable
              as int?,
      minBeauty: freezed == minBeauty
          ? _self.minBeauty
          : minBeauty // ignore: cast_nullable_to_non_nullable
              as int?,
      relativePhysicalStats: freezed == relativePhysicalStats
          ? _self.relativePhysicalStats
          : relativePhysicalStats // ignore: cast_nullable_to_non_nullable
              as int?,
      needsOverworldRain: freezed == needsOverworldRain
          ? _self.needsOverworldRain
          : needsOverworldRain // ignore: cast_nullable_to_non_nullable
              as bool?,
      turnUpsideDown: freezed == turnUpsideDown
          ? _self.turnUpsideDown
          : turnUpsideDown // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
