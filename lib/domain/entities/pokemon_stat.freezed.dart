// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_stat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonStat {
  String get name => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;
  int get effortValue => throw _privateConstructorUsedError;

  /// Create a copy of PokemonStat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonStatCopyWith<PokemonStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStatCopyWith<$Res> {
  factory $PokemonStatCopyWith(
          PokemonStat value, $Res Function(PokemonStat) then) =
      _$PokemonStatCopyWithImpl<$Res, PokemonStat>;
  @useResult
  $Res call({String name, int value, int effortValue});
}

/// @nodoc
class _$PokemonStatCopyWithImpl<$Res, $Val extends PokemonStat>
    implements $PokemonStatCopyWith<$Res> {
  _$PokemonStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonStat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
    Object? effortValue = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      effortValue: null == effortValue
          ? _value.effortValue
          : effortValue // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonStatImplCopyWith<$Res>
    implements $PokemonStatCopyWith<$Res> {
  factory _$$PokemonStatImplCopyWith(
          _$PokemonStatImpl value, $Res Function(_$PokemonStatImpl) then) =
      __$$PokemonStatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int value, int effortValue});
}

/// @nodoc
class __$$PokemonStatImplCopyWithImpl<$Res>
    extends _$PokemonStatCopyWithImpl<$Res, _$PokemonStatImpl>
    implements _$$PokemonStatImplCopyWith<$Res> {
  __$$PokemonStatImplCopyWithImpl(
      _$PokemonStatImpl _value, $Res Function(_$PokemonStatImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonStat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
    Object? effortValue = null,
  }) {
    return _then(_$PokemonStatImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      effortValue: null == effortValue
          ? _value.effortValue
          : effortValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PokemonStatImpl implements _PokemonStat {
  const _$PokemonStatImpl(
      {required this.name, required this.value, required this.effortValue});

  @override
  final String name;
  @override
  final int value;
  @override
  final int effortValue;

  @override
  String toString() {
    return 'PokemonStat(name: $name, value: $value, effortValue: $effortValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonStatImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.effortValue, effortValue) ||
                other.effortValue == effortValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, value, effortValue);

  /// Create a copy of PokemonStat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonStatImplCopyWith<_$PokemonStatImpl> get copyWith =>
      __$$PokemonStatImplCopyWithImpl<_$PokemonStatImpl>(this, _$identity);
}

abstract class _PokemonStat implements PokemonStat {
  const factory _PokemonStat(
      {required final String name,
      required final int value,
      required final int effortValue}) = _$PokemonStatImpl;

  @override
  String get name;
  @override
  int get value;
  @override
  int get effortValue;

  /// Create a copy of PokemonStat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonStatImplCopyWith<_$PokemonStatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
