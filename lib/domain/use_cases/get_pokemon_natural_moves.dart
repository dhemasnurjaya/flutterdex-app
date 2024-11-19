import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutterdex/domain/entities/pokemon_natural_move.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';

class GetPokemonNaturalMoves
    extends UseCase<PokemonNaturalMoves, GetPokemonNaturalMovesParams> {
  GetPokemonNaturalMoves({
    required this.repository,
  });

  final PokeapiRepository repository;

  @override
  Future<Either<Failure, PokemonNaturalMoves>> call(
    GetPokemonNaturalMovesParams params,
  ) {
    return repository.getPokemonNaturalMoves(pokemonId: params.pokemonId);
  }
}

class GetPokemonNaturalMovesParams extends Equatable {
  const GetPokemonNaturalMovesParams({
    required this.pokemonId,
  });

  final int pokemonId;

  @override
  List<Object?> get props => [pokemonId];
}
