import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_move_model.freezed.dart';

@freezed
abstract class PokemonMoveModel with _$PokemonMoveModel {
  const factory PokemonMoveModel({
    required int? level,
    required String moveName,
    required int? power,
    required int pp,
    required int? accuracy,
    required String type,
    required String description,
  }) = _PokemonMoveModel;
}
