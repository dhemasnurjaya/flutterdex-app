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
  int get id => throw _privateConstructorUsedError;
  bool get isBaby => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int? get evolvesFromSpeciesId => throw _privateConstructorUsedError;
  String? get evolutionTrigger => throw _privateConstructorUsedError;
  int? get minLevel => throw _privateConstructorUsedError;
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
      {int id,
      bool isBaby,
      String name,
      int? evolvesFromSpeciesId,
      String? evolutionTrigger,
      int? minLevel,
      String? timeOfDay,
      int? minHappiness,
      int? minAffection,
      int? minBeauty,
      int? relativePhysicalStats,
      bool? needsOverworldRain,
      bool? turnUpsideDown});
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
    Object? id = null,
    Object? isBaby = null,
    Object? name = null,
    Object? evolvesFromSpeciesId = freezed,
    Object? evolutionTrigger = freezed,
    Object? minLevel = freezed,
    Object? timeOfDay = freezed,
    Object? minHappiness = freezed,
    Object? minAffection = freezed,
    Object? minBeauty = freezed,
    Object? relativePhysicalStats = freezed,
    Object? needsOverworldRain = freezed,
    Object? turnUpsideDown = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isBaby: null == isBaby
          ? _value.isBaby
          : isBaby // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      evolvesFromSpeciesId: freezed == evolvesFromSpeciesId
          ? _value.evolvesFromSpeciesId
          : evolvesFromSpeciesId // ignore: cast_nullable_to_non_nullable
              as int?,
      evolutionTrigger: freezed == evolutionTrigger
          ? _value.evolutionTrigger
          : evolutionTrigger // ignore: cast_nullable_to_non_nullable
              as String?,
      minLevel: freezed == minLevel
          ? _value.minLevel
          : minLevel // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {int id,
      bool isBaby,
      String name,
      int? evolvesFromSpeciesId,
      String? evolutionTrigger,
      int? minLevel,
      String? timeOfDay,
      int? minHappiness,
      int? minAffection,
      int? minBeauty,
      int? relativePhysicalStats,
      bool? needsOverworldRain,
      bool? turnUpsideDown});
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
    Object? id = null,
    Object? isBaby = null,
    Object? name = null,
    Object? evolvesFromSpeciesId = freezed,
    Object? evolutionTrigger = freezed,
    Object? minLevel = freezed,
    Object? timeOfDay = freezed,
    Object? minHappiness = freezed,
    Object? minAffection = freezed,
    Object? minBeauty = freezed,
    Object? relativePhysicalStats = freezed,
    Object? needsOverworldRain = freezed,
    Object? turnUpsideDown = freezed,
  }) {
    return _then(_$PokemonEvolutionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isBaby: null == isBaby
          ? _value.isBaby
          : isBaby // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      evolvesFromSpeciesId: freezed == evolvesFromSpeciesId
          ? _value.evolvesFromSpeciesId
          : evolvesFromSpeciesId // ignore: cast_nullable_to_non_nullable
              as int?,
      evolutionTrigger: freezed == evolutionTrigger
          ? _value.evolutionTrigger
          : evolutionTrigger // ignore: cast_nullable_to_non_nullable
              as String?,
      minLevel: freezed == minLevel
          ? _value.minLevel
          : minLevel // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {required this.id,
      required this.isBaby,
      required this.name,
      required this.evolvesFromSpeciesId,
      required this.evolutionTrigger,
      required this.minLevel,
      required this.timeOfDay,
      required this.minHappiness,
      required this.minAffection,
      required this.minBeauty,
      required this.relativePhysicalStats,
      required this.needsOverworldRain,
      required this.turnUpsideDown});

  factory _$PokemonEvolutionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonEvolutionImplFromJson(json);

  @override
  final int id;
  @override
  final bool isBaby;
  @override
  final String name;
  @override
  final int? evolvesFromSpeciesId;
  @override
  final String? evolutionTrigger;
  @override
  final int? minLevel;
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
    return 'PokemonEvolution(id: $id, isBaby: $isBaby, name: $name, evolvesFromSpeciesId: $evolvesFromSpeciesId, evolutionTrigger: $evolutionTrigger, minLevel: $minLevel, timeOfDay: $timeOfDay, minHappiness: $minHappiness, minAffection: $minAffection, minBeauty: $minBeauty, relativePhysicalStats: $relativePhysicalStats, needsOverworldRain: $needsOverworldRain, turnUpsideDown: $turnUpsideDown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonEvolutionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isBaby, isBaby) || other.isBaby == isBaby) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.evolvesFromSpeciesId, evolvesFromSpeciesId) ||
                other.evolvesFromSpeciesId == evolvesFromSpeciesId) &&
            (identical(other.evolutionTrigger, evolutionTrigger) ||
                other.evolutionTrigger == evolutionTrigger) &&
            (identical(other.minLevel, minLevel) ||
                other.minLevel == minLevel) &&
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
      id,
      isBaby,
      name,
      evolvesFromSpeciesId,
      evolutionTrigger,
      minLevel,
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
      {required final int id,
      required final bool isBaby,
      required final String name,
      required final int? evolvesFromSpeciesId,
      required final String? evolutionTrigger,
      required final int? minLevel,
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
  int get id;
  @override
  bool get isBaby;
  @override
  String get name;
  @override
  int? get evolvesFromSpeciesId;
  @override
  String? get evolutionTrigger;
  @override
  int? get minLevel;
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
