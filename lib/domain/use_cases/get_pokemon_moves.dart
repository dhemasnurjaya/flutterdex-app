import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutterdex/data/enums/pokemon_generation.dart';
import 'package:flutterdex/data/enums/pokemon_move_learn_method.dart';
import 'package:flutterdex/domain/entities/pokemon_move.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';

class GetPokemonMoves
    extends UseCase<List<PokemonMove>, GetPokemonMovesParams> {
  GetPokemonMoves({
    required this.repository,
  });

  final PokeapiRepository repository;

  @override
  Future<Either<Failure, List<PokemonMove>>> call(
    GetPokemonMovesParams params,
  ) {
    return repository.getPokemonMoves(
      pokemonId: params.pokemonId,
      learnMethod: params.learnMethod,
      generation: params.generation,
    );
  }
}

class GetPokemonMovesParams extends Equatable {
  const GetPokemonMovesParams({
    required this.pokemonId,
    required this.learnMethod,
    required this.generation,
  });

  final int pokemonId;
  final PokemonMoveLearnMethod learnMethod;
  final PokemonGeneration generation;

  @override
  List<Object?> get props => [pokemonId];
}
