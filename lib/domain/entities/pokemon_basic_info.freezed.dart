// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_basic_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonBasicInfo _$PokemonBasicInfoFromJson(Map<String, dynamic> json) {
  return _PokemonBasicInfo.fromJson(json);
}

/// @nodoc
mixin _$PokemonBasicInfo {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get genus => throw _privateConstructorUsedError;
  List<String> get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonBasicInfoCopyWith<PokemonBasicInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonBasicInfoCopyWith<$Res> {
  factory $PokemonBasicInfoCopyWith(
          PokemonBasicInfo value, $Res Function(PokemonBasicInfo) then) =
      _$PokemonBasicInfoCopyWithImpl<$Res, PokemonBasicInfo>;
  @useResult
  $Res call({int id, String name, String genus, List<String> types});
}

/// @nodoc
class _$PokemonBasicInfoCopyWithImpl<$Res, $Val extends PokemonBasicInfo>
    implements $PokemonBasicInfoCopyWith<$Res> {
  _$PokemonBasicInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? genus = null,
    Object? types = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      genus: null == genus
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonBasicInfoImplCopyWith<$Res>
    implements $PokemonBasicInfoCopyWith<$Res> {
  factory _$$PokemonBasicInfoImplCopyWith(_$PokemonBasicInfoImpl value,
          $Res Function(_$PokemonBasicInfoImpl) then) =
      __$$PokemonBasicInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String genus, List<String> types});
}

/// @nodoc
class __$$PokemonBasicInfoImplCopyWithImpl<$Res>
    extends _$PokemonBasicInfoCopyWithImpl<$Res, _$PokemonBasicInfoImpl>
    implements _$$PokemonBasicInfoImplCopyWith<$Res> {
  __$$PokemonBasicInfoImplCopyWithImpl(_$PokemonBasicInfoImpl _value,
      $Res Function(_$PokemonBasicInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? genus = null,
    Object? types = null,
  }) {
    return _then(_$PokemonBasicInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      genus: null == genus
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonBasicInfoImpl implements _PokemonBasicInfo {
  _$PokemonBasicInfoImpl(
      {required this.id,
      required this.name,
      required this.genus,
      required final List<String> types})
      : _types = types;

  factory _$PokemonBasicInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonBasicInfoImplFromJson(json);

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

  @override
  String toString() {
    return 'PokemonBasicInfo(id: $id, name: $name, genus: $genus, types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonBasicInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.genus, genus) || other.genus == genus) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, genus,
      const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonBasicInfoImplCopyWith<_$PokemonBasicInfoImpl> get copyWith =>
      __$$PokemonBasicInfoImplCopyWithImpl<_$PokemonBasicInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonBasicInfoImplToJson(
      this,
    );
  }
}

abstract class _PokemonBasicInfo implements PokemonBasicInfo {
  factory _PokemonBasicInfo(
      {required final int id,
      required final String name,
      required final String genus,
      required final List<String> types}) = _$PokemonBasicInfoImpl;

  factory _PokemonBasicInfo.fromJson(Map<String, dynamic> json) =
      _$PokemonBasicInfoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get genus;
  @override
  List<String> get types;
  @override
  @JsonKey(ignore: true)
  _$$PokemonBasicInfoImplCopyWith<_$PokemonBasicInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
