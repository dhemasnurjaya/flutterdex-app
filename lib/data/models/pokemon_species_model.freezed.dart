// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_species_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonSpeciesModel {
  int get id;
  String get name;
  int get height;
  int get weight;
  int get genderRate;
  int get captureRate;
  int? get baseHappiness;
  bool get isBaby;
  int? get hatchCounter;
  String get description;
  String get growthRate;

  /// Create a copy of PokemonSpeciesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PokemonSpeciesModelCopyWith<PokemonSpeciesModel> get copyWith =>
      _$PokemonSpeciesModelCopyWithImpl<PokemonSpeciesModel>(
          this as PokemonSpeciesModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonSpeciesModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.genderRate, genderRate) ||
                other.genderRate == genderRate) &&
            (identical(other.captureRate, captureRate) ||
                other.captureRate == captureRate) &&
            (identical(other.baseHappiness, baseHappiness) ||
                other.baseHappiness == baseHappiness) &&
            (identical(other.isBaby, isBaby) || other.isBaby == isBaby) &&
            (identical(other.hatchCounter, hatchCounter) ||
                other.hatchCounter == hatchCounter) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.growthRate, growthRate) ||
                other.growthRate == growthRate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      height,
      weight,
      genderRate,
      captureRate,
      baseHappiness,
      isBaby,
      hatchCounter,
      description,
      growthRate);

  @override
  String toString() {
    return 'PokemonSpeciesModel(id: $id, name: $name, height: $height, weight: $weight, genderRate: $genderRate, captureRate: $captureRate, baseHappiness: $baseHappiness, isBaby: $isBaby, hatchCounter: $hatchCounter, description: $description, growthRate: $growthRate)';
  }
}

/// @nodoc
abstract mixin class $PokemonSpeciesModelCopyWith<$Res> {
  factory $PokemonSpeciesModelCopyWith(
          PokemonSpeciesModel value, $Res Function(PokemonSpeciesModel) _then) =
      _$PokemonSpeciesModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      int height,
      int weight,
      int genderRate,
      int captureRate,
      int? baseHappiness,
      bool isBaby,
      int? hatchCounter,
      String description,
      String growthRate});
}

