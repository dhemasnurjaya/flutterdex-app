import 'package:flutterdex/domain/entities/pokemon_type.dart';

class Pokemon {
  final int id;
  final String name;
  final int? order;
  final int? weight;
  final int? height;
  final bool isDefault;
  final int? pokemonSpeciesId;
  final int? baseExperience;
  final List<PokemonType> types;

  const Pokemon({
    required this.id,
    required this.name,
    required this.order,
    required this.weight,
    required this.height,
    required this.isDefault,
    required this.pokemonSpeciesId,
    required this.baseExperience,
    required this.types,
  });
}
