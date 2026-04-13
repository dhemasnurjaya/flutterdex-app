// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_move.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonMove {
  String get name;
  String get type;
  int? get level;
  int? get power;
  int get pp;
  int? get accuracy;
  String get description;

  /// Create a copy of PokemonMove
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PokemonMoveCopyWith<PokemonMove> get copyWith =>
      _$PokemonMoveCopyWithImpl<PokemonMove>(this as PokemonMove, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonMove &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.power, power) || other.power == power) &&
            (identical(other.pp, pp) || other.pp == pp) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, type, level, power, pp, accuracy, description);

  @override
  String toString() {
    return 'PokemonMove(name: $name, type: $type, level: $level, power: $power, pp: $pp, accuracy: $accuracy, description: $description)';
  }
}

/// @nodoc
abstract mixin class $PokemonMoveCopyWith<$Res> {
  factory $PokemonMoveCopyWith(
          PokemonMove value, $Res Function(PokemonMove) _then) =
      _$PokemonMoveCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String type,
      int? level,
      int? power,
      int pp,
      int? accuracy,
      String description});
}

/// @nodoc
class _$PokemonMoveCopyWithImpl<$Res> implements $PokemonMoveCopyWith<$Res> {
  _$PokemonMoveCopyWithImpl(this._self, this._then);

  final PokemonMove _self;
  final $Res Function(PokemonMove) _then;

  /// Create a copy of PokemonMove
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? level = freezed,
    Object? power = freezed,
    Object? pp = null,
    Object? accuracy = freezed,
    Object? description = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      power: freezed == power
          ? _self.power
          : power // ignore: cast_nullable_to_non_nullable
              as int?,
      pp: null == pp
          ? _self.pp
          : pp // ignore: cast_nullable_to_non_nullable
              as int,
      accuracy: freezed == accuracy
          ? _self.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as int?,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [PokemonMove].
extension PokemonMovePatterns on PokemonMove {
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
    TResult Function(_PokemonMove value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonMove() when $default != null:
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
    TResult Function(_PokemonMove value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonMove():
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
    TResult? Function(_PokemonMove value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonMove() when $default != null:
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
    TResult Function(String name, String type, int? level, int? power, int pp,
            int? accuracy, String description)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonMove() when $default != null:
        return $default(_that.name, _that.type, _that.level, _that.power,
            _that.pp, _that.accuracy, _that.description);
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
    TResult Function(String name, String type, int? level, int? power, int pp,
            int? accuracy, String description)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonMove():
        return $default(_that.name, _that.type, _that.level, _that.power,
            _that.pp, _that.accuracy, _that.description);
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
    TResult? Function(String name, String type, int? level, int? power, int pp,
            int? accuracy, String description)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonMove() when $default != null:
        return $default(_that.name, _that.type, _that.level, _that.power,
            _that.pp, _that.accuracy, _that.description);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PokemonMove implements PokemonMove {
  const _PokemonMove(
      {required this.name,
      required this.type,
      required this.level,
      required this.power,
      required this.pp,
      required this.accuracy,
      required this.description});

  @override
  final String name;
  @override
  final String type;
  @override
  final int? level;
  @override
  final int? power;
  @override
  final int pp;
  @override
  final int? accuracy;
  @override
  final String description;

  /// Create a copy of PokemonMove
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PokemonMoveCopyWith<_PokemonMove> get copyWith =>
      __$PokemonMoveCopyWithImpl<_PokemonMove>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonMove &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.power, power) || other.power == power) &&
            (identical(other.pp, pp) || other.pp == pp) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, type, level, power, pp, accuracy, description);

  @override
  String toString() {
    return 'PokemonMove(name: $name, type: $type, level: $level, power: $power, pp: $pp, accuracy: $accuracy, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$PokemonMoveCopyWith<$Res>
    implements $PokemonMoveCopyWith<$Res> {
  factory _$PokemonMoveCopyWith(
          _PokemonMove value, $Res Function(_PokemonMove) _then) =
      __$PokemonMoveCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String type,
      int? level,
      int? power,
      int pp,
      int? accuracy,
      String description});
}

/// @nodoc
class __$PokemonMoveCopyWithImpl<$Res> implements _$PokemonMoveCopyWith<$Res> {
  __$PokemonMoveCopyWithImpl(this._self, this._then);

  final _PokemonMove _self;
  final $Res Function(_PokemonMove) _then;

  /// Create a copy of PokemonMove
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? level = freezed,
    Object? power = freezed,
    Object? pp = null,
    Object? accuracy = freezed,
    Object? description = null,
  }) {
    return _then(_PokemonMove(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      power: freezed == power
          ? _self.power
          : power // ignore: cast_nullable_to_non_nullable
              as int?,
      pp: null == pp
          ? _self.pp
          : pp // ignore: cast_nullable_to_non_nullable
              as int,
      accuracy: freezed == accuracy
          ? _self.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as int?,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
