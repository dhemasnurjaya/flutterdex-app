// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_basic_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonBasicInfo {
  int get id;
  String get name;
  String get genus;
  List<String> get types;

  /// Create a copy of PokemonBasicInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PokemonBasicInfoCopyWith<PokemonBasicInfo> get copyWith =>
      _$PokemonBasicInfoCopyWithImpl<PokemonBasicInfo>(
          this as PokemonBasicInfo, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonBasicInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.genus, genus) || other.genus == genus) &&
            const DeepCollectionEquality().equals(other.types, types));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, genus, const DeepCollectionEquality().hash(types));

  @override
  String toString() {
    return 'PokemonBasicInfo(id: $id, name: $name, genus: $genus, types: $types)';
  }
}

/// @nodoc
abstract mixin class $PokemonBasicInfoCopyWith<$Res> {
  factory $PokemonBasicInfoCopyWith(
          PokemonBasicInfo value, $Res Function(PokemonBasicInfo) _then) =
      _$PokemonBasicInfoCopyWithImpl;
  @useResult
  $Res call({int id, String name, String genus, List<String> types});
}

/// @nodoc
class _$PokemonBasicInfoCopyWithImpl<$Res>
    implements $PokemonBasicInfoCopyWith<$Res> {
  _$PokemonBasicInfoCopyWithImpl(this._self, this._then);

  final PokemonBasicInfo _self;
  final $Res Function(PokemonBasicInfo) _then;

  /// Create a copy of PokemonBasicInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? genus = null,
    Object? types = null,
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
      genus: null == genus
          ? _self.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _self.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [PokemonBasicInfo].
extension PokemonBasicInfoPatterns on PokemonBasicInfo {
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
    TResult Function(_PokemonBasicInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonBasicInfo() when $default != null:
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
    TResult Function(_PokemonBasicInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonBasicInfo():
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
    TResult? Function(_PokemonBasicInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonBasicInfo() when $default != null:
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
    TResult Function(int id, String name, String genus, List<String> types)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonBasicInfo() when $default != null:
        return $default(_that.id, _that.name, _that.genus, _that.types);
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
    TResult Function(int id, String name, String genus, List<String> types)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonBasicInfo():
        return $default(_that.id, _that.name, _that.genus, _that.types);
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
    TResult? Function(int id, String name, String genus, List<String> types)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonBasicInfo() when $default != null:
        return $default(_that.id, _that.name, _that.genus, _that.types);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PokemonBasicInfo implements PokemonBasicInfo {
  _PokemonBasicInfo(
      {required this.id,
      required this.name,
      required this.genus,
      required final List<String> types})
      : _types = types;

  @override
  final int id;
  @override
  final String name;
  @override
  final String genus;
  final List<String> _types;
  @override
  List<String> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  /// Create a copy of PokemonBasicInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PokemonBasicInfoCopyWith<_PokemonBasicInfo> get copyWith =>
      __$PokemonBasicInfoCopyWithImpl<_PokemonBasicInfo>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonBasicInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.genus, genus) || other.genus == genus) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, genus,
      const DeepCollectionEquality().hash(_types));

  @override
  String toString() {
    return 'PokemonBasicInfo(id: $id, name: $name, genus: $genus, types: $types)';
  }
}

/// @nodoc
abstract mixin class _$PokemonBasicInfoCopyWith<$Res>
    implements $PokemonBasicInfoCopyWith<$Res> {
  factory _$PokemonBasicInfoCopyWith(
          _PokemonBasicInfo value, $Res Function(_PokemonBasicInfo) _then) =
      __$PokemonBasicInfoCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String name, String genus, List<String> types});
}

/// @nodoc
class __$PokemonBasicInfoCopyWithImpl<$Res>
    implements _$PokemonBasicInfoCopyWith<$Res> {
  __$PokemonBasicInfoCopyWithImpl(this._self, this._then);

  final _PokemonBasicInfo _self;
  final $Res Function(_PokemonBasicInfo) _then;

  /// Create a copy of PokemonBasicInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? genus = null,
    Object? types = null,
  }) {
    return _then(_PokemonBasicInfo(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      genus: null == genus
          ? _self.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _self._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
