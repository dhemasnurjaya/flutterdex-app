// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_natural_move.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonNaturalMoves {
  Map<String, List<PokemonNaturalMove>> get moves =>
      throw _privateConstructorUsedError;

  /// Create a copy of PokemonNaturalMoves
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonNaturalMovesCopyWith<PokemonNaturalMoves> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonNaturalMovesCopyWith<$Res> {
  factory $PokemonNaturalMovesCopyWith(
          PokemonNaturalMoves value, $Res Function(PokemonNaturalMoves) then) =
      _$PokemonNaturalMovesCopyWithImpl<$Res, PokemonNaturalMoves>;
  @useResult
  $Res call({Map<String, List<PokemonNaturalMove>> moves});
}

/// @nodoc
class _$PokemonNaturalMovesCopyWithImpl<$Res, $Val extends PokemonNaturalMoves>
    implements $PokemonNaturalMovesCopyWith<$Res> {
  _$PokemonNaturalMovesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonNaturalMoves
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moves = null,
  }) {
    return _then(_value.copyWith(
      moves: null == moves
          ? _value.moves
          : moves // ignore: cast_nullable_to_non_nullable
              as Map<String, List<PokemonNaturalMove>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonNaturalMovesImplCopyWith<$Res>
    implements $PokemonNaturalMovesCopyWith<$Res> {
  factory _$$PokemonNaturalMovesImplCopyWith(_$PokemonNaturalMovesImpl value,
          $Res Function(_$PokemonNaturalMovesImpl) then) =
      __$$PokemonNaturalMovesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, List<PokemonNaturalMove>> moves});
}

/// @nodoc
class __$$PokemonNaturalMovesImplCopyWithImpl<$Res>
    extends _$PokemonNaturalMovesCopyWithImpl<$Res, _$PokemonNaturalMovesImpl>
    implements _$$PokemonNaturalMovesImplCopyWith<$Res> {
  __$$PokemonNaturalMovesImplCopyWithImpl(_$PokemonNaturalMovesImpl _value,
      $Res Function(_$PokemonNaturalMovesImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonNaturalMoves
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moves = null,
  }) {
    return _then(_$PokemonNaturalMovesImpl(
      moves: null == moves
          ? _value._moves
          : moves // ignore: cast_nullable_to_non_nullable
              as Map<String, List<PokemonNaturalMove>>,
    ));
  }
}

/// @nodoc

class _$PokemonNaturalMovesImpl implements _PokemonNaturalMoves {
  const _$PokemonNaturalMovesImpl(
      {required final Map<String, List<PokemonNaturalMove>> moves})
      : _moves = moves;

  final Map<String, List<PokemonNaturalMove>> _moves;
  @override
  Map<String, List<PokemonNaturalMove>> get moves {
    if (_moves is EqualUnmodifiableMapView) return _moves;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_moves);
  }

  @override
  String toString() {
    return 'PokemonNaturalMoves(moves: $moves)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonNaturalMovesImpl &&
            const DeepCollectionEquality().equals(other._moves, _moves));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_moves));

  /// Create a copy of PokemonNaturalMoves
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonNaturalMovesImplCopyWith<_$PokemonNaturalMovesImpl> get copyWith =>
      __$$PokemonNaturalMovesImplCopyWithImpl<_$PokemonNaturalMovesImpl>(
          this, _$identity);
}

abstract class _PokemonNaturalMoves implements PokemonNaturalMoves {
  const factory _PokemonNaturalMoves(
          {required final Map<String, List<PokemonNaturalMove>> moves}) =
      _$PokemonNaturalMovesImpl;

  @override
  Map<String, List<PokemonNaturalMove>> get moves;

