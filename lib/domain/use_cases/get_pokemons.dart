import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutterdex/domain/entities/pokemon_basic_info.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';

class GetPokemons extends UseCase<List<PokemonBasicInfo>, GetPokemonsParams> {
  GetPokemons({required this.repository});
  final PokeapiRepository repository;

  @override
  Future<Either<Failure, List<PokemonBasicInfo>>> call(
    GetPokemonsParams params,
  ) async {
    return repository.getPokemons(
      limit: params.limit,
      offset: params.offset,
      searchQuery: params.searchQuery,
    );
  }
}

class GetPokemonsParams extends Equatable {
  const GetPokemonsParams({
    required this.limit,
    required this.offset,
    required this.searchQuery,
  });

  final String searchQuery;
  final int limit;
  final int offset;

  @override
  List<Object> get props => [searchQuery, limit, offset];
}
