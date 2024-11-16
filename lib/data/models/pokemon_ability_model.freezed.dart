// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_ability_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonAbilityModel {
  bool get isHidden => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get generation => throw _privateConstructorUsedError;

  /// Create a copy of PokemonAbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonAbilityModelCopyWith<PokemonAbilityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonAbilityModelCopyWith<$Res> {
  factory $PokemonAbilityModelCopyWith(
          PokemonAbilityModel value, $Res Function(PokemonAbilityModel) then) =
      _$PokemonAbilityModelCopyWithImpl<$Res, PokemonAbilityModel>;
  @useResult
  $Res call(
      {bool isHidden, String name, String description, String generation});
}

/// @nodoc
class _$PokemonAbilityModelCopyWithImpl<$Res, $Val extends PokemonAbilityModel>
    implements $PokemonAbilityModelCopyWith<$Res> {
  _$PokemonAbilityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      generation: null == generation
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonAbilityModelImplCopyWith<$Res>
    implements $PokemonAbilityModelCopyWith<$Res> {
  factory _$$PokemonAbilityModelImplCopyWith(_$PokemonAbilityModelImpl value,
          $Res Function(_$PokemonAbilityModelImpl) then) =
      __$$PokemonAbilityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isHidden, String name, String description, String generation});
}

/// @nodoc
class __$$PokemonAbilityModelImplCopyWithImpl<$Res>
    extends _$PokemonAbilityModelCopyWithImpl<$Res, _$PokemonAbilityModelImpl>
    implements _$$PokemonAbilityModelImplCopyWith<$Res> {
  __$$PokemonAbilityModelImplCopyWithImpl(_$PokemonAbilityModelImpl _value,
      $Res Function(_$PokemonAbilityModelImpl) _then)
      : super(_value, _then);

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
    return _then(_$PokemonAbilityModelImpl(
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      generation: null == generation
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PokemonAbilityModelImpl implements _PokemonAbilityModel {
  const _$PokemonAbilityModelImpl(
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

  @override
  String toString() {
    return 'PokemonAbilityModel(isHidden: $isHidden, name: $name, description: $description, generation: $generation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonAbilityModelImpl &&
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

  /// Create a copy of PokemonAbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonAbilityModelImplCopyWith<_$PokemonAbilityModelImpl> get copyWith =>
      __$$PokemonAbilityModelImplCopyWithImpl<_$PokemonAbilityModelImpl>(
          this, _$identity);
}

abstract class _PokemonAbilityModel implements PokemonAbilityModel {
  const factory _PokemonAbilityModel(
      {required final bool isHidden,
      required final String name,
      required final String description,
      required final String generation}) = _$PokemonAbilityModelImpl;

  @override
  bool get isHidden;
  @override
  String get name;
  @override
  String get description;
  @override
  String get generation;

  /// Create a copy of PokemonAbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonAbilityModelImplCopyWith<_$PokemonAbilityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
