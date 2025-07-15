// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_detail_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonDetailInfo {
  int get id;
  String get name;
  double get heightInMeter;
  double get weightInKg;
  double? get malePercentage;
  double? get femalePercentage;
  double get capturePercentage;
  int? get baseFriendship;
  bool get isBaby;
  int? get hatchCounter;
  String get description;
  String get growthRate;
  List<String> get eggGroups;

  /// Create a copy of PokemonDetailInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PokemonDetailInfoCopyWith<PokemonDetailInfo> get copyWith =>
      _$PokemonDetailInfoCopyWithImpl<PokemonDetailInfo>(
          this as PokemonDetailInfo, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PokemonDetailInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.heightInMeter, heightInMeter) ||
                other.heightInMeter == heightInMeter) &&
            (identical(other.weightInKg, weightInKg) ||
                other.weightInKg == weightInKg) &&
            (identical(other.malePercentage, malePercentage) ||
                other.malePercentage == malePercentage) &&
            (identical(other.femalePercentage, femalePercentage) ||
                other.femalePercentage == femalePercentage) &&
            (identical(other.capturePercentage, capturePercentage) ||
                other.capturePercentage == capturePercentage) &&
            (identical(other.baseFriendship, baseFriendship) ||
                other.baseFriendship == baseFriendship) &&
            (identical(other.isBaby, isBaby) || other.isBaby == isBaby) &&
            (identical(other.hatchCounter, hatchCounter) ||
                other.hatchCounter == hatchCounter) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.growthRate, growthRate) ||
                other.growthRate == growthRate) &&
            const DeepCollectionEquality().equals(other.eggGroups, eggGroups));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      heightInMeter,
      weightInKg,
      malePercentage,
      femalePercentage,
      capturePercentage,
      baseFriendship,
      isBaby,
      hatchCounter,
      description,
      growthRate,
      const DeepCollectionEquality().hash(eggGroups));

  @override
  String toString() {
    return 'PokemonDetailInfo(id: $id, name: $name, heightInMeter: $heightInMeter, weightInKg: $weightInKg, malePercentage: $malePercentage, femalePercentage: $femalePercentage, capturePercentage: $capturePercentage, baseFriendship: $baseFriendship, isBaby: $isBaby, hatchCounter: $hatchCounter, description: $description, growthRate: $growthRate, eggGroups: $eggGroups)';
  }
}

/// @nodoc
abstract mixin class $PokemonDetailInfoCopyWith<$Res> {
  factory $PokemonDetailInfoCopyWith(
          PokemonDetailInfo value, $Res Function(PokemonDetailInfo) _then) =
      _$PokemonDetailInfoCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      double heightInMeter,
      double weightInKg,
      double? malePercentage,
      double? femalePercentage,
      double capturePercentage,
      int? baseFriendship,
      bool isBaby,
      int? hatchCounter,
      String description,
      String growthRate,
      List<String> eggGroups});
}

