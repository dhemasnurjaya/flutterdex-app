// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_stat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonStat {
  String get name;
  int get value;
  int get effortValue;

  /// Create a copy of PokemonStat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PokemonStatCopyWith<PokemonStat> get copyWith =>
      _$PokemonStatCopyWithImpl<PokemonStat>(this as PokemonStat, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonStat &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.effortValue, effortValue) ||
                other.effortValue == effortValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, value, effortValue);

  @override
  String toString() {
    return 'PokemonStat(name: $name, value: $value, effortValue: $effortValue)';
  }
}

/// @nodoc
abstract mixin class $PokemonStatCopyWith<$Res> {
  factory $PokemonStatCopyWith(
          PokemonStat value, $Res Function(PokemonStat) _then) =
      _$PokemonStatCopyWithImpl;
  @useResult
  $Res call({String name, int value, int effortValue});
}

/// @nodoc
class _$PokemonStatCopyWithImpl<$Res> implements $PokemonStatCopyWith<$Res> {
  _$PokemonStatCopyWithImpl(this._self, this._then);

  final PokemonStat _self;
  final $Res Function(PokemonStat) _then;

  /// Create a copy of PokemonStat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
    Object? effortValue = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      effortValue: null == effortValue
          ? _self.effortValue
          : effortValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [PokemonStat].
extension PokemonStatPatterns on PokemonStat {
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
    TResult Function(_PokemonStat value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonStat() when $default != null:
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
    TResult Function(_PokemonStat value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonStat():
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
    TResult? Function(_PokemonStat value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonStat() when $default != null:
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
    TResult Function(String name, int value, int effortValue)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonStat() when $default != null:
        return $default(_that.name, _that.value, _that.effortValue);
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
    TResult Function(String name, int value, int effortValue) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonStat():
        return $default(_that.name, _that.value, _that.effortValue);
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
    TResult? Function(String name, int value, int effortValue)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonStat() when $default != null:
        return $default(_that.name, _that.value, _that.effortValue);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PokemonStat implements PokemonStat {
  const _PokemonStat(
      {required this.name, required this.value, required this.effortValue});

  @override
  final String name;
  @override
  final int value;
  @override
  final int effortValue;

  /// Create a copy of PokemonStat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PokemonStatCopyWith<_PokemonStat> get copyWith =>
      __$PokemonStatCopyWithImpl<_PokemonStat>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonStat &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.effortValue, effortValue) ||
                other.effortValue == effortValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, value, effortValue);

  @override
  String toString() {
    return 'PokemonStat(name: $name, value: $value, effortValue: $effortValue)';
  }
}

/// @nodoc
abstract mixin class _$PokemonStatCopyWith<$Res>
    implements $PokemonStatCopyWith<$Res> {
  factory _$PokemonStatCopyWith(
          _PokemonStat value, $Res Function(_PokemonStat) _then) =
      __$PokemonStatCopyWithImpl;
  @override
  @useResult
  $Res call({String name, int value, int effortValue});
}

/// @nodoc
class __$PokemonStatCopyWithImpl<$Res> implements _$PokemonStatCopyWith<$Res> {
  __$PokemonStatCopyWithImpl(this._self, this._then);

  final _PokemonStat _self;
  final $Res Function(_PokemonStat) _then;

  /// Create a copy of PokemonStat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? value = null,
    Object? effortValue = null,
  }) {
    return _then(_PokemonStat(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      effortValue: null == effortValue
          ? _self.effortValue
          : effortValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
