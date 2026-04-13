import 'package:flutterdex/data/models/pokemon_move_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_move.freezed.dart';

@freezed
abstract class PokemonMove with _$PokemonMove {
  const factory PokemonMove({
    required String name,
    required String type,
    required int? level,
    required int? power,
    required int pp,
    required int? accuracy,
    required String description,
  }) = _PokemonMove;

  factory PokemonMove.fromModel(PokemonMoveModel model) {
    return PokemonMove(
      name: model.moveName,
      type: model.type,
      level: model.level,
      power: model.power,
      pp: model.pp,
      accuracy: model.accuracy,
      description: model.description,
    );
  }
}