/// @nodoc
class _$PokemonSpeciesModelCopyWithImpl<$Res>
    implements $PokemonSpeciesModelCopyWith<$Res> {
  _$PokemonSpeciesModelCopyWithImpl(this._self, this._then);

  final PokemonSpeciesModel _self;
  final $Res Function(PokemonSpeciesModel) _then;

  /// Create a copy of PokemonSpeciesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? genderRate = null,
    Object? captureRate = null,
    Object? baseHappiness = freezed,
    Object? isBaby = null,
    Object? hatchCounter = freezed,
    Object? description = null,
    Object? growthRate = null,
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
      height: null == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      genderRate: null == genderRate
          ? _self.genderRate
          : genderRate // ignore: cast_nullable_to_non_nullable
              as int,
      captureRate: null == captureRate
          ? _self.captureRate
          : captureRate // ignore: cast_nullable_to_non_nullable
              as int,
      baseHappiness: freezed == baseHappiness
          ? _self.baseHappiness
          : baseHappiness // ignore: cast_nullable_to_non_nullable
              as int?,
      isBaby: null == isBaby
          ? _self.isBaby
          : isBaby // ignore: cast_nullable_to_non_nullable
              as bool,
      hatchCounter: freezed == hatchCounter
          ? _self.hatchCounter
          : hatchCounter // ignore: cast_nullable_to_non_nullable
              as int?,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      growthRate: null == growthRate
          ? _self.growthRate
          : growthRate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [PokemonSpeciesModel].
extension PokemonSpeciesModelPatterns on PokemonSpeciesModel {
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
    TResult Function(_PokemonSpeciesModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonSpeciesModel() when $default != null:
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
    TResult Function(_PokemonSpeciesModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonSpeciesModel():
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
    TResult? Function(_PokemonSpeciesModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonSpeciesModel() when $default != null:
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
            int height,
            int weight,
            int genderRate,
            int captureRate,
            int? baseHappiness,
            bool isBaby,
            int? hatchCounter,
            String description,
            String growthRate)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonSpeciesModel() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.height,
            _that.weight,
            _that.genderRate,
            _that.captureRate,
            _that.baseHappiness,
            _that.isBaby,
            _that.hatchCounter,
            _that.description,
            _that.growthRate);
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
            int height,
            int weight,
            int genderRate,
            int captureRate,
            int? baseHappiness,
            bool isBaby,
            int? hatchCounter,
            String description,
            String growthRate)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonSpeciesModel():
        return $default(
            _that.id,
            _that.name,
            _that.height,
            _that.weight,
            _that.genderRate,
            _that.captureRate,
            _that.baseHappiness,
            _that.isBaby,
            _that.hatchCounter,
            _that.description,
            _that.growthRate);
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
            int height,
            int weight,
            int genderRate,
            int captureRate,
            int? baseHappiness,
            bool isBaby,
            int? hatchCounter,
            String description,
            String growthRate)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonSpeciesModel() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.height,
            _that.weight,
            _that.genderRate,
            _that.captureRate,
            _that.baseHappiness,
            _that.isBaby,
            _that.hatchCounter,
            _that.description,
            _that.growthRate);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PokemonSpeciesModel implements PokemonSpeciesModel {
  const _PokemonSpeciesModel(
      {required this.id,
      required this.name,
      required this.height,
      required this.weight,
      required this.genderRate,
      required this.captureRate,
      required this.baseHappiness,
      required this.isBaby,
      required this.hatchCounter,
      required this.description,
      required this.growthRate});

  @override
  final int id;
  @override
  final String name;
  @override
  final int height;
  @override
  final int weight;
  @override
  final int genderRate;
  @override
  final int captureRate;
  @override
  final int? baseHappiness;
  @override
  final bool isBaby;
  @override
  final int? hatchCounter;
  @override
  final String description;
  @override
  final String growthRate;

  /// Create a copy of PokemonSpeciesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PokemonSpeciesModelCopyWith<_PokemonSpeciesModel> get copyWith =>
      __$PokemonSpeciesModelCopyWithImpl<_PokemonSpeciesModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonSpeciesModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.genderRate, genderRate) ||
                other.genderRate == genderRate) &&
            (identical(other.captureRate, captureRate) ||
                other.captureRate == captureRate) &&
            (identical(other.baseHappiness, baseHappiness) ||
                other.baseHappiness == baseHappiness) &&
            (identical(other.isBaby, isBaby) || other.isBaby == isBaby) &&
            (identical(other.hatchCounter, hatchCounter) ||
                other.hatchCounter == hatchCounter) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.growthRate, growthRate) ||
                other.growthRate == growthRate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      height,
      weight,
      genderRate,
      captureRate,
      baseHappiness,
      isBaby,
      hatchCounter,
      description,
      growthRate);

  @override
  String toString() {
    return 'PokemonSpeciesModel(id: $id, name: $name, height: $height, weight: $weight, genderRate: $genderRate, captureRate: $captureRate, baseHappiness: $baseHappiness, isBaby: $isBaby, hatchCounter: $hatchCounter, description: $description, growthRate: $growthRate)';
  }
}

/// @nodoc
abstract mixin class _$PokemonSpeciesModelCopyWith<$Res>
    implements $PokemonSpeciesModelCopyWith<$Res> {
  factory _$PokemonSpeciesModelCopyWith(_PokemonSpeciesModel value,
          $Res Function(_PokemonSpeciesModel) _then) =
      __$PokemonSpeciesModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int height,
      int weight,
      int genderRate,
      int captureRate,
      int? baseHappiness,
      bool isBaby,
      int? hatchCounter,
      String description,
      String growthRate});
}

/// @nodoc
class __$PokemonSpeciesModelCopyWithImpl<$Res>
    implements _$PokemonSpeciesModelCopyWith<$Res> {
  __$PokemonSpeciesModelCopyWithImpl(this._self, this._then);

  final _PokemonSpeciesModel _self;
  final $Res Function(_PokemonSpeciesModel) _then;

  /// Create a copy of PokemonSpeciesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? genderRate = null,
    Object? captureRate = null,
    Object? baseHappiness = freezed,
    Object? isBaby = null,
    Object? hatchCounter = freezed,
    Object? description = null,
    Object? growthRate = null,
  }) {
    return _then(_PokemonSpeciesModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      genderRate: null == genderRate
          ? _self.genderRate
          : genderRate // ignore: cast_nullable_to_non_nullable
              as int,
      captureRate: null == captureRate
          ? _self.captureRate
          : captureRate // ignore: cast_nullable_to_non_nullable
              as int,
      baseHappiness: freezed == baseHappiness
          ? _self.baseHappiness
          : baseHappiness // ignore: cast_nullable_to_non_nullable
              as int?,
      isBaby: null == isBaby
          ? _self.isBaby
          : isBaby // ignore: cast_nullable_to_non_nullable
              as bool,
      hatchCounter: freezed == hatchCounter
          ? _self.hatchCounter
          : hatchCounter // ignore: cast_nullable_to_non_nullable
              as int?,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      growthRate: null == growthRate
          ? _self.growthRate
          : growthRate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
