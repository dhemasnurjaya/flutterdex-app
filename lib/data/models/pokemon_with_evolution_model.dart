import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_database.dart';

class PokemonWithEvolutionModel {
  final PokemonSpeciesModel species;
  final PokemonEvolutionModel? evolution;
  final EvolutionTriggerModel? evolutionTrigger;

  PokemonWithEvolutionModel({
    required this.species,
    required this.evolution,
    required this.evolutionTrigger,
  });
}
