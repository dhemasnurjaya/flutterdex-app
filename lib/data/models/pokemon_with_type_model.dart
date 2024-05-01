import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_database.dart';

class PokemonSpeciesWithTypeModel {
  final PokemonSpeciesModel pokemonSpecies;
  final PokemonSpeciesNameModel pokemonSpeciesName;
  final TypeModel type;

  PokemonSpeciesWithTypeModel({
    required this.pokemonSpecies,
    required this.pokemonSpeciesName,
    required this.type,
  });
}
