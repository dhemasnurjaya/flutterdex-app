// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_move_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonMoveModel {
  int? get level;
  String get moveName;
  int? get power;
  int get pp;
  int? get accuracy;
  String get type;
  String get description;

  /// Create a copy of PokemonMoveModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PokemonMoveModelCopyWith<PokemonMoveModel> get copyWith =>
      _$PokemonMoveModelCopyWithImpl<PokemonMoveModel>(
          this as PokemonMoveModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonMoveModel &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.moveName, moveName) ||
                other.moveName == moveName) &&
            (identical(other.power, power) || other.power == power) &&
            (identical(other.pp, pp) || other.pp == pp) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, level, moveName, power, pp, accuracy, type, description);

  @override
  String toString() {
    return 'PokemonMoveModel(level: $level, moveName: $moveName, power: $power, pp: $pp, accuracy: $accuracy, type: $type, description: $description)';
  }
}

/// @nodoc
abstract mixin class $PokemonMoveModelCopyWith<$Res> {
  factory $PokemonMoveModelCopyWith(
          PokemonMoveModel value, $Res Function(PokemonMoveModel) _then) =
      _$PokemonMoveModelCopyWithImpl;
  @useResult
  $Res call(
      {int? level,
      String moveName,
      int? power,
      int pp,
      int? accuracy,
      String type,
      String description});
}

/// @nodoc
class _$PokemonMoveModelCopyWithImpl<$Res>
    implements $PokemonMoveModelCopyWith<$Res> {
  _$PokemonMoveModelCopyWithImpl(this._self, this._then);

  final PokemonMoveModel _self;
  final $Res Function(PokemonMoveModel) _then;

  /// Create a copy of PokemonMoveModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = freezed,
    Object? moveName = null,
    Object? power = freezed,
    Object? pp = null,
    Object? accuracy = freezed,
    Object? type = null,
    Object? description = null,
  }) {
    return _then(_self.copyWith(
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      moveName: null == moveName
          ? _self.moveName
          : moveName // ignore: cast_nullable_to_non_nullable
              as String,
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
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [PokemonMoveModel].
extension PokemonMoveModelPatterns on PokemonMoveModel {
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
    TResult Function(_PokemonMoveModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonMoveModel() when $default != null:
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
    TResult Function(_PokemonMoveModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonMoveModel():
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
    TResult? Function(_PokemonMoveModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonMoveModel() when $default != null:
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
    TResult Function(int? level, String moveName, int? power, int pp,
            int? accuracy, String type, String description)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonMoveModel() when $default != null:
        return $default(_that.level, _that.moveName, _that.power, _that.pp,
            _that.accuracy, _that.type, _that.description);
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
    TResult Function(int? level, String moveName, int? power, int pp,
            int? accuracy, String type, String description)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonMoveModel():
        return $default(_that.level, _that.moveName, _that.power, _that.pp,
            _that.accuracy, _that.type, _that.description);
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
    TResult? Function(int? level, String moveName, int? power, int pp,
            int? accuracy, String type, String description)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonMoveModel() when $default != null:
        return $default(_that.level, _that.moveName, _that.power, _that.pp,
            _that.accuracy, _that.type, _that.description);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PokemonMoveModel implements PokemonMoveModel {
  const _PokemonMoveModel(
      {required this.level,
      required this.moveName,
      required this.power,
      required this.pp,
      required this.accuracy,
      required this.type,
      required this.description});

  @override
  final int? level;
  @override
  final String moveName;
  @override
  final int? power;
  @override
  final int pp;
  @override
  final int? accuracy;
  @override
  final String type;
  @override
  final String description;

  /// Create a copy of PokemonMoveModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PokemonMoveModelCopyWith<_PokemonMoveModel> get copyWith =>
      __$PokemonMoveModelCopyWithImpl<_PokemonMoveModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonMoveModel &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.moveName, moveName) ||
                other.moveName == moveName) &&
            (identical(other.power, power) || other.power == power) &&
            (identical(other.pp, pp) || other.pp == pp) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, level, moveName, power, pp, accuracy, type, description);

  @override
  String toString() {
    return 'PokemonMoveModel(level: $level, moveName: $moveName, power: $power, pp: $pp, accuracy: $accuracy, type: $type, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$PokemonMoveModelCopyWith<$Res>
    implements $PokemonMoveModelCopyWith<$Res> {
  factory _$PokemonMoveModelCopyWith(
          _PokemonMoveModel value, $Res Function(_PokemonMoveModel) _then) =
      __$PokemonMoveModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? level,
      String moveName,
      int? power,
      int pp,
      int? accuracy,
      String type,
      String description});
}

/// @nodoc
class __$PokemonMoveModelCopyWithImpl<$Res>
    implements _$PokemonMoveModelCopyWith<$Res> {
  __$PokemonMoveModelCopyWithImpl(this._self, this._then);

  final _PokemonMoveModel _self;
  final $Res Function(_PokemonMoveModel) _then;

  /// Create a copy of PokemonMoveModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? level = freezed,
    Object? moveName = null,
    Object? power = freezed,
    Object? pp = null,
    Object? accuracy = freezed,
    Object? type = null,
    Object? description = null,
  }) {
    return _then(_PokemonMoveModel(
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      moveName: null == moveName
          ? _self.moveName
          : moveName // ignore: cast_nullable_to_non_nullable
              as String,
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
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
