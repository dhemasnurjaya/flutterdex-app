import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdex/domain/entities/pokemon_natural_move.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';
import 'package:flutterdex/domain/use_cases/get_pokemon_natural_moves.dart';
import 'package:mocktail/mocktail.dart';

class MockPokeapiRepository extends Mock implements PokeapiRepository {}

void main() {
  late MockPokeapiRepository repository;
  late GetPokemonNaturalMoves usecase;

  setUp(() {
    repository = MockPokeapiRepository();
    usecase = GetPokemonNaturalMoves(repository: repository);
  });

  test('should get pokemon natural moves from the repository', () async {
    // arrange
    const pokemonId = 1;
    const moves = <PokemonNaturalMove>[];
    when(() => repository.getPokemonNaturalMoves(pokemonId: pokemonId))
        .thenAnswer((_) async => const Right(moves));

    // act
    final result =
        await usecase(const GetPokemonNaturalMovesParams(pokemonId: pokemonId));

    // assert
    expect(result, const Right<Failure, List<PokemonNaturalMove>>(moves));
    verify(() => repository.getPokemonNaturalMoves(pokemonId: pokemonId));
    verifyNoMoreInteractions(repository);
  });
}