/// @nodoc
class _$PokemonDetailInfoCopyWithImpl<$Res>
    implements $PokemonDetailInfoCopyWith<$Res> {
  _$PokemonDetailInfoCopyWithImpl(this._self, this._then);

  final PokemonDetailInfo _self;
  final $Res Function(PokemonDetailInfo) _then;

  /// Create a copy of PokemonDetailInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? heightInMeter = null,
    Object? weightInKg = null,
    Object? malePercentage = freezed,
    Object? femalePercentage = freezed,
    Object? capturePercentage = null,
    Object? baseFriendship = freezed,
    Object? isBaby = null,
    Object? hatchCounter = freezed,
    Object? description = null,
    Object? growthRate = null,
    Object? eggGroups = null,
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
      heightInMeter: null == heightInMeter
          ? _self.heightInMeter
          : heightInMeter // ignore: cast_nullable_to_non_nullable
              as double,
      weightInKg: null == weightInKg
          ? _self.weightInKg
          : weightInKg // ignore: cast_nullable_to_non_nullable
              as double,
      malePercentage: freezed == malePercentage
          ? _self.malePercentage
          : malePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      femalePercentage: freezed == femalePercentage
          ? _self.femalePercentage
          : femalePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      capturePercentage: null == capturePercentage
          ? _self.capturePercentage
          : capturePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      baseFriendship: freezed == baseFriendship
          ? _self.baseFriendship
          : baseFriendship // ignore: cast_nullable_to_non_nullable
              as int?,
      isBaby: null == isBaby
          ? _self.isBaby
          : isBaby // ignore: cast_nullable_to_non_nullable
              as bool,
      hatchCounter: freezed == hatchCounter
          ? _self.hatchCounter
          : hatchCounter // ignore: cast_nullable_to_non_nullable
              as int?,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      growthRate: null == growthRate
          ? _self.growthRate
          : growthRate // ignore: cast_nullable_to_non_nullable
              as String,
      eggGroups: null == eggGroups
          ? _self.eggGroups
          : eggGroups // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [PokemonDetailInfo].
extension PokemonDetailInfoPatterns on PokemonDetailInfo {
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
    TResult Function(_PokemonDetailInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonDetailInfo() when $default != null:
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
    TResult Function(_PokemonDetailInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonDetailInfo():
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
    TResult? Function(_PokemonDetailInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonDetailInfo() when $default != null:
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
    TResult Function(
            int id,
            String name,
            double heightInMeter,
            double weightInKg,
            double? malePercentage,
            double? femalePercentage,
            double capturePercentage,
            int? baseFriendship,
            bool isBaby,
            int? hatchCounter,
            String description,
            String growthRate,
            List<String> eggGroups)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PokemonDetailInfo() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.heightInMeter,
            _that.weightInKg,
            _that.malePercentage,
            _that.femalePercentage,
            _that.capturePercentage,
            _that.baseFriendship,
            _that.isBaby,
            _that.hatchCounter,
            _that.description,
            _that.growthRate,
            _that.eggGroups);
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
    TResult Function(
            int id,
            String name,
            double heightInMeter,
            double weightInKg,
            double? malePercentage,
            double? femalePercentage,
            double capturePercentage,
            int? baseFriendship,
            bool isBaby,
            int? hatchCounter,
            String description,
            String growthRate,
            List<String> eggGroups)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonDetailInfo():
        return $default(
            _that.id,
            _that.name,
            _that.heightInMeter,
            _that.weightInKg,
            _that.malePercentage,
            _that.femalePercentage,
            _that.capturePercentage,
            _that.baseFriendship,
            _that.isBaby,
            _that.hatchCounter,
            _that.description,
            _that.growthRate,
            _that.eggGroups);
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
    TResult? Function(
            int id,
            String name,
            double heightInMeter,
            double weightInKg,
            double? malePercentage,
            double? femalePercentage,
            double capturePercentage,
            int? baseFriendship,
            bool isBaby,
            int? hatchCounter,
            String description,
            String growthRate,
            List<String> eggGroups)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PokemonDetailInfo() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.heightInMeter,
            _that.weightInKg,
            _that.malePercentage,
            _that.femalePercentage,
            _that.capturePercentage,
            _that.baseFriendship,
            _that.isBaby,
            _that.hatchCounter,
            _that.description,
            _that.growthRate,
            _that.eggGroups);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PokemonDetailInfo implements PokemonDetailInfo {
  _PokemonDetailInfo(
      {required this.id,
      required this.name,
      required this.heightInMeter,
      required this.weightInKg,
      required this.malePercentage,
      required this.femalePercentage,
      required this.capturePercentage,
      required this.baseFriendship,
      required this.isBaby,
      required this.hatchCounter,
      required this.description,
      required this.growthRate,
      required final List<String> eggGroups})
      : _eggGroups = eggGroups;

  @override
  final int id;
  @override
  final String name;
  @override
  final double heightInMeter;
  @override
  final double weightInKg;
  @override
  final double? malePercentage;
  @override
  final double? femalePercentage;
  @override
  final double capturePercentage;
  @override
  final int? baseFriendship;
  @override
  final bool isBaby;
  @override
  final int? hatchCounter;
  @override
  final String description;
  @override
  final String growthRate;
  final List<String> _eggGroups;
  @override
  List<String> get eggGroups {
    if (_eggGroups is EqualUnmodifiableListView) return _eggGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eggGroups);
  }

  /// Create a copy of PokemonDetailInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PokemonDetailInfoCopyWith<_PokemonDetailInfo> get copyWith =>
      __$PokemonDetailInfoCopyWithImpl<_PokemonDetailInfo>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonDetailInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.heightInMeter, heightInMeter) ||
                other.heightInMeter == heightInMeter) &&
            (identical(other.weightInKg, weightInKg) ||
                other.weightInKg == weightInKg) &&
            (identical(other.malePercentage, malePercentage) ||
                other.malePercentage == malePercentage) &&
            (identical(other.femalePercentage, femalePercentage) ||
                other.femalePercentage == femalePercentage) &&
            (identical(other.capturePercentage, capturePercentage) ||
                other.capturePercentage == capturePercentage) &&
            (identical(other.baseFriendship, baseFriendship) ||
                other.baseFriendship == baseFriendship) &&
            (identical(other.isBaby, isBaby) || other.isBaby == isBaby) &&
            (identical(other.hatchCounter, hatchCounter) ||
                other.hatchCounter == hatchCounter) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.growthRate, growthRate) ||
                other.growthRate == growthRate) &&
            const DeepCollectionEquality()
                .equals(other._eggGroups, _eggGroups));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      heightInMeter,
      weightInKg,
      malePercentage,
      femalePercentage,
      capturePercentage,
      baseFriendship,
      isBaby,
      hatchCounter,
      description,
      growthRate,
      const DeepCollectionEquality().hash(_eggGroups));

  @override
  String toString() {
    return 'PokemonDetailInfo(id: $id, name: $name, heightInMeter: $heightInMeter, weightInKg: $weightInKg, malePercentage: $malePercentage, femalePercentage: $femalePercentage, capturePercentage: $capturePercentage, baseFriendship: $baseFriendship, isBaby: $isBaby, hatchCounter: $hatchCounter, description: $description, growthRate: $growthRate, eggGroups: $eggGroups)';
  }
}

