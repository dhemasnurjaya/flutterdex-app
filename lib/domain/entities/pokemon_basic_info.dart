import 'package:flutterdex/domain/entities/pokemon_type.dart';

class PokemonBasicInfo {
  final int id;
  final String name;
  final String genus;
  final List<PokemonType> types;

  const PokemonBasicInfo({
    required this.id,
    required this.name,
    required this.genus,
    required this.types,
  });
}
