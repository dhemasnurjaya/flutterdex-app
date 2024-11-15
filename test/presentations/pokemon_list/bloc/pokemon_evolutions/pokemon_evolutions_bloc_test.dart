import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutterdex/domain/entities/pokemon_evolutions.dart';
import 'package:flutterdex/domain/use_cases/get_pokemon_evolutions.dart';
import 'package:flutterdex/presentation/pokemon_details/bloc/pokemon_evolutions/pokemon_evolutions_bloc.dart';

import 'package:mocktail/mocktail.dart';

class MockGetPokemonEvolutions extends Mock implements GetPokemonEvolutions {}

void main() {
  late MockGetPokemonEvolutions mockGetPokemonEvolutions;
  late PokemonEvolutionsBloc bloc;

  setUp(() {
    mockGetPokemonEvolutions = MockGetPokemonEvolutions();
    bloc =
        PokemonEvolutionsBloc(getPokemonEvolutions: mockGetPokemonEvolutions);
  });

  test('initial state should be PokemonEvolutionsInitialState', () {
    // assert
    expect(bloc.state, const PokemonEvolutionsInitialState());
  });

  group('GetPokemonEvolutionsEvent', () {
    const tPokemonId = 1;
    const tEvent = GetPokemonEvolutionsEvent(pokemonId: tPokemonId);
    const tParams = GetPokemonEvolutionsParams(pokemonId: tPokemonId);

    test('should get pokemon evolutions from use case', () async {
      // arrange
      when(() => mockGetPokemonEvolutions(tParams)).thenAnswer(
        (_) async => const Right([]),
      );

      // act
      bloc.add(tEvent);
      await untilCalled(() => mockGetPokemonEvolutions(tParams));

      // assert
      verify(() => mockGetPokemonEvolutions.call(tParams));
      verifyNoMoreInteractions(mockGetPokemonEvolutions);
    });

    test('should emit [loading, empty] when no evolutions found', () async {
      // arrange
      when(() => mockGetPokemonEvolutions(tParams)).thenAnswer(
        (_) async => const Right([]),
      );

      // act
      bloc.add(tEvent);

      // assert
      final expected = [
        const PokemonEvolutionsLoadingState(),
        const PokemonEvolutionsEmptyState(),
      ];
      await expectLater(bloc.stream, emitsInOrder(expected));
    });

    test('should emit [loading, loaded] when successful', () async {
      // arrange
      final tPokemonEvolutions = <PokemonEvolutions>[
        PokemonEvolutions(evolutionChains: []),
      ];

      when(() => mockGetPokemonEvolutions(tParams)).thenAnswer(
        (_) async => Right(tPokemonEvolutions),
      );

      // act
      bloc.add(tEvent);

      // assert
      final expected = [
        const PokemonEvolutionsLoadingState(),
        PokemonEvolutionsLoadedState(evolutions: tPokemonEvolutions),
      ];
      await expectLater(bloc.stream, emitsInOrder(expected));
    });

    test('should emit [loading, error] when unsuccessful', () async {
      // arrange
      when(() => mockGetPokemonEvolutions(tParams)).thenAnswer(
        (_) async => const Left(UnknownFailure(message: 'Failure')),
      );

      // act
      bloc.add(tEvent);

      // assert
      final expected = [
        const PokemonEvolutionsLoadingState(),
        const PokemonEvolutionsErrorState(message: 'Failure'),
      ];
      await expectLater(bloc.stream, emitsInOrder(expected));
    });
  });
}
