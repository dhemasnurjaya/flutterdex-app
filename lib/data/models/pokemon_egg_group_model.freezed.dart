// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_egg_group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonEggGroupModel {
  String get name => throw _privateConstructorUsedError;

  /// Create a copy of PokemonEggGroupModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonEggGroupModelCopyWith<PokemonEggGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonEggGroupModelCopyWith<$Res> {
  factory $PokemonEggGroupModelCopyWith(PokemonEggGroupModel value,
          $Res Function(PokemonEggGroupModel) then) =
      _$PokemonEggGroupModelCopyWithImpl<$Res, PokemonEggGroupModel>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$PokemonEggGroupModelCopyWithImpl<$Res,
        $Val extends PokemonEggGroupModel>
    implements $PokemonEggGroupModelCopyWith<$Res> {
  _$PokemonEggGroupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonEggGroupModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonEggGroupModelImplCopyWith<$Res>
    implements $PokemonEggGroupModelCopyWith<$Res> {
  factory _$$PokemonEggGroupModelImplCopyWith(_$PokemonEggGroupModelImpl value,
          $Res Function(_$PokemonEggGroupModelImpl) then) =
      __$$PokemonEggGroupModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$PokemonEggGroupModelImplCopyWithImpl<$Res>
    extends _$PokemonEggGroupModelCopyWithImpl<$Res, _$PokemonEggGroupModelImpl>
    implements _$$PokemonEggGroupModelImplCopyWith<$Res> {
  __$$PokemonEggGroupModelImplCopyWithImpl(_$PokemonEggGroupModelImpl _value,
      $Res Function(_$PokemonEggGroupModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonEggGroupModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$PokemonEggGroupModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PokemonEggGroupModelImpl implements _PokemonEggGroupModel {
  const _$PokemonEggGroupModelImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'PokemonEggGroupModel(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonEggGroupModelImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of PokemonEggGroupModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonEggGroupModelImplCopyWith<_$PokemonEggGroupModelImpl>
      get copyWith =>
          __$$PokemonEggGroupModelImplCopyWithImpl<_$PokemonEggGroupModelImpl>(
              this, _$identity);
}

abstract class _PokemonEggGroupModel implements PokemonEggGroupModel {
  const factory _PokemonEggGroupModel({required final String name}) =
      _$PokemonEggGroupModelImpl;

  @override
  String get name;

  /// Create a copy of PokemonEggGroupModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonEggGroupModelImplCopyWith<_$PokemonEggGroupModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
