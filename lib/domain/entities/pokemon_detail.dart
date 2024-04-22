import 'package:flutterdex/domain/entities/pokemon_ability.dart';
import 'package:flutterdex/domain/entities/pokemon_species.dart';
import 'package:flutterdex/domain/entities/pokemon_stat.dart';

class PokemonDetail {
  final int id;
  final PokemonSpecies species;
  final List<PokemonAbility> abilities;
  final List<PokemonStat> stats;

  const PokemonDetail({
    required this.id,
    required this.species,
    required this.abilities,
    required this.stats,
  });
}
