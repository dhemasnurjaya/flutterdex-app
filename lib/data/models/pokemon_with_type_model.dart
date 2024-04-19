import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_database.dart';

class PokemonWithTypeModel {
  final PokemonModel pokemon;
  final TypeModel type;

  PokemonWithTypeModel({
    required this.pokemon,
    required this.type,
  });
}
