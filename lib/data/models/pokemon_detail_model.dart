import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_database.dart';

class PokemonDetailModel {
  final PokemonModel pokemon;
  final PokemonSpeciesModel species;
  final PokemonSpeciesFlavorTextModel flavorText;

  PokemonDetailModel({
    required this.pokemon,
    required this.species,
    required this.flavorText,
  });
}
