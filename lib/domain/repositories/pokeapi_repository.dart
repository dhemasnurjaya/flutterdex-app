import 'package:flutterdex/core/error/failure.dart';
import 'package:flutterdex/domain/entities/pokemon_abilities.dart';
import 'package:flutterdex/domain/entities/pokemon_basic_info.dart';
import 'package:flutterdex/domain/entities/pokemon_detail_info.dart';
import 'package:flutterdex/domain/entities/pokemon_stat.dart';
import 'package:fpdart/fpdart.dart';

abstract class PokeapiRepository {
  Future<Either<Failure, List<PokemonBasicInfo>>> getPokemonList({
    required String searchQuery,
    int limit = 20,
    int offset = 0,
  });

  Future<Either<Failure, PokemonDetailInfo>> getPokemon({required int id});

  Future<Either<Failure, List<PokemonStat>>> getPokemonStats({
    required int id,
  });

  Future<Either<Failure, List<PokemonAbility>>> getPokemonAbilities({
    required int id,
  });
}
