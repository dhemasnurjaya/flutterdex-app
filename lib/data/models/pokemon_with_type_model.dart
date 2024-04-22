import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_database.dart';

class PokemonSpeciesWithTypeModel {
  final PokemonSpeciesModel pokemonSpecies;
  final TypeModel type;

  PokemonSpeciesWithTypeModel({
    required this.pokemonSpecies,
    required this.type,
  });
}
