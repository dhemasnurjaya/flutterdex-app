import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_database.dart';

class PokemonWithAbilityModel {
  final PokemonModel pokemon;
  final AbilityModel ability;
  final AbilityFlavorTextModel abilityFlavorText;
  final GenerationModel generation;

  PokemonWithAbilityModel({
    required this.pokemon,
    required this.ability,
    required this.abilityFlavorText,
    required this.generation,
  });
}
