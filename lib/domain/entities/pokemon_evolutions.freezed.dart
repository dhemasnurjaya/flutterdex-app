// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_evolutions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonEvolutions _$PokemonEvolutionsFromJson(Map<String, dynamic> json) {
  return _PokemonEvolutions.fromJson(json);
}

/// @nodoc
mixin _$PokemonEvolutions {
  List<PokemonEvolution> get evolutionChains =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonEvolutionsCopyWith<PokemonEvolutions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonEvolutionsCopyWith<$Res> {
  factory $PokemonEvolutionsCopyWith(
          PokemonEvolutions value, $Res Function(PokemonEvolutions) then) =
      _$PokemonEvolutionsCopyWithImpl<$Res, PokemonEvolutions>;
  @useResult
  $Res call({List<PokemonEvolution> evolutionChains});
}

/// @nodoc
class _$PokemonEvolutionsCopyWithImpl<$Res, $Val extends PokemonEvolutions>
    implements $PokemonEvolutionsCopyWith<$Res> {
  _$PokemonEvolutionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evolutionChains = null,
  }) {
    return _then(_value.copyWith(
      evolutionChains: null == evolutionChains
          ? _value.evolutionChains
          : evolutionChains // ignore: cast_nullable_to_non_nullable
              as List<PokemonEvolution>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonEvolutionsImplCopyWith<$Res>
    implements $PokemonEvolutionsCopyWith<$Res> {
  factory _$$PokemonEvolutionsImplCopyWith(_$PokemonEvolutionsImpl value,
          $Res Function(_$PokemonEvolutionsImpl) then) =
      __$$PokemonEvolutionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PokemonEvolution> evolutionChains});
}

/// @nodoc
class __$$PokemonEvolutionsImplCopyWithImpl<$Res>
    extends _$PokemonEvolutionsCopyWithImpl<$Res, _$PokemonEvolutionsImpl>
    implements _$$PokemonEvolutionsImplCopyWith<$Res> {
  __$$PokemonEvolutionsImplCopyWithImpl(_$PokemonEvolutionsImpl _value,
      $Res Function(_$PokemonEvolutionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evolutionChains = null,
  }) {
    return _then(_$PokemonEvolutionsImpl(
      evolutionChains: null == evolutionChains
          ? _value._evolutionChains
          : evolutionChains // ignore: cast_nullable_to_non_nullable
              as List<PokemonEvolution>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonEvolutionsImpl implements _PokemonEvolutions {
  _$PokemonEvolutionsImpl(
      {required final List<PokemonEvolution> evolutionChains})
      : _evolutionChains = evolutionChains;

  factory _$PokemonEvolutionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonEvolutionsImplFromJson(json);

  final List<PokemonEvolution> _evolutionChains;
  @override
  List<PokemonEvolution> get evolutionChains {
    if (_evolutionChains is EqualUnmodifiableListView) return _evolutionChains;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evolutionChains);
  }

  @override
  String toString() {
    return 'PokemonEvolutions(evolutionChains: $evolutionChains)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonEvolutionsImpl &&
            const DeepCollectionEquality()
                .equals(other._evolutionChains, _evolutionChains));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_evolutionChains));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonEvolutionsImplCopyWith<_$PokemonEvolutionsImpl> get copyWith =>
      __$$PokemonEvolutionsImplCopyWithImpl<_$PokemonEvolutionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonEvolutionsImplToJson(
      this,
    );
  }
}

abstract class _PokemonEvolutions implements PokemonEvolutions {
  factory _PokemonEvolutions(
          {required final List<PokemonEvolution> evolutionChains}) =
      _$PokemonEvolutionsImpl;

  factory _PokemonEvolutions.fromJson(Map<String, dynamic> json) =
      _$PokemonEvolutionsImpl.fromJson;

  @override
  List<PokemonEvolution> get evolutionChains;
  @override
  @JsonKey(ignore: true)
  _$$PokemonEvolutionsImplCopyWith<_$PokemonEvolutionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonEvolution _$PokemonEvolutionFromJson(Map<String, dynamic> json) {
  return _PokemonEvolution.fromJson(json);
}

/// @nodoc
mixin _$PokemonEvolution {
  PokemonBasicInfo get pokemon => throw _privateConstructorUsedError;
  bool get isBaby => throw _privateConstructorUsedError;
  int? get evolvesFromSpeciesId => throw _privateConstructorUsedError;
  List<String> get evolutionTriggers => throw _privateConstructorUsedError;
  int? get minLevel => throw _privateConstructorUsedError;
  String? get heldItem => throw _privateConstructorUsedError;
  String? get evolutionItem => throw _privateConstructorUsedError;
  String? get timeOfDay => throw _privateConstructorUsedError;
  int? get minHappiness => throw _privateConstructorUsedError;
  int? get minAffection => throw _privateConstructorUsedError;
  int? get minBeauty => throw _privateConstructorUsedError;
  int? get relativePhysicalStats => throw _privateConstructorUsedError;
  bool? get needsOverworldRain => throw _privateConstructorUsedError;
  bool? get turnUpsideDown => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonEvolutionCopyWith<PokemonEvolution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonEvolutionCopyWith<$Res> {
  factory $PokemonEvolutionCopyWith(
          PokemonEvolution value, $Res Function(PokemonEvolution) then) =
      _$PokemonEvolutionCopyWithImpl<$Res, PokemonEvolution>;
  @useResult
  $Res call(
      {PokemonBasicInfo pokemon,
      bool isBaby,
      int? evolvesFromSpeciesId,
      List<String> evolutionTriggers,
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

  $PokemonBasicInfoCopyWith<$Res> get pokemon;
}

/// @nodoc
class _$PokemonEvolutionCopyWithImpl<$Res, $Val extends PokemonEvolution>
    implements $PokemonEvolutionCopyWith<$Res> {
  _$PokemonEvolutionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemon = null,
    Object? isBaby = null,
    Object? evolvesFromSpeciesId = freezed,
    Object? evolutionTriggers = null,
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
    return _then(_value.copyWith(
      pokemon: null == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as PokemonBasicInfo,
      isBaby: null == isBaby
          ? _value.isBaby
          : isBaby // ignore: cast_nullable_to_non_nullable
              as bool,
      evolvesFromSpeciesId: freezed == evolvesFromSpeciesId
          ? _value.evolvesFromSpeciesId
          : evolvesFromSpeciesId // ignore: cast_nullable_to_non_nullable
              as int?,
      evolutionTriggers: null == evolutionTriggers
          ? _value.evolutionTriggers
          : evolutionTriggers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minLevel: freezed == minLevel
          ? _value.minLevel
          : minLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      heldItem: freezed == heldItem
          ? _value.heldItem
          : heldItem // ignore: cast_nullable_to_non_nullable
              as String?,
      evolutionItem: freezed == evolutionItem
          ? _value.evolutionItem
          : evolutionItem // ignore: cast_nullable_to_non_nullable
              as String?,
      timeOfDay: freezed == timeOfDay
          ? _value.timeOfDay
          : timeOfDay // ignore: cast_nullable_to_non_nullable
              as String?,
      minHappiness: freezed == minHappiness
          ? _value.minHappiness
          : minHappiness // ignore: cast_nullable_to_non_nullable
              as int?,
      minAffection: freezed == minAffection
          ? _value.minAffection
          : minAffection // ignore: cast_nullable_to_non_nullable
              as int?,
      minBeauty: freezed == minBeauty
          ? _value.minBeauty
          : minBeauty // ignore: cast_nullable_to_non_nullable
              as int?,
      relativePhysicalStats: freezed == relativePhysicalStats
          ? _value.relativePhysicalStats
          : relativePhysicalStats // ignore: cast_nullable_to_non_nullable
              as int?,
      needsOverworldRain: freezed == needsOverworldRain
          ? _value.needsOverworldRain
          : needsOverworldRain // ignore: cast_nullable_to_non_nullable
              as bool?,
      turnUpsideDown: freezed == turnUpsideDown
          ? _value.turnUpsideDown
          : turnUpsideDown // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonBasicInfoCopyWith<$Res> get pokemon {
    return $PokemonBasicInfoCopyWith<$Res>(_value.pokemon, (value) {
      return _then(_value.copyWith(pokemon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonEvolutionImplCopyWith<$Res>
    implements $PokemonEvolutionCopyWith<$Res> {
  factory _$$PokemonEvolutionImplCopyWith(_$PokemonEvolutionImpl value,
          $Res Function(_$PokemonEvolutionImpl) then) =
      __$$PokemonEvolutionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PokemonBasicInfo pokemon,
      bool isBaby,
      int? evolvesFromSpeciesId,
      List<String> evolutionTriggers,
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

  @override
  $PokemonBasicInfoCopyWith<$Res> get pokemon;
}

/// @nodoc
class __$$PokemonEvolutionImplCopyWithImpl<$Res>
    extends _$PokemonEvolutionCopyWithImpl<$Res, _$PokemonEvolutionImpl>
    implements _$$PokemonEvolutionImplCopyWith<$Res> {
  __$$PokemonEvolutionImplCopyWithImpl(_$PokemonEvolutionImpl _value,
      $Res Function(_$PokemonEvolutionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemon = null,
    Object? isBaby = null,
    Object? evolvesFromSpeciesId = freezed,
    Object? evolutionTriggers = null,
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
    return _then(_$PokemonEvolutionImpl(
      pokemon: null == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as PokemonBasicInfo,
      isBaby: null == isBaby
          ? _value.isBaby
          : isBaby // ignore: cast_nullable_to_non_nullable
              as bool,
      evolvesFromSpeciesId: freezed == evolvesFromSpeciesId
          ? _value.evolvesFromSpeciesId
          : evolvesFromSpeciesId // ignore: cast_nullable_to_non_nullable
              as int?,
      evolutionTriggers: null == evolutionTriggers
          ? _value._evolutionTriggers
          : evolutionTriggers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minLevel: freezed == minLevel
          ? _value.minLevel
          : minLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      heldItem: freezed == heldItem
          ? _value.heldItem
          : heldItem // ignore: cast_nullable_to_non_nullable
              as String?,
      evolutionItem: freezed == evolutionItem
          ? _value.evolutionItem
          : evolutionItem // ignore: cast_nullable_to_non_nullable
              as String?,
      timeOfDay: freezed == timeOfDay
          ? _value.timeOfDay
          : timeOfDay // ignore: cast_nullable_to_non_nullable
              as String?,
      minHappiness: freezed == minHappiness
          ? _value.minHappiness
          : minHappiness // ignore: cast_nullable_to_non_nullable
              as int?,
      minAffection: freezed == minAffection
          ? _value.minAffection
          : minAffection // ignore: cast_nullable_to_non_nullable
              as int?,
      minBeauty: freezed == minBeauty
          ? _value.minBeauty
          : minBeauty // ignore: cast_nullable_to_non_nullable
              as int?,
      relativePhysicalStats: freezed == relativePhysicalStats
          ? _value.relativePhysicalStats
          : relativePhysicalStats // ignore: cast_nullable_to_non_nullable
              as int?,
      needsOverworldRain: freezed == needsOverworldRain
          ? _value.needsOverworldRain
          : needsOverworldRain // ignore: cast_nullable_to_non_nullable
              as bool?,
      turnUpsideDown: freezed == turnUpsideDown
          ? _value.turnUpsideDown
          : turnUpsideDown // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonEvolutionImpl implements _PokemonEvolution {
  _$PokemonEvolutionImpl(
      {required this.pokemon,
      required this.isBaby,
      required this.evolvesFromSpeciesId,
      required final List<String> evolutionTriggers,
      required this.minLevel,
      required this.heldItem,
      required this.evolutionItem,
      required this.timeOfDay,
      required this.minHappiness,
      required this.minAffection,
      required this.minBeauty,
      required this.relativePhysicalStats,
      required this.needsOverworldRain,
      required this.turnUpsideDown})
      : _evolutionTriggers = evolutionTriggers;

  factory _$PokemonEvolutionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonEvolutionImplFromJson(json);

  @override
  final PokemonBasicInfo pokemon;
  @override
  final bool isBaby;
  @override
  final int? evolvesFromSpeciesId;
  final List<String> _evolutionTriggers;
  @override
  List<String> get evolutionTriggers {
    if (_evolutionTriggers is EqualUnmodifiableListView)
      return _evolutionTriggers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evolutionTriggers);
  }

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

  @override
  String toString() {
    return 'PokemonEvolution(pokemon: $pokemon, isBaby: $isBaby, evolvesFromSpeciesId: $evolvesFromSpeciesId, evolutionTriggers: $evolutionTriggers, minLevel: $minLevel, heldItem: $heldItem, evolutionItem: $evolutionItem, timeOfDay: $timeOfDay, minHappiness: $minHappiness, minAffection: $minAffection, minBeauty: $minBeauty, relativePhysicalStats: $relativePhysicalStats, needsOverworldRain: $needsOverworldRain, turnUpsideDown: $turnUpsideDown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonEvolutionImpl &&
            (identical(other.pokemon, pokemon) || other.pokemon == pokemon) &&
            (identical(other.isBaby, isBaby) || other.isBaby == isBaby) &&
            (identical(other.evolvesFromSpeciesId, evolvesFromSpeciesId) ||
                other.evolvesFromSpeciesId == evolvesFromSpeciesId) &&
            const DeepCollectionEquality()
                .equals(other._evolutionTriggers, _evolutionTriggers) &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pokemon,
      isBaby,
      evolvesFromSpeciesId,
      const DeepCollectionEquality().hash(_evolutionTriggers),
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonEvolutionImplCopyWith<_$PokemonEvolutionImpl> get copyWith =>
      __$$PokemonEvolutionImplCopyWithImpl<_$PokemonEvolutionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonEvolutionImplToJson(
      this,
    );
  }
}

abstract class _PokemonEvolution implements PokemonEvolution {
  factory _PokemonEvolution(
      {required final PokemonBasicInfo pokemon,
      required final bool isBaby,
      required final int? evolvesFromSpeciesId,
      required final List<String> evolutionTriggers,
      required final int? minLevel,
      required final String? heldItem,
      required final String? evolutionItem,
      required final String? timeOfDay,
      required final int? minHappiness,
      required final int? minAffection,
      required final int? minBeauty,
      required final int? relativePhysicalStats,
      required final bool? needsOverworldRain,
      required final bool? turnUpsideDown}) = _$PokemonEvolutionImpl;

  factory _PokemonEvolution.fromJson(Map<String, dynamic> json) =
      _$PokemonEvolutionImpl.fromJson;

  @override
  PokemonBasicInfo get pokemon;
  @override
  bool get isBaby;
  @override
  int? get evolvesFromSpeciesId;
  @override
  List<String> get evolutionTriggers;
  @override
  int? get minLevel;
  @override
  String? get heldItem;
  @override
  String? get evolutionItem;
  @override
  String? get timeOfDay;
  @override
  int? get minHappiness;
  @override
  int? get minAffection;
  @override
  int? get minBeauty;
  @override
  int? get relativePhysicalStats;
  @override
  bool? get needsOverworldRain;
  @override
  bool? get turnUpsideDown;
  @override
  @JsonKey(ignore: true)
  _$$PokemonEvolutionImplCopyWith<_$PokemonEvolutionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
