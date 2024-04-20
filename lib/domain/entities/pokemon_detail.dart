import 'package:flutterdex/domain/entities/pokemon_ability.dart';
import 'package:flutterdex/domain/entities/pokemon_stat.dart';

class PokemonDetail {
  final int id;
  final List<PokemonAbility> abilities;
  final List<PokemonStat> stats;

  const PokemonDetail({
    required this.id,
    required this.abilities,
    required this.stats,
  });
}
