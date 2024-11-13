import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutterdex/domain/entities/pokemon_ability.dart';
import 'package:flutterdex/domain/entities/pokemon_basic_info.dart';
import 'package:flutterdex/domain/entities/pokemon_detail_info.dart';
import 'package:flutterdex/domain/entities/pokemon_evolutions.dart';
import 'package:flutterdex/domain/entities/pokemon_stat.dart';

abstract class PokeapiRepository {
  Future<Either<Failure, List<PokemonBasicInfo>>> getPokemons({
    required String searchQuery,
    int limit = 20,
    int offset = 0,
  });

  Future<Either<Failure, PokemonDetailInfo>> getPokemonDetails({
    required int pokemonId,
  });

  Future<Either<Failure, List<PokemonStat>>> getPokemonStats({
    required int pokemonId,
  });

  Future<Either<Failure, List<PokemonAbility>>> getPokemonAbilities({
    required int pokemonId,
  });

  Future<Either<Failure, List<PokemonEvolutions>>> getPokemonEvolutions({
    required int id,
  });
}
