// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_evolutions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonEvolutions {
  List<PokemonEvolution> get evolutionChains;

  /// Create a copy of PokemonEvolutions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PokemonEvolutionsCopyWith<PokemonEvolutions> get copyWith =>
      _$PokemonEvolutionsCopyWithImpl<PokemonEvolutions>(
          this as PokemonEvolutions, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonEvolutions &&
            const DeepCollectionEquality()
                .equals(other.evolutionChains, evolutionChains));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(evolutionChains));

  @override
  String toString() {
    return 'PokemonEvolutions(evolutionChains: $evolutionChains)';
  }
}

/// @nodoc
abstract mixin class $PokemonEvolutionsCopyWith<$Res> {
  factory $PokemonEvolutionsCopyWith(
          PokemonEvolutions value, $Res Function(PokemonEvolutions) _then) =
      _$PokemonEvolutionsCopyWithImpl;
  @useResult
  $Res call({List<PokemonEvolution> evolutionChains});
}

/// @nodoc
class _$PokemonEvolutionsCopyWithImpl<$Res>
    implements $PokemonEvolutionsCopyWith<$Res> {
  _$PokemonEvolutionsCopyWithImpl(this._self, this._then);

  final PokemonEvolutions _self;
  final $Res Function(PokemonEvolutions) _then;

  /// Create a copy of PokemonEvolutions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evolutionChains = null,
  }) {
    return _then(_self.copyWith(
      evolutionChains: null == evolutionChains
          ? _self.evolutionChains
          : evolutionChains // ignore: cast_nullable_to_non_nullable
              as List<PokemonEvolution>,
    ));
  }
}

/// Adds pattern-matching-related methods to [PokemonEvolutions].
extension PokemonEvolutionsPatterns on PokemonEvolutions {
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
    TResult Function(_PokemonEvolutions value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonEvolutions() when $default != null:
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
    TResult Function(_PokemonEvolutions value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonEvolutions():
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
    TResult? Function(_PokemonEvolutions value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonEvolutions() when $default != null:
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
    TResult Function(List<PokemonEvolution> evolutionChains)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonEvolutions() when $default != null:
        return $default(_that.evolutionChains);
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
    TResult Function(List<PokemonEvolution> evolutionChains) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonEvolutions():
        return $default(_that.evolutionChains);
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
    TResult? Function(List<PokemonEvolution> evolutionChains)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonEvolutions() when $default != null:
        return $default(_that.evolutionChains);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PokemonEvolutions implements PokemonEvolutions {
  _PokemonEvolutions({required final List<PokemonEvolution> evolutionChains})
      : _evolutionChains = evolutionChains;

  final List<PokemonEvolution> _evolutionChains;
  @override
  List<PokemonEvolution> get evolutionChains {
    if (_evolutionChains is EqualUnmodifiableListView) return _evolutionChains;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evolutionChains);
  }

  /// Create a copy of PokemonEvolutions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PokemonEvolutionsCopyWith<_PokemonEvolutions> get copyWith =>
      __$PokemonEvolutionsCopyWithImpl<_PokemonEvolutions>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonEvolutions &&
            const DeepCollectionEquality()
                .equals(other._evolutionChains, _evolutionChains));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_evolutionChains));

  @override
  String toString() {
    return 'PokemonEvolutions(evolutionChains: $evolutionChains)';
  }
}

/// @nodoc
abstract mixin class _$PokemonEvolutionsCopyWith<$Res>
    implements $PokemonEvolutionsCopyWith<$Res> {
  factory _$PokemonEvolutionsCopyWith(
          _PokemonEvolutions value, $Res Function(_PokemonEvolutions) _then) =
      __$PokemonEvolutionsCopyWithImpl;
  @override
  @useResult
  $Res call({List<PokemonEvolution> evolutionChains});
}

/// @nodoc
class __$PokemonEvolutionsCopyWithImpl<$Res>
    implements _$PokemonEvolutionsCopyWith<$Res> {
  __$PokemonEvolutionsCopyWithImpl(this._self, this._then);

  final _PokemonEvolutions _self;
  final $Res Function(_PokemonEvolutions) _then;

  /// Create a copy of PokemonEvolutions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? evolutionChains = null,
  }) {
    return _then(_PokemonEvolutions(
      evolutionChains: null == evolutionChains
          ? _self._evolutionChains
          : evolutionChains // ignore: cast_nullable_to_non_nullable
              as List<PokemonEvolution>,
    ));
  }
}

