import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_local_source.dart';
import 'package:flutterdex/data/models/pokemon_evolution_model.dart';
import 'package:flutterdex/data/repositories/pokeapi_repository_impl.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'pokeapi_repository_impl_test.mocks.dart';

@GenerateMocks([
  PokeapiLocalSource,
])
void main() {
  late MockPokeapiLocalSource localSource;
  late PokeapiRepository repository;

  setUp(() {
    localSource = MockPokeapiLocalSource();
    repository = PokeapiRepositoryImpl(localSource: localSource);
  });

  test('getPokemonEvolutions', () async {
    // arrange
    const tId = 265;
    const tResult = <PokemonEvolutionModel>[
      PokemonEvolutionModel(
        id: 269,
        name: 'Dustox',
        genus: '',
        types: '',
        isBaby: false,
        evolvesFromSpeciesId: 268,
        evolutionTrigger: 'level-up',
        minLevel: 10,
        timeOfDay: '',
        minHappiness: null,
        minAffection: null,
        minBeauty: null,
        relativePhysicalStats: null,
        needsOverworldRain: false,
        turnUpsideDown: false,
      ),
      PokemonEvolutionModel(
        id: 268,
        name: 'Cascoon',
        genus: '',
        types: '',
        isBaby: false,
        evolvesFromSpeciesId: 265,
        evolutionTrigger: 'level-up',
        minLevel: 7,
        timeOfDay: '',
        minHappiness: null,
        minAffection: null,
        minBeauty: null,
        relativePhysicalStats: null,
        needsOverworldRain: false,
        turnUpsideDown: false,
      ),
      PokemonEvolutionModel(
        id: 267,
        name: 'Beautifly',
        genus: '',
        types: '',
        isBaby: false,
        evolvesFromSpeciesId: 266,
        evolutionTrigger: 'level-up',
        minLevel: 10,
        timeOfDay: '',
        minHappiness: null,
        minAffection: null,
        minBeauty: null,
        relativePhysicalStats: null,
        needsOverworldRain: false,
        turnUpsideDown: false,
      ),
      PokemonEvolutionModel(
        id: 266,
        name: 'Silcoon',
        genus: '',
        types: '',
        isBaby: false,
        evolvesFromSpeciesId: 265,
        evolutionTrigger: 'level-up',
        minLevel: 7,
        timeOfDay: '',
        minHappiness: null,
        minAffection: null,
        minBeauty: null,
        relativePhysicalStats: null,
        needsOverworldRain: false,
        turnUpsideDown: false,
      ),
      PokemonEvolutionModel(
        id: 265,
        name: 'Wurmple',
        genus: '',
        types: '',
        isBaby: false,
        evolvesFromSpeciesId: null,
        evolutionTrigger: null,
        minLevel: null,
        timeOfDay: null,
        minHappiness: null,
        minAffection: null,
        minBeauty: null,
        relativePhysicalStats: null,
        needsOverworldRain: false,
        turnUpsideDown: false,
      ),
    ];
    final tFirstEvolutionChainNames = [
      'Wurmple',
      'Cascoon',
      'Dustox',
    ];
    final tSecondEvolutionChainNames = [
      'Wurmple',
      'Silcoon',
      'Beautifly',
    ];

    when(localSource.getPokemonEvolutions(id: tId))
        .thenAnswer((_) async => tResult);

    // act
    final result = await repository.getPokemonEvolutions(id: tId);

    // assert
    expect(
      result
          .getOrElse((_) => [])
          .first
          .evolutionChains
          .map((e) => e.pokemon.name),
      tFirstEvolutionChainNames,
    );
    expect(
      result
          .getOrElse((_) => [])
          .last
          .evolutionChains
          .map((e) => e.pokemon.name),
      tSecondEvolutionChainNames,
    );
    verify(localSource.getPokemonEvolutions(id: tId));
    verifyNoMoreInteractions(localSource);
  });
}
