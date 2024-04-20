import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_database.dart';

class PokemonWithSpeciesModel {
  final PokemonModel pokemon;
  final PokemonSpeciesModel species;
  final PokemonSpeciesFlavorTextModel flavorText;

  PokemonWithSpeciesModel({
    required this.pokemon,
    required this.species,
    required this.flavorText,
  });
}
