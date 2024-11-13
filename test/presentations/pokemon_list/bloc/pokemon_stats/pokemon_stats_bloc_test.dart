import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdex/core/error/unknown_failure.dart';
import 'package:flutterdex/domain/use_cases/get_pokemon_stats.dart';
import 'package:flutterdex/presentation/pokemon_details/bloc/pokemon_stats/pokemon_stats_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockGetPokemonStats extends Mock implements GetPokemonStats {}

void main() {
  late MockGetPokemonStats mockGetPokemonStats;
  late PokemonStatsBloc bloc;

  setUp(() {
    mockGetPokemonStats = MockGetPokemonStats();
    bloc = PokemonStatsBloc(getPokemonStats: mockGetPokemonStats);
  });

  test('initial state should be PokemonStatsInitialState', () {
    // assert
    expect(bloc.state, const PokemonStatsInitialState());
  });

  group('GetPokemonStatsEvent', () {
    const tPokemonId = 1;
    const tEvent = GetPokemonStatsEvent(pokemonId: tPokemonId);
    const tParams = GetPokemonStatsParams(pokemonId: tPokemonId);

    test('should get pokemon stats from use case', () async {
      // arrange
      when(() => mockGetPokemonStats(tParams)).thenAnswer(
        (_) async => const Right([]),
      );

      // act
      bloc.add(tEvent);
      await untilCalled(() => mockGetPokemonStats(tParams));

      // assert
      verify(() => mockGetPokemonStats.call(tParams));
      verifyNoMoreInteractions(mockGetPokemonStats);
    });

    test('should emit [loading, loaded] when successful', () async {
      // arrange
      when(() => mockGetPokemonStats(tParams)).thenAnswer(
        (_) async => const Right([]),
      );

      // act
      bloc.add(tEvent);

      // assert
      final expected = [
        const PokemonStatsLoadingState(),
        const PokemonStatsLoadedState(pokemonStats: []),
      ];
      await expectLater(bloc.stream, emitsInOrder(expected));
    });

    test('should emit [loading, error] when unsuccessful', () async {
      // arrange
      when(() => mockGetPokemonStats(tParams)).thenAnswer(
        (_) async => const Left(
          UnknownFailure(message: 'An unknown error occurred'),
        ),
      );

      // act
      bloc.add(tEvent);

      // assert
      final expected = [
        const PokemonStatsLoadingState(),
        const PokemonStatsErrorState(
          message: 'An unknown error occurred',
        ),
      ];
      await expectLater(bloc.stream, emitsInOrder(expected));
    });
  });
}