/// @nodoc
abstract mixin class _$PokemonDetailInfoCopyWith<$Res>
    implements $PokemonDetailInfoCopyWith<$Res> {
  factory _$PokemonDetailInfoCopyWith(
          _PokemonDetailInfo value, $Res Function(_PokemonDetailInfo) _then) =
      __$PokemonDetailInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      double heightInMeter,
      double weightInKg,
      double? malePercentage,
      double? femalePercentage,
      double capturePercentage,
      int? baseFriendship,
      bool isBaby,
      int? hatchCounter,
      String description,
      String growthRate,
      List<String> eggGroups});
}

/// @nodoc
class __$PokemonDetailInfoCopyWithImpl<$Res>
    implements _$PokemonDetailInfoCopyWith<$Res> {
  __$PokemonDetailInfoCopyWithImpl(this._self, this._then);

  final _PokemonDetailInfo _self;
  final $Res Function(_PokemonDetailInfo) _then;

  /// Create a copy of PokemonDetailInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? heightInMeter = null,
    Object? weightInKg = null,
    Object? malePercentage = freezed,
    Object? femalePercentage = freezed,
    Object? capturePercentage = null,
    Object? baseFriendship = freezed,
    Object? isBaby = null,
    Object? hatchCounter = freezed,
    Object? description = null,
    Object? growthRate = null,
    Object? eggGroups = null,
  }) {
    return _then(_PokemonDetailInfo(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      heightInMeter: null == heightInMeter
          ? _self.heightInMeter
          : heightInMeter // ignore: cast_nullable_to_non_nullable
              as double,
      weightInKg: null == weightInKg
          ? _self.weightInKg
          : weightInKg // ignore: cast_nullable_to_non_nullable
              as double,
      malePercentage: freezed == malePercentage
          ? _self.malePercentage
          : malePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      femalePercentage: freezed == femalePercentage
          ? _self.femalePercentage
          : femalePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      capturePercentage: null == capturePercentage
          ? _self.capturePercentage
          : capturePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      baseFriendship: freezed == baseFriendship
          ? _self.baseFriendship
          : baseFriendship // ignore: cast_nullable_to_non_nullable
              as int?,
      isBaby: null == isBaby
          ? _self.isBaby
          : isBaby // ignore: cast_nullable_to_non_nullable
              as bool,
      hatchCounter: freezed == hatchCounter
          ? _self.hatchCounter
          : hatchCounter // ignore: cast_nullable_to_non_nullable
              as int?,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      growthRate: null == growthRate
          ? _self.growthRate
          : growthRate // ignore: cast_nullable_to_non_nullable
              as String,
      eggGroups: null == eggGroups
          ? _self._eggGroups
          : eggGroups // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
