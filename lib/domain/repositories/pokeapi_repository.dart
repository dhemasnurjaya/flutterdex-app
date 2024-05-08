import 'package:flutterdex/core/error/failure.dart';
import 'package:flutterdex/domain/entities/pokemon_detail.dart';
import 'package:flutterdex/domain/entities/vanilla/pokemon_basic_info.dart';
import 'package:fpdart/fpdart.dart';

abstract class PokeapiRepository {
  Future<Either<Failure, List<PokemonBasicInfo>>> getPokemonList({
    int limit = 20,
    int offset = 0,
  });

  Future<Either<Failure, PokemonDetail>> getPokemonDetail({required int id});
}
