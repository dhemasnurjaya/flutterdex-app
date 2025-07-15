// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_ability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonAbility {
  bool get isHidden;
  String get name;
  String get description;
  String get generation;

  /// Create a copy of PokemonAbility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PokemonAbilityCopyWith<PokemonAbility> get copyWith =>
      _$PokemonAbilityCopyWithImpl<PokemonAbility>(
          this as PokemonAbility, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonAbility &&
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
    return 'PokemonAbility(isHidden: $isHidden, name: $name, description: $description, generation: $generation)';
  }
}

/// @nodoc
abstract mixin class $PokemonAbilityCopyWith<$Res> {
  factory $PokemonAbilityCopyWith(
          PokemonAbility value, $Res Function(PokemonAbility) _then) =
      _$PokemonAbilityCopyWithImpl;
  @useResult
  $Res call(
      {bool isHidden, String name, String description, String generation});
}

/// @nodoc
class _$PokemonAbilityCopyWithImpl<$Res>
    implements $PokemonAbilityCopyWith<$Res> {
  _$PokemonAbilityCopyWithImpl(this._self, this._then);

  final PokemonAbility _self;
  final $Res Function(PokemonAbility) _then;

  /// Create a copy of PokemonAbility
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

/// Adds pattern-matching-related methods to [PokemonAbility].
extension PokemonAbilityPatterns on PokemonAbility {
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
    TResult Function(_PokemonAbility value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonAbility() when $default != null:
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
    TResult Function(_PokemonAbility value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonAbility():
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
    TResult? Function(_PokemonAbility value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonAbility() when $default != null:
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
      case _PokemonAbility() when $default != null:
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
      case _PokemonAbility():
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
      case _PokemonAbility() when $default != null:
        return $default(
            _that.isHidden, _that.name, _that.description, _that.generation);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PokemonAbility implements PokemonAbility {
  const _PokemonAbility(
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

  /// Create a copy of PokemonAbility
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PokemonAbilityCopyWith<_PokemonAbility> get copyWith =>
      __$PokemonAbilityCopyWithImpl<_PokemonAbility>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonAbility &&
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
    return 'PokemonAbility(isHidden: $isHidden, name: $name, description: $description, generation: $generation)';
  }
}

/// @nodoc
abstract mixin class _$PokemonAbilityCopyWith<$Res>
    implements $PokemonAbilityCopyWith<$Res> {
  factory _$PokemonAbilityCopyWith(
          _PokemonAbility value, $Res Function(_PokemonAbility) _then) =
      __$PokemonAbilityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isHidden, String name, String description, String generation});
}

/// @nodoc
class __$PokemonAbilityCopyWithImpl<$Res>
    implements _$PokemonAbilityCopyWith<$Res> {
  __$PokemonAbilityCopyWithImpl(this._self, this._then);

  final _PokemonAbility _self;
  final $Res Function(_PokemonAbility) _then;

  /// Create a copy of PokemonAbility
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isHidden = null,
    Object? name = null,
    Object? description = null,
    Object? generation = null,
  }) {
    return _then(_PokemonAbility(
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
