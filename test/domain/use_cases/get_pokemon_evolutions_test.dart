import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdex/domain/entities/pokemon_evolutions.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';
import 'package:flutterdex/domain/use_cases/get_pokemon_evolutions.dart';
import 'package:mocktail/mocktail.dart';

class MockPokeapiRepository extends Mock implements PokeapiRepository {}

void main() {
  late MockPokeapiRepository mockRepository;
  late GetPokemonEvolutions useCase;

  setUp(() {
    mockRepository = MockPokeapiRepository();
    useCase = GetPokemonEvolutions(repository: mockRepository);
  });

  test('should get pokemon evolutions from the repository', () async {
    // arrange
    const tPokemonId = 1;
    const tPokemonEvolutions = <PokemonEvolutions>[];
    when(() => mockRepository.getPokemonEvolutions(id: tPokemonId))
        .thenAnswer((_) async => const Right(tPokemonEvolutions));
    // act
    final result = await useCase(
      const GetPokemonEvolutionsParams(pokemonId: tPokemonId),
    );
    // assert
    expect(
      result,
      const Right<Failure, List<PokemonEvolutions>>(tPokemonEvolutions),
    );
    verify(() => mockRepository.getPokemonEvolutions(id: tPokemonId));
  });
}
