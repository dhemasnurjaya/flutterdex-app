import 'package:flutterdex/data/models/pokemon_ability_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_ability.freezed.dart';

@freezed
class PokemonAbility with _$PokemonAbility {
  const factory PokemonAbility({
    required bool isHidden,
    required String name,
    required String description,
    required String generation,
  }) = _PokemonAbility;

  factory PokemonAbility.fromModel(PokemonAbilityModel model) {
    return PokemonAbility(
      isHidden: model.isHidden,
      name: model.name,
      description: model.description,
      generation: model.generation,
    );
  }
}
