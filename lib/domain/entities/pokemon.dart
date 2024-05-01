import 'package:flutterdex/domain/entities/pokemon_type.dart';

class Pokemon {
  final int id;
  final String name;
  final String genus;
  final List<PokemonType> types;

  const Pokemon({
    required this.id,
    required this.name,
    required this.genus,
    required this.types,
  });
}
