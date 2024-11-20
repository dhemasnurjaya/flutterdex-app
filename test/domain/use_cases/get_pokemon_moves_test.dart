import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdex/data/enums/pokemon_generation.dart';
import 'package:flutterdex/data/enums/pokemon_move_learn_method.dart';
import 'package:flutterdex/domain/entities/pokemon_move.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';
import 'package:flutterdex/domain/use_cases/get_pokemon_moves.dart';
import 'package:mocktail/mocktail.dart';

class MockPokeapiRepository extends Mock implements PokeapiRepository {}

void main() {
  late MockPokeapiRepository repository;
  late GetPokemonMoves usecase;

  setUp(() {
    repository = MockPokeapiRepository();
    usecase = GetPokemonMoves(repository: repository);
  });

  test('should get pokemon natural moves from the repository', () async {
    // arrange
    const tId = 1;
    const tLearnMethod = PokemonMoveLearnMethod.levelUp;
    const tGeneration = PokemonGeneration.gen1;
    const moves = <PokemonMove>[];
    when(
      () => repository.getPokemonMoves(
        pokemonId: tId,
        learnMethod: tLearnMethod,
        generation: tGeneration,
      ),
    ).thenAnswer((_) async => const Right(moves));

    // act
    final result = await usecase(
      const GetPokemonMovesParams(
        pokemonId: tId,
        learnMethod: tLearnMethod,
        generation: tGeneration,
      ),
    );

    // assert
    expect(result, const Right<Failure, List<PokemonMove>>(moves));
    verify(
      () => repository.getPokemonMoves(
        pokemonId: tId,
        learnMethod: tLearnMethod,
        generation: tGeneration,
      ),
    );
    verifyNoMoreInteractions(repository);
  });
}
