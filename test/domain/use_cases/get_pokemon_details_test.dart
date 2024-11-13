import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdex/core/error/failure.dart';
import 'package:flutterdex/domain/entities/pokemon_detail_info.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';
import 'package:flutterdex/domain/use_cases/get_pokemon_details.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockPokeapiRepository extends Mock implements PokeapiRepository {}

void main() {
  late MockPokeapiRepository mockRepository;
  late GetPokemonDetails useCase;

  setUp(() {
    mockRepository = MockPokeapiRepository();
    useCase = GetPokemonDetails(repository: mockRepository);
  });

  test('should get pokemon details from the repository', () async {
    // arrange
    const tPokemonId = 1;
    final tPokemonDetails = PokemonDetailInfo(
      id: 1,
      name: 'bulbasaur',
      baseFriendship: 70,
      capturePercentage: 45,
      description: 'A strange seed was planted on its back at birth.',
      eggGroups: ['Monster', 'Grass'],
      femalePercentage: 12.5,
      malePercentage: 87.5,
      growthRate: 'Medium Slow',
      hatchCounter: 20,
      heightInMeter: 0.7,
      isBaby: false,
      weightInKg: 6.9,
    );
    when(() => mockRepository.getPokemonDetails(pokemonId: tPokemonId))
        .thenAnswer((_) async => Right(tPokemonDetails));
    // act
    final result =
        await useCase(const GetPokemonDetailsParams(pokemonId: tPokemonId));
    // assert
    expect(
      result,
      Right<Failure, PokemonDetailInfo>(tPokemonDetails),
    );
    verify(() => mockRepository.getPokemonDetails(pokemonId: tPokemonId));
  });
}
