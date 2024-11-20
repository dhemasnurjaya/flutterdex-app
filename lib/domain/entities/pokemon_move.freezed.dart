// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_move.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonMove {
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int? get level => throw _privateConstructorUsedError;
  int? get power => throw _privateConstructorUsedError;
  int get pp => throw _privateConstructorUsedError;
  int? get accuracy => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Create a copy of PokemonMove
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonMoveCopyWith<PokemonMove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonMoveCopyWith<$Res> {
  factory $PokemonMoveCopyWith(
          PokemonMove value, $Res Function(PokemonMove) then) =
      _$PokemonMoveCopyWithImpl<$Res, PokemonMove>;
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
class _$PokemonMoveCopyWithImpl<$Res, $Val extends PokemonMove>
    implements $PokemonMoveCopyWith<$Res> {
  _$PokemonMoveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      power: freezed == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as int?,
      pp: null == pp
          ? _value.pp
          : pp // ignore: cast_nullable_to_non_nullable
              as int,
      accuracy: freezed == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as int?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonMoveImplCopyWith<$Res>
    implements $PokemonMoveCopyWith<$Res> {
  factory _$$PokemonMoveImplCopyWith(
          _$PokemonMoveImpl value, $Res Function(_$PokemonMoveImpl) then) =
      __$$PokemonMoveImplCopyWithImpl<$Res>;
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
class __$$PokemonMoveImplCopyWithImpl<$Res>
    extends _$PokemonMoveCopyWithImpl<$Res, _$PokemonMoveImpl>
    implements _$$PokemonMoveImplCopyWith<$Res> {
  __$$PokemonMoveImplCopyWithImpl(
      _$PokemonMoveImpl _value, $Res Function(_$PokemonMoveImpl) _then)
      : super(_value, _then);

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
    return _then(_$PokemonMoveImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      power: freezed == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as int?,
      pp: null == pp
          ? _value.pp
          : pp // ignore: cast_nullable_to_non_nullable
              as int,
      accuracy: freezed == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as int?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PokemonMoveImpl implements _PokemonMove {
  const _$PokemonMoveImpl(
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

  @override
  String toString() {
    return 'PokemonMove(name: $name, type: $type, level: $level, power: $power, pp: $pp, accuracy: $accuracy, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonMoveImpl &&
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

  /// Create a copy of PokemonMove
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonMoveImplCopyWith<_$PokemonMoveImpl> get copyWith =>
      __$$PokemonMoveImplCopyWithImpl<_$PokemonMoveImpl>(this, _$identity);
}

abstract class _PokemonMove implements PokemonMove {
  const factory _PokemonMove(
      {required final String name,
      required final String type,
      required final int? level,
      required final int? power,
      required final int pp,
      required final int? accuracy,
      required final String description}) = _$PokemonMoveImpl;

  @override
  String get name;
  @override
  String get type;
  @override
  int? get level;
  @override
  int? get power;
  @override
  int get pp;
  @override
  int? get accuracy;
  @override
  String get description;

  /// Create a copy of PokemonMove
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonMoveImplCopyWith<_$PokemonMoveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
