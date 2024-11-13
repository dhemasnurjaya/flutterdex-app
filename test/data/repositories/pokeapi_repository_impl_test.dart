import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdex/core/error/unknown_failure.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_local_data_source.dart';
import 'package:flutterdex/data/models/pokemon_ability_model.dart';
import 'package:flutterdex/data/models/pokemon_egg_group_model.dart';
import 'package:flutterdex/data/models/pokemon_evolution_model.dart';
import 'package:flutterdex/data/models/pokemon_model.dart';
import 'package:flutterdex/data/models/pokemon_species_model.dart';
import 'package:flutterdex/data/models/pokemon_stat_model.dart';
import 'package:flutterdex/data/repositories/pokeapi_repository_impl.dart';
import 'package:flutterdex/domain/entities/pokemon_ability.dart';
import 'package:flutterdex/domain/entities/pokemon_basic_info.dart';
import 'package:flutterdex/domain/entities/pokemon_detail_info.dart';
import 'package:flutterdex/domain/entities/pokemon_evolutions.dart';
import 'package:flutterdex/domain/entities/pokemon_stat.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockPokeapiLocalSource extends Mock implements PokeapiLocalDataSource {}

void main() {
  late MockPokeapiLocalSource localSource;
  late PokeapiRepository repository;

  setUp(() {
    localSource = MockPokeapiLocalSource();
    repository = PokeapiRepositoryImpl(localSource: localSource);
  });

  group('getPokemons', () {
    test('should return List<PokemonBasicInfo> when success', () async {
      // arrange
      const tSearchQuery = 'query';
      final tPokemonModels = <PokemonModel>[
        PokemonModel(
          id: 1,
          name: 'bulbasaur',
          genus: 'seed',
          types: 'grass, poison',
        ),
      ];

      when(
        () => localSource.getPokemonList(
          searchQuery: any(named: 'searchQuery'),
        ),
      ).thenAnswer((_) async => tPokemonModels);

      // act
      final result = await repository.getPokemons(searchQuery: tSearchQuery);

      // assert
      final tExpected = tPokemonModels
          .map(
            (e) => PokemonBasicInfo(
              id: e.id,
              name: e.name,
              genus: e.genus,
              types: e.types.split(','),
            ),
          )
          .toList();
      result.fold(
        (l) => fail('should not return left'),
        (r) => expect(r, tExpected),
      );
      verify(
        () => localSource.getPokemonList(
          searchQuery: tSearchQuery,
        ),
      );
      verifyNoMoreInteractions(localSource);
    });

    test('should return Failure when exception occurs', () async {
      // arrange
      const tSearchQuery = 'query';
      when(
        () => localSource.getPokemonList(
          searchQuery: any(named: 'searchQuery'),
        ),
      ).thenThrow(Exception());

      // act
      final result = await repository.getPokemons(searchQuery: tSearchQuery);

      // assert
      result.fold(
        (l) => expect(l, isA<UnknownFailure>()),
        (r) => fail('should not return right'),
      );
      verify(
        () => localSource.getPokemonList(
          searchQuery: tSearchQuery,
        ),
      );
      verifyNoMoreInteractions(localSource);
    });
  });

  group('getPokemonDetails', () {
    test('should return PokemonDetailInfo when success', () async {
      // arrange
      const tId = 1;
      final tSpecies = PokemonSpeciesModel(
        id: 1,
        name: 'bulbasaur',
        height: 7,
        weight: 69,
        isBaby: false,
        baseHappiness: 70,
        captureRate: 45,
        description: 'A strange seed was planted on its back at birth.',
        growthRate: 'medium-slow',
        genderRate: 1,
        hatchCounter: 20,
      );
      final tEggGroups = <PokemonEggGroupModel>[
        PokemonEggGroupModel(name: 'monster'),
        PokemonEggGroupModel(name: 'grass'),
      ];

      when(() => localSource.getPokemonSpecies(id: tId))
          .thenAnswer((_) async => tSpecies);
      when(() => localSource.getPokemonEggGroups(id: tId))
          .thenAnswer((_) async => tEggGroups);

      // act
      final result = await repository.getPokemonDetails(pokemonId: tId);

      // assert
      final tExpected = PokemonDetailInfo(
        id: tSpecies.id,
        name: tSpecies.name,
        heightInMeter: 0.7,
        weightInKg: 6.9,
        malePercentage: 87.5,
        femalePercentage: 12.5,
        capturePercentage: (tSpecies.captureRate / 255.0) * 100,
        baseFriendship: tSpecies.baseHappiness,
        isBaby: tSpecies.isBaby,
        hatchCounter: tSpecies.hatchCounter,
        description: tSpecies.description,
        growthRate: tSpecies.growthRate,
        eggGroups: tEggGroups.map((e) => e.name).toList(),
      );
      result.fold(
        (l) => fail('should not return left'),
        (r) => expect(r, tExpected),
      );
      verify(() => localSource.getPokemonSpecies(id: tId));
      verify(() => localSource.getPokemonEggGroups(id: tId));
      verifyNoMoreInteractions(localSource);
    });

    test('should return Failure when exception occurs', () async {
      // arrange
      const tId = 1;
      when(() => localSource.getPokemonSpecies(id: tId)).thenThrow(Exception());

      // act
      final result = await repository.getPokemonDetails(pokemonId: tId);

      // assert
      result.fold(
        (l) => expect(l, isA<UnknownFailure>()),
        (r) => fail('should not return right'),
      );
      verify(() => localSource.getPokemonSpecies(id: tId));
      verifyNoMoreInteractions(localSource);
    });
  });

  group('getPokemonStats', () {
    test('should return List<PokemonStat> when success', () async {
      // arrange
      const tId = 1;
      final tResult = <PokemonStatModel>[
        PokemonStatModel(
          name: 'hp',
          value: 45,
          effortValue: 0,
        ),
        PokemonStatModel(
          name: 'attack',
          value: 49,
          effortValue: 0,
        ),
        PokemonStatModel(
          name: 'defense',
          value: 49,
          effortValue: 0,
        ),
        PokemonStatModel(
          name: 'special-attack',
          value: 65,
          effortValue: 1,
        ),
        PokemonStatModel(
          name: 'special-defense',
          value: 65,
          effortValue: 0,
        ),
        PokemonStatModel(
          name: 'speed',
          value: 45,
          effortValue: 0,
        ),
      ];

      when(() => localSource.getPokemonStats(id: tId))
          .thenAnswer((_) async => tResult);

      // act
      final result = await repository.getPokemonStats(pokemonId: tId);

      // assert
      final tExpected = tResult.map(PokemonStat.fromModel).toList();
      result.fold(
        (l) => fail('should not return left'),
        (r) => expect(r, tExpected),
      );
      verify(() => localSource.getPokemonStats(id: tId));
      verifyNoMoreInteractions(localSource);
    });

    test('should return Failure when exception occurs', () async {
      // arrange
      const tId = 1;
      when(() => localSource.getPokemonStats(id: tId)).thenThrow(Exception());

      // act
      final result = await repository.getPokemonStats(pokemonId: tId);

      // assert
      result.fold(
        (l) => expect(l, isA<UnknownFailure>()),
        (r) => fail('should not return right'),
      );
      verify(() => localSource.getPokemonStats(id: tId));
      verifyNoMoreInteractions(localSource);
    });
  });

  group('getPokemonAbilities', () {
    test('should return List<PokemonAbility> when success', () async {
      // arrange
      const tId = 1;
      final tResult = <PokemonAbilityModel>[
        PokemonAbilityModel(
          name: 'overgrow',
          isHidden: false,
          description: 'Powers up Grass-type moves in a pinch.',
          generation: 'generation-iii',
        ),
        PokemonAbilityModel(
          name: 'chlorophyll',
          isHidden: true,
          description: 'Boosts the Speed stat in harsh sunlight.',
          generation: 'generation-iii',
        ),
      ];

      when(() => localSource.getPokemonAbilities(id: tId))
          .thenAnswer((_) async => tResult);

      // act
      final result = await repository.getPokemonAbilities(pokemonId: tId);

      // assert
      final tExpected = tResult.map(PokemonAbility.fromModel).toList();
      result.fold(
        (l) => fail('should not return left'),
        (r) => expect(r, tExpected),
      );
      verify(() => localSource.getPokemonAbilities(id: tId));
      verifyNoMoreInteractions(localSource);
    });

    test('should return Failure when exception occurs', () async {
      // arrange
      const tId = 1;
      when(() => localSource.getPokemonAbilities(id: tId))
          .thenThrow(Exception());

      // act
      final result = await repository.getPokemonAbilities(pokemonId: tId);

      // assert
      result.fold(
        (l) => expect(l, isA<UnknownFailure>()),
        (r) => fail('should not return right'),
      );
      verify(() => localSource.getPokemonAbilities(id: tId));
      verifyNoMoreInteractions(localSource);
    });
  });

  group('getPokemonEvolutions', () {
    test('should return List<PokemonEvolutions> when success', () async {
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
          evolutionTriggers: 'level-up',
          minLevel: 10,
          heldItem: null,
          evolutionItem: null,
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
          evolutionTriggers: 'level-up',
          minLevel: 7,
          heldItem: null,
          evolutionItem: null,
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
          evolutionTriggers: 'level-up',
          minLevel: 10,
          heldItem: null,
          evolutionItem: null,
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
          evolutionTriggers: 'level-up',
          minLevel: 7,
          heldItem: null,
          evolutionItem: null,
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
          evolutionTriggers: null,
          minLevel: null,
          heldItem: null,
          evolutionItem: null,
          timeOfDay: null,
          minHappiness: null,
          minAffection: null,
          minBeauty: null,
          relativePhysicalStats: null,
          needsOverworldRain: false,
          turnUpsideDown: false,
        ),
      ];

      when(() => localSource.getPokemonEvolutions(id: tId))
          .thenAnswer((_) async => tResult);

      // act
      final result = await repository.getPokemonEvolutions(id: tId);

      // assert
      final tExpectedFirstEvolutionChain = [
        'Wurmple',
        'Cascoon',
        'Dustox',
      ];
      final tExpectedSecondEvolutionChain = [
        'Wurmple',
        'Silcoon',
        'Beautifly',
      ];
      result.fold(
        (l) => fail('should not return left'),
        (r) {
          expect(r, isA<List<PokemonEvolutions>>());

          // check evolution chains have the correct species
          expect(
            r.first.evolutionChains.map((e) => e.pokemon.name),
            tExpectedFirstEvolutionChain,
          );
          expect(
            r.last.evolutionChains.map((e) => e.pokemon.name),
            tExpectedSecondEvolutionChain,
          );
        },
      );
      verify(() => localSource.getPokemonEvolutions(id: tId));
      verifyNoMoreInteractions(localSource);
    });

    test('should return Failure when exception occurs', () async {
      // arrange
      const tId = 265;
      when(() => localSource.getPokemonEvolutions(id: tId))
          .thenThrow(Exception());

      // act
      final result = await repository.getPokemonEvolutions(id: tId);

      // assert
      result.fold(
        (l) => expect(l, isA<UnknownFailure>()),
        (r) => fail('should not return right'),
      );
      verify(() => localSource.getPokemonEvolutions(id: tId));
      verifyNoMoreInteractions(localSource);
    });
  });
}
