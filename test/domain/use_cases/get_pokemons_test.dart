import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdex/core/error/failure.dart';
import 'package:flutterdex/domain/entities/pokemon_basic_info.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';
import 'package:flutterdex/domain/use_cases/get_pokemons.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockPokeapiRepository extends Mock implements PokeapiRepository {}

void main() {
  late MockPokeapiRepository mockRepository;
  late GetPokemons useCase;

  setUp(() {
    mockRepository = MockPokeapiRepository();
    useCase = GetPokemons(repository: mockRepository);
  });

  test('should get pokemons from the repository', () async {
    // arrange
    const tLimit = 20;
    const tOffset = 0;
    const tSearchQuery = '';
    const tPokemons = <PokemonBasicInfo>[];
    when(
      () => mockRepository.getPokemons(
        searchQuery: any(named: 'searchQuery'),
        limit: any(named: 'limit'),
        offset: any(named: 'offset'),
      ),
    ).thenAnswer((_) async => const Right(tPokemons));
    // act
    final result = await useCase(
      const GetPokemonsParams(
        limit: tLimit,
        offset: tOffset,
        searchQuery: tSearchQuery,
      ),
    );
    // assert
    expect(
      result,
      const Right<Failure, List<PokemonBasicInfo>>(tPokemons),
    );
    verify(() => mockRepository.getPokemons(searchQuery: tSearchQuery));
  });
}
