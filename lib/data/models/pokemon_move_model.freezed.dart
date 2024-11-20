// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_move_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonMoveModel {
  int? get level => throw _privateConstructorUsedError;
  String get moveName => throw _privateConstructorUsedError;
  int? get power => throw _privateConstructorUsedError;
  int get pp => throw _privateConstructorUsedError;
  int? get accuracy => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Create a copy of PokemonMoveModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonMoveModelCopyWith<PokemonMoveModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonMoveModelCopyWith<$Res> {
  factory $PokemonMoveModelCopyWith(
          PokemonMoveModel value, $Res Function(PokemonMoveModel) then) =
      _$PokemonMoveModelCopyWithImpl<$Res, PokemonMoveModel>;
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
class _$PokemonMoveModelCopyWithImpl<$Res, $Val extends PokemonMoveModel>
    implements $PokemonMoveModelCopyWith<$Res> {
  _$PokemonMoveModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      moveName: null == moveName
          ? _value.moveName
          : moveName // ignore: cast_nullable_to_non_nullable
              as String,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonMoveModelImplCopyWith<$Res>
    implements $PokemonMoveModelCopyWith<$Res> {
  factory _$$PokemonMoveModelImplCopyWith(_$PokemonMoveModelImpl value,
          $Res Function(_$PokemonMoveModelImpl) then) =
      __$$PokemonMoveModelImplCopyWithImpl<$Res>;
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
class __$$PokemonMoveModelImplCopyWithImpl<$Res>
    extends _$PokemonMoveModelCopyWithImpl<$Res, _$PokemonMoveModelImpl>
    implements _$$PokemonMoveModelImplCopyWith<$Res> {
  __$$PokemonMoveModelImplCopyWithImpl(_$PokemonMoveModelImpl _value,
      $Res Function(_$PokemonMoveModelImpl) _then)
      : super(_value, _then);

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
    return _then(_$PokemonMoveModelImpl(
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      moveName: null == moveName
          ? _value.moveName
          : moveName // ignore: cast_nullable_to_non_nullable
              as String,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PokemonMoveModelImpl implements _PokemonMoveModel {
  const _$PokemonMoveModelImpl(
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

  @override
  String toString() {
    return 'PokemonMoveModel(level: $level, moveName: $moveName, power: $power, pp: $pp, accuracy: $accuracy, type: $type, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonMoveModelImpl &&
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

  /// Create a copy of PokemonMoveModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonMoveModelImplCopyWith<_$PokemonMoveModelImpl> get copyWith =>
      __$$PokemonMoveModelImplCopyWithImpl<_$PokemonMoveModelImpl>(
          this, _$identity);
}

abstract class _PokemonMoveModel implements PokemonMoveModel {
  const factory _PokemonMoveModel(
      {required final int? level,
      required final String moveName,
      required final int? power,
      required final int pp,
      required final int? accuracy,
      required final String type,
      required final String description}) = _$PokemonMoveModelImpl;

  @override
  int? get level;
  @override
  String get moveName;
  @override
  int? get power;
  @override
  int get pp;
  @override
  int? get accuracy;
  @override
  String get type;
  @override
  String get description;

  /// Create a copy of PokemonMoveModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonMoveModelImplCopyWith<_$PokemonMoveModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
