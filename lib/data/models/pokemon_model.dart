/// Contains basic data about a Pokemon, used for Pokemon list
class PokemonModel {
  PokemonModel({
    required this.id,
    required this.name,
    required this.type,
    required this.genus,
  });
  final int id;
  final String name;
  final String type;
  final String genus;
}
