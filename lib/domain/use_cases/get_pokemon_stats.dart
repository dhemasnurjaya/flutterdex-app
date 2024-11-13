import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutterdex/domain/entities/pokemon_stat.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';

class GetPokemonStats
    extends UseCase<List<PokemonStat>, GetPokemonStatsParams> {
  GetPokemonStats({required this.repository});
  final PokeapiRepository repository;

  @override
  Future<Either<Failure, List<PokemonStat>>> call(
    GetPokemonStatsParams params,
  ) async {
    return repository.getPokemonStats(pokemonId: params.pokemonId);
  }
}

class GetPokemonStatsParams extends Equatable {
  const GetPokemonStatsParams({required this.pokemonId});

  final int pokemonId;

  @override
  List<Object> get props => [pokemonId];
}
