import 'package:flutterdex/domain/entities/pokemon_type.dart';

class Pokemon {
  final int id;
  final String name;
  final List<PokemonType> types;

  const Pokemon({
    required this.id,
    required this.name,
    required this.types,
  });
}
