import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_database.dart';

class PokemonWithStatModel {
  final PokemonModel pokemon;
  final StatModel stat;
  final PokemonStatModel pokemonStat;

  PokemonWithStatModel({
    required this.pokemon,
    required this.stat,
    required this.pokemonStat,
  });
}
