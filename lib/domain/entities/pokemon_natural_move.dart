import 'package:collection/collection.dart' show groupBy;
import 'package:flutterdex/data/models/pokemon_natural_move_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_natural_move.freezed.dart';

@freezed
class PokemonNaturalMoves with _$PokemonNaturalMoves {
  const factory PokemonNaturalMoves({
    required Map<String, List<PokemonNaturalMove>> moves,
  }) = _PokemonNaturalMoves;

  factory PokemonNaturalMoves.fromModels(List<PokemonNaturalMoveModel> models) {
    final naturalMoves = models.map(PokemonNaturalMove.fromModel);
    return PokemonNaturalMoves(
      moves: groupBy(naturalMoves, (e) => e.generation),
    );
  }
}

@freezed
class PokemonNaturalMove with _$PokemonNaturalMove {
  const factory PokemonNaturalMove({
    required String name,
    required String type,
    required int? power,
    required int pp,
    required int? accuracy,
    required String description,
    required String generation,
  }) = _PokemonNaturalMove;

  factory PokemonNaturalMove.fromModel(PokemonNaturalMoveModel model) {
    return PokemonNaturalMove(
      name: model.moveName,
      type: model.type,
      power: model.power,
      pp: model.pp,
      accuracy: model.accuracy,
      description: model.description,
      generation: model.generation,
    );
  }
}
