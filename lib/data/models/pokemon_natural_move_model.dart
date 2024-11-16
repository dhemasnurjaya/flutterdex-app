import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_natural_move_model.freezed.dart';

@freezed
class PokemonNaturalMoveModel with _$PokemonNaturalMoveModel {
  const factory PokemonNaturalMoveModel({
    required int level,
    required String moveName,
    required int? power,
    required int pp,
    required int? accuracy,
    required String type,
    required String description,
    required String generation,
    required String learnMethod,
  }) = _PokemonNaturalMoveModel;
}
