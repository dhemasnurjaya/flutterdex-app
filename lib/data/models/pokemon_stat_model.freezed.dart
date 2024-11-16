// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_stat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonStatModel {
  String get name => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;
  int get effortValue => throw _privateConstructorUsedError;

  /// Create a copy of PokemonStatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonStatModelCopyWith<PokemonStatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStatModelCopyWith<$Res> {
  factory $PokemonStatModelCopyWith(
          PokemonStatModel value, $Res Function(PokemonStatModel) then) =
      _$PokemonStatModelCopyWithImpl<$Res, PokemonStatModel>;
  @useResult
  $Res call({String name, int value, int effortValue});
}

/// @nodoc
class _$PokemonStatModelCopyWithImpl<$Res, $Val extends PokemonStatModel>
    implements $PokemonStatModelCopyWith<$Res> {
  _$PokemonStatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonStatModel
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
abstract class _$$PokemonStatModelImplCopyWith<$Res>
    implements $PokemonStatModelCopyWith<$Res> {
  factory _$$PokemonStatModelImplCopyWith(_$PokemonStatModelImpl value,
          $Res Function(_$PokemonStatModelImpl) then) =
      __$$PokemonStatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int value, int effortValue});
}

/// @nodoc
class __$$PokemonStatModelImplCopyWithImpl<$Res>
    extends _$PokemonStatModelCopyWithImpl<$Res, _$PokemonStatModelImpl>
    implements _$$PokemonStatModelImplCopyWith<$Res> {
  __$$PokemonStatModelImplCopyWithImpl(_$PokemonStatModelImpl _value,
      $Res Function(_$PokemonStatModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonStatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
    Object? effortValue = null,
  }) {
    return _then(_$PokemonStatModelImpl(
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

class _$PokemonStatModelImpl implements _PokemonStatModel {
  const _$PokemonStatModelImpl(
      {required this.name, required this.value, required this.effortValue});

  @override
  final String name;
  @override
  final int value;
  @override
  final int effortValue;

  @override
  String toString() {
    return 'PokemonStatModel(name: $name, value: $value, effortValue: $effortValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonStatModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.effortValue, effortValue) ||
                other.effortValue == effortValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, value, effortValue);

  /// Create a copy of PokemonStatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonStatModelImplCopyWith<_$PokemonStatModelImpl> get copyWith =>
      __$$PokemonStatModelImplCopyWithImpl<_$PokemonStatModelImpl>(
          this, _$identity);
}

abstract class _PokemonStatModel implements PokemonStatModel {
  const factory _PokemonStatModel(
      {required final String name,
      required final int value,
      required final int effortValue}) = _$PokemonStatModelImpl;

  @override
  String get name;
  @override
  int get value;
  @override
  int get effortValue;

  /// Create a copy of PokemonStatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonStatModelImplCopyWith<_$PokemonStatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
