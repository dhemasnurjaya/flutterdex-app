import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutterdex/domain/entities/pokemon_evolutions.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';

class GetPokemonEvolutions
    extends UseCase<List<PokemonEvolutions>, GetPokemonEvolutionsParams> {
  GetPokemonEvolutions({
    required this.repository,
  });

  final PokeapiRepository repository;

  @override
  Future<Either<Failure, List<PokemonEvolutions>>> call(
    GetPokemonEvolutionsParams params,
  ) {
    return repository.getPokemonEvolutions(id: params.pokemonId);
  }
}

class GetPokemonEvolutionsParams extends Equatable {
  const GetPokemonEvolutionsParams({
    required this.pokemonId,
  });

  final int pokemonId;

  @override
  List<Object> get props => [pokemonId];
}