  /// Create a copy of PokemonNaturalMoves
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonNaturalMovesImplCopyWith<_$PokemonNaturalMovesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PokemonNaturalMove {
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int? get power => throw _privateConstructorUsedError;
  int get pp => throw _privateConstructorUsedError;
  int? get accuracy => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get generation => throw _privateConstructorUsedError;

  /// Create a copy of PokemonNaturalMove
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonNaturalMoveCopyWith<PokemonNaturalMove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonNaturalMoveCopyWith<$Res> {
  factory $PokemonNaturalMoveCopyWith(
          PokemonNaturalMove value, $Res Function(PokemonNaturalMove) then) =
      _$PokemonNaturalMoveCopyWithImpl<$Res, PokemonNaturalMove>;
  @useResult
  $Res call(
      {String name,
      String type,
      int? power,
      int pp,
      int? accuracy,
      String description,
      String generation});
}

/// @nodoc
class _$PokemonNaturalMoveCopyWithImpl<$Res, $Val extends PokemonNaturalMove>
    implements $PokemonNaturalMoveCopyWith<$Res> {
  _$PokemonNaturalMoveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonNaturalMove
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? power = freezed,
    Object? pp = null,
    Object? accuracy = freezed,
    Object? description = null,
    Object? generation = null,
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
      generation: null == generation
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonNaturalMoveImplCopyWith<$Res>
    implements $PokemonNaturalMoveCopyWith<$Res> {
  factory _$$PokemonNaturalMoveImplCopyWith(_$PokemonNaturalMoveImpl value,
          $Res Function(_$PokemonNaturalMoveImpl) then) =
      __$$PokemonNaturalMoveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String type,
      int? power,
      int pp,
      int? accuracy,
      String description,
      String generation});
}

/// @nodoc
class __$$PokemonNaturalMoveImplCopyWithImpl<$Res>
    extends _$PokemonNaturalMoveCopyWithImpl<$Res, _$PokemonNaturalMoveImpl>
    implements _$$PokemonNaturalMoveImplCopyWith<$Res> {
  __$$PokemonNaturalMoveImplCopyWithImpl(_$PokemonNaturalMoveImpl _value,
      $Res Function(_$PokemonNaturalMoveImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonNaturalMove
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? power = freezed,
    Object? pp = null,
    Object? accuracy = freezed,
    Object? description = null,
    Object? generation = null,
  }) {
    return _then(_$PokemonNaturalMoveImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
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

class _$PokemonNaturalMoveImpl implements _PokemonNaturalMove {
  const _$PokemonNaturalMoveImpl(
      {required this.name,
      required this.type,
      required this.power,
      required this.pp,
      required this.accuracy,
      required this.description,
      required this.generation});

  @override
  final String name;
  @override
  final String type;
  @override
  final int? power;
  @override
  final int pp;
  @override
  final int? accuracy;
  @override
  final String description;
  @override
  final String generation;

  @override
  String toString() {
    return 'PokemonNaturalMove(name: $name, type: $type, power: $power, pp: $pp, accuracy: $accuracy, description: $description, generation: $generation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonNaturalMoveImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.power, power) || other.power == power) &&
            (identical(other.pp, pp) || other.pp == pp) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.generation, generation) ||
                other.generation == generation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, type, power, pp, accuracy, description, generation);

  /// Create a copy of PokemonNaturalMove
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonNaturalMoveImplCopyWith<_$PokemonNaturalMoveImpl> get copyWith =>
      __$$PokemonNaturalMoveImplCopyWithImpl<_$PokemonNaturalMoveImpl>(
          this, _$identity);
}

abstract class _PokemonNaturalMove implements PokemonNaturalMove {
  const factory _PokemonNaturalMove(
      {required final String name,
      required final String type,
      required final int? power,
      required final int pp,
      required final int? accuracy,
      required final String description,
      required final String generation}) = _$PokemonNaturalMoveImpl;

  @override
  String get name;
  @override
  String get type;
  @override
  int? get power;
  @override
  int get pp;
  @override
  int? get accuracy;
  @override
  String get description;
  @override
  String get generation;

  /// Create a copy of PokemonNaturalMove
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonNaturalMoveImplCopyWith<_$PokemonNaturalMoveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
