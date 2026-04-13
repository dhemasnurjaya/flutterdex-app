// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_ability_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonAbilityModel {
  bool get isHidden;
  String get name;
  String get description;
  String get generation;

  /// Create a copy of PokemonAbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PokemonAbilityModelCopyWith<PokemonAbilityModel> get copyWith =>
      _$PokemonAbilityModelCopyWithImpl<PokemonAbilityModel>(
          this as PokemonAbilityModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonAbilityModel &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.generation, generation) ||
                other.generation == generation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isHidden, name, description, generation);

  @override
  String toString() {
    return 'PokemonAbilityModel(isHidden: $isHidden, name: $name, description: $description, generation: $generation)';
  }
}

/// @nodoc
abstract mixin class $PokemonAbilityModelCopyWith<$Res> {
  factory $PokemonAbilityModelCopyWith(
          PokemonAbilityModel value, $Res Function(PokemonAbilityModel) _then) =
      _$PokemonAbilityModelCopyWithImpl;
  @useResult
  $Res call(
      {bool isHidden, String name, String description, String generation});
}

/// @nodoc
class _$PokemonAbilityModelCopyWithImpl<$Res>
    implements $PokemonAbilityModelCopyWith<$Res> {
  _$PokemonAbilityModelCopyWithImpl(this._self, this._then);

  final PokemonAbilityModel _self;
  final $Res Function(PokemonAbilityModel) _then;

  /// Create a copy of PokemonAbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHidden = null,
    Object? name = null,
    Object? description = null,
    Object? generation = null,
  }) {
    return _then(_self.copyWith(
      isHidden: null == isHidden
          ? _self.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      generation: null == generation
          ? _self.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [PokemonAbilityModel].
extension PokemonAbilityModelPatterns on PokemonAbilityModel {
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
    TResult Function(_PokemonAbilityModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonAbilityModel() when $default != null:
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
    TResult Function(_PokemonAbilityModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonAbilityModel():
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
    TResult? Function(_PokemonAbilityModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonAbilityModel() when $default != null:
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
            bool isHidden, String name, String description, String generation)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonAbilityModel() when $default != null:
        return $default(
            _that.isHidden, _that.name, _that.description, _that.generation);
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
            bool isHidden, String name, String description, String generation)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonAbilityModel():
        return $default(
            _that.isHidden, _that.name, _that.description, _that.generation);
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
            bool isHidden, String name, String description, String generation)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonAbilityModel() when $default != null:
        return $default(
            _that.isHidden, _that.name, _that.description, _that.generation);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PokemonAbilityModel implements PokemonAbilityModel {
  const _PokemonAbilityModel(
      {required this.isHidden,
      required this.name,
      required this.description,
      required this.generation});

  @override
  final bool isHidden;
  @override
  final String name;
  @override
  final String description;
  @override
  final String generation;

  /// Create a copy of PokemonAbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PokemonAbilityModelCopyWith<_PokemonAbilityModel> get copyWith =>
      __$PokemonAbilityModelCopyWithImpl<_PokemonAbilityModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonAbilityModel &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.generation, generation) ||
                other.generation == generation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isHidden, name, description, generation);

  @override
  String toString() {
    return 'PokemonAbilityModel(isHidden: $isHidden, name: $name, description: $description, generation: $generation)';
  }
}

/// @nodoc
abstract mixin class _$PokemonAbilityModelCopyWith<$Res>
    implements $PokemonAbilityModelCopyWith<$Res> {
  factory _$PokemonAbilityModelCopyWith(_PokemonAbilityModel value,
          $Res Function(_PokemonAbilityModel) _then) =
      __$PokemonAbilityModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isHidden, String name, String description, String generation});
}

/// @nodoc
class __$PokemonAbilityModelCopyWithImpl<$Res>
    implements _$PokemonAbilityModelCopyWith<$Res> {
  __$PokemonAbilityModelCopyWithImpl(this._self, this._then);

  final _PokemonAbilityModel _self;
  final $Res Function(_PokemonAbilityModel) _then;

  /// Create a copy of PokemonAbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isHidden = null,
    Object? name = null,
    Object? description = null,
    Object? generation = null,
  }) {
    return _then(_PokemonAbilityModel(
      isHidden: null == isHidden
          ? _self.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      generation: null == generation
          ? _self.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
