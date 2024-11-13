import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdex/core/error/failure.dart';
import 'package:flutterdex/domain/entities/pokemon_ability.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';
import 'package:flutterdex/domain/use_cases/get_pokemon_abilities.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockPokeapiRepository extends Mock implements PokeapiRepository {}

void main() {
  late MockPokeapiRepository mockRepository;
  late GetPokemonAbilities useCase;

  setUp(() {
    mockRepository = MockPokeapiRepository();
    useCase = GetPokemonAbilities(repository: mockRepository);
  });

  test('should get pokemon abilities from the repository', () async {
    // arrange
    const tPokemonId = 1;
    const tPokemonAbilities = <PokemonAbility>[];
    when(() => mockRepository.getPokemonAbilities(pokemonId: tPokemonId))
        .thenAnswer((_) async => const Right(tPokemonAbilities));
    // act
    final result =
        await useCase(const GetPokemonAbilitiesParams(pokemonId: tPokemonId));
    // assert
    expect(
      result,
      const Right<Failure, List<PokemonAbility>>(tPokemonAbilities),
    );
    verify(() => mockRepository.getPokemonAbilities(pokemonId: tPokemonId));
  });
}
