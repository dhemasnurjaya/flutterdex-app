import 'package:flutterdex/core/error/failure.dart';
import 'package:flutterdex/domain/entities/pokemon.dart';
import 'package:fpdart/fpdart.dart';

abstract class PokeApiRepository {
  Future<Either<Failure, List<Pokemon>>> getPokemonsWithType({
    int limit = 20,
    int offset = 0,
  });
}
