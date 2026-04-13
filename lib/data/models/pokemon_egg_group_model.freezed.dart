// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_egg_group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonEggGroupModel {
  String get name;

  /// Create a copy of PokemonEggGroupModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PokemonEggGroupModelCopyWith<PokemonEggGroupModel> get copyWith =>
      _$PokemonEggGroupModelCopyWithImpl<PokemonEggGroupModel>(
          this as PokemonEggGroupModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonEggGroupModel &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  String toString() {
    return 'PokemonEggGroupModel(name: $name)';
  }
}

/// @nodoc
abstract mixin class $PokemonEggGroupModelCopyWith<$Res> {
  factory $PokemonEggGroupModelCopyWith(PokemonEggGroupModel value,
          $Res Function(PokemonEggGroupModel) _then) =
      _$PokemonEggGroupModelCopyWithImpl;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$PokemonEggGroupModelCopyWithImpl<$Res>
    implements $PokemonEggGroupModelCopyWith<$Res> {
  _$PokemonEggGroupModelCopyWithImpl(this._self, this._then);

  final PokemonEggGroupModel _self;
  final $Res Function(PokemonEggGroupModel) _then;

  /// Create a copy of PokemonEggGroupModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [PokemonEggGroupModel].
extension PokemonEggGroupModelPatterns on PokemonEggGroupModel {
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
    TResult Function(_PokemonEggGroupModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonEggGroupModel() when $default != null:
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
    TResult Function(_PokemonEggGroupModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonEggGroupModel():
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
    TResult? Function(_PokemonEggGroupModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonEggGroupModel() when $default != null:
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
    TResult Function(String name)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonEggGroupModel() when $default != null:
        return $default(_that.name);
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
    TResult Function(String name) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonEggGroupModel():
        return $default(_that.name);
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
    TResult? Function(String name)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonEggGroupModel() when $default != null:
        return $default(_that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PokemonEggGroupModel implements PokemonEggGroupModel {
  const _PokemonEggGroupModel({required this.name});

  @override
  final String name;

  /// Create a copy of PokemonEggGroupModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PokemonEggGroupModelCopyWith<_PokemonEggGroupModel> get copyWith =>
      __$PokemonEggGroupModelCopyWithImpl<_PokemonEggGroupModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonEggGroupModel &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  String toString() {
    return 'PokemonEggGroupModel(name: $name)';
  }
}

/// @nodoc
abstract mixin class _$PokemonEggGroupModelCopyWith<$Res>
    implements $PokemonEggGroupModelCopyWith<$Res> {
  factory _$PokemonEggGroupModelCopyWith(_PokemonEggGroupModel value,
          $Res Function(_PokemonEggGroupModel) _then) =
      __$PokemonEggGroupModelCopyWithImpl;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$PokemonEggGroupModelCopyWithImpl<$Res>
    implements _$PokemonEggGroupModelCopyWith<$Res> {
  __$PokemonEggGroupModelCopyWithImpl(this._self, this._then);

  final _PokemonEggGroupModel _self;
  final $Res Function(_PokemonEggGroupModel) _then;

  /// Create a copy of PokemonEggGroupModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
  }) {
    return _then(_PokemonEggGroupModel(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
