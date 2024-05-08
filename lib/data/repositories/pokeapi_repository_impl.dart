import 'package:flutterdex/core/error/failure.dart';
import 'package:flutterdex/core/error/unknown_failure.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_local_source.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi_vanilla/pokeapi_local_source.dart';
import 'package:flutterdex/domain/entities/pokemon_detail.dart';
import 'package:flutterdex/domain/entities/vanilla/pokemon_basic_info.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';
import 'package:fpdart/fpdart.dart';

class PokeapiRepositoryImpl implements PokeapiRepository {
  final PokeApiLocalSource localSource;
  final PokeapiLocalSource localSourceVanilla;

  PokeapiRepositoryImpl({
    required this.localSource,
    required this.localSourceVanilla,
  });

  @override
  Future<Either<Failure, List<PokemonBasicInfo>>> getPokemonList({
    int limit = 20,
    int offset = 0,
  }) async {
    try {
      final result = await localSourceVanilla.getPokemonList(
        limit: limit,
        offset: offset,
      );
      final mergedEntities = <int, PokemonBasicInfo>{};

      // map pokemon model to entity
      for (final e in result) {
        // add type to existing pokemon entity
        if (mergedEntities.containsKey(e.id)) {
          mergedEntities[e.id]!.types.add(e.type);
          continue;
        }

        // create new pokemon entity
        mergedEntities[e.id] = PokemonBasicInfo(
          id: e.id,
          name: e.name,
          genus: '',
          types: [e.type],
        );
      }

      return right(mergedEntities.values.toList());
    } on Exception catch (e) {
      return left(UnknownFailure(message: e.toString(), cause: e));
    }
  }

  @override
  Future<Either<Failure, PokemonDetail>> getPokemonDetail(
      {required int id}) async {
    throw UnimplementedError();
  }
}