/// @nodoc
mixin _$PokemonEvolution {
  PokemonBasicInfo get pokemon;
  bool get isBaby;
  int? get evolvesFromSpeciesId;
  List<String> get evolutionTriggers;
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

  /// Create a copy of PokemonEvolution
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PokemonEvolutionCopyWith<PokemonEvolution> get copyWith =>
      _$PokemonEvolutionCopyWithImpl<PokemonEvolution>(
          this as PokemonEvolution, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonEvolution &&
            (identical(other.pokemon, pokemon) || other.pokemon == pokemon) &&
            (identical(other.isBaby, isBaby) || other.isBaby == isBaby) &&
            (identical(other.evolvesFromSpeciesId, evolvesFromSpeciesId) ||
                other.evolvesFromSpeciesId == evolvesFromSpeciesId) &&
            const DeepCollectionEquality()
                .equals(other.evolutionTriggers, evolutionTriggers) &&
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

  @override
  int get hashCode => Object.hash(
      runtimeType,
      pokemon,
      isBaby,
      evolvesFromSpeciesId,
      const DeepCollectionEquality().hash(evolutionTriggers),
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
    return 'PokemonEvolution(pokemon: $pokemon, isBaby: $isBaby, evolvesFromSpeciesId: $evolvesFromSpeciesId, evolutionTriggers: $evolutionTriggers, minLevel: $minLevel, heldItem: $heldItem, evolutionItem: $evolutionItem, timeOfDay: $timeOfDay, minHappiness: $minHappiness, minAffection: $minAffection, minBeauty: $minBeauty, relativePhysicalStats: $relativePhysicalStats, needsOverworldRain: $needsOverworldRain, turnUpsideDown: $turnUpsideDown)';
  }
}

/// @nodoc
abstract mixin class $PokemonEvolutionCopyWith<$Res> {
  factory $PokemonEvolutionCopyWith(
          PokemonEvolution value, $Res Function(PokemonEvolution) _then) =
      _$PokemonEvolutionCopyWithImpl;
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
class _$PokemonEvolutionCopyWithImpl<$Res>
    implements $PokemonEvolutionCopyWith<$Res> {
  _$PokemonEvolutionCopyWithImpl(this._self, this._then);

  final PokemonEvolution _self;
  final $Res Function(PokemonEvolution) _then;

  /// Create a copy of PokemonEvolution
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      pokemon: null == pokemon
          ? _self.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as PokemonBasicInfo,
      isBaby: null == isBaby
          ? _self.isBaby
          : isBaby // ignore: cast_nullable_to_non_nullable
              as bool,
      evolvesFromSpeciesId: freezed == evolvesFromSpeciesId
          ? _self.evolvesFromSpeciesId
          : evolvesFromSpeciesId // ignore: cast_nullable_to_non_nullable
              as int?,
      evolutionTriggers: null == evolutionTriggers
          ? _self.evolutionTriggers
          : evolutionTriggers // ignore: cast_nullable_to_non_nullable
              as List<String>,
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

  /// Create a copy of PokemonEvolution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonBasicInfoCopyWith<$Res> get pokemon {
    return $PokemonBasicInfoCopyWith<$Res>(_self.pokemon, (value) {
      return _then(_self.copyWith(pokemon: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PokemonEvolution].
extension PokemonEvolutionPatterns on PokemonEvolution {
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
    TResult Function(_PokemonEvolution value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonEvolution() when $default != null:
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
    TResult Function(_PokemonEvolution value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonEvolution():
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
    TResult? Function(_PokemonEvolution value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonEvolution() when $default != null:
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
            PokemonBasicInfo pokemon,
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
            bool? turnUpsideDown)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonEvolution() when $default != null:
        return $default(
            _that.pokemon,
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
            PokemonBasicInfo pokemon,
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
            bool? turnUpsideDown)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonEvolution():
        return $default(
            _that.pokemon,
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
            PokemonBasicInfo pokemon,
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
            bool? turnUpsideDown)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonEvolution() when $default != null:
        return $default(
            _that.pokemon,
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

class _PokemonEvolution implements PokemonEvolution {
  _PokemonEvolution(
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

  /// Create a copy of PokemonEvolution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PokemonEvolutionCopyWith<_PokemonEvolution> get copyWith =>
      __$PokemonEvolutionCopyWithImpl<_PokemonEvolution>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonEvolution &&
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

  @override
  String toString() {
    return 'PokemonEvolution(pokemon: $pokemon, isBaby: $isBaby, evolvesFromSpeciesId: $evolvesFromSpeciesId, evolutionTriggers: $evolutionTriggers, minLevel: $minLevel, heldItem: $heldItem, evolutionItem: $evolutionItem, timeOfDay: $timeOfDay, minHappiness: $minHappiness, minAffection: $minAffection, minBeauty: $minBeauty, relativePhysicalStats: $relativePhysicalStats, needsOverworldRain: $needsOverworldRain, turnUpsideDown: $turnUpsideDown)';
  }
}

/// @nodoc
abstract mixin class _$PokemonEvolutionCopyWith<$Res>
    implements $PokemonEvolutionCopyWith<$Res> {
  factory _$PokemonEvolutionCopyWith(
          _PokemonEvolution value, $Res Function(_PokemonEvolution) _then) =
      __$PokemonEvolutionCopyWithImpl;
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
class __$PokemonEvolutionCopyWithImpl<$Res>
    implements _$PokemonEvolutionCopyWith<$Res> {
  __$PokemonEvolutionCopyWithImpl(this._self, this._then);

  final _PokemonEvolution _self;
  final $Res Function(_PokemonEvolution) _then;

  /// Create a copy of PokemonEvolution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_PokemonEvolution(
      pokemon: null == pokemon
          ? _self.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as PokemonBasicInfo,
      isBaby: null == isBaby
          ? _self.isBaby
          : isBaby // ignore: cast_nullable_to_non_nullable
              as bool,
      evolvesFromSpeciesId: freezed == evolvesFromSpeciesId
          ? _self.evolvesFromSpeciesId
          : evolvesFromSpeciesId // ignore: cast_nullable_to_non_nullable
              as int?,
      evolutionTriggers: null == evolutionTriggers
          ? _self._evolutionTriggers
          : evolutionTriggers // ignore: cast_nullable_to_non_nullable
              as List<String>,
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

  /// Create a copy of PokemonEvolution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonBasicInfoCopyWith<$Res> get pokemon {
    return $PokemonBasicInfoCopyWith<$Res>(_self.pokemon, (value) {
      return _then(_self.copyWith(pokemon: value));
    });
  }
}

// dart format on
