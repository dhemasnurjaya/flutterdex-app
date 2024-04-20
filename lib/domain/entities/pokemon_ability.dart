import 'package:flutterdex/domain/entities/pokemon_generation.dart';

class PokemonAbility {
  final int id;
  final String name;
  final String description;
  final PokemonGeneration generation;

  const PokemonAbility({
    required this.id,
    required this.name,
    required this.description,
    required this.generation,
  });
}
