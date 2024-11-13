import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdex/core/error/failure.dart';
import 'package:flutterdex/domain/entities/pokemon_stat.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';
import 'package:flutterdex/domain/use_cases/get_pokemon_stats.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockPokeapiRepository extends Mock implements PokeapiRepository {}

void main() {
  late MockPokeapiRepository mockRepository;
  late GetPokemonStats useCase;

  setUp(() {
    mockRepository = MockPokeapiRepository();
    useCase = GetPokemonStats(repository: mockRepository);
  });

  test('should get pokemon stats from the repository', () async {
    // arrange
    const tPokemonId = 1;
    const tPokemonStats = <PokemonStat>[];
    when(() => mockRepository.getPokemonStats(pokemonId: tPokemonId))
        .thenAnswer((_) async => const Right(tPokemonStats));

    // act
    final result =
        await useCase(const GetPokemonStatsParams(pokemonId: tPokemonId));

    // assert
    expect(
      result,
      const Right<Failure, List<PokemonStat>>(tPokemonStats),
    );
    verify(() => mockRepository.getPokemonStats(pokemonId: tPokemonId));
  });
}
