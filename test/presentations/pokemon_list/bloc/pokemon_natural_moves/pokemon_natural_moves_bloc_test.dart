import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdex/domain/use_cases/get_pokemon_natural_moves.dart';
import 'package:flutterdex/presentation/pokemon_details/bloc/pokemon_natural_moves/pokemon_natural_moves_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockGetPokemonNaturalMoves extends Mock
    implements GetPokemonNaturalMoves {}

void main() {
  late GetPokemonNaturalMoves mockGetPokemonNaturalMoves;
  late PokemonNaturalMovesBloc bloc;

  setUp(() {
    mockGetPokemonNaturalMoves = MockGetPokemonNaturalMoves();
    bloc = PokemonNaturalMovesBloc(
      getPokemonNaturalMoves: mockGetPokemonNaturalMoves,
    );
  });

  test('initial state should be PokemonNaturalMovesInitialState', () {
    // assert
    expect(bloc.state, const PokemonNaturalMovesInitialState());
  });

  group('GetPokemonNaturalMovesEvent', () {
    const tPokemonId = 1;
    registerFallbackValue(
      const GetPokemonNaturalMovesParams(
        pokemonId: tPokemonId,
      ),
    );

    test('should get data from the GetPokemonNaturalMoves use case', () async {
      // arrange
      when(() => mockGetPokemonNaturalMoves(any()))
          .thenAnswer((_) async => const Right([]));
      // act
      bloc.add(const GetPokemonNaturalMovesEvent(pokemonId: tPokemonId));
      await untilCalled(() => mockGetPokemonNaturalMoves(any()));
      // assert
      verify(
        () => mockGetPokemonNaturalMoves(
          const GetPokemonNaturalMovesParams(
            pokemonId: tPokemonId,
          ),
        ),
      );
    });

    test('should emit [loading, loaded] when data is gotten successfully',
        () async {
      // arrange
      when(() => mockGetPokemonNaturalMoves(any()))
          .thenAnswer((_) async => const Right([]));
      // act
      bloc.add(const GetPokemonNaturalMovesEvent(pokemonId: tPokemonId));
      // assert
      final expected = [
        const PokemonNaturalMovesLoadingState(),
        const PokemonNaturalMovesLoadedState(moves: []),
      ];
      await expectLater(bloc.stream, emitsInOrder(expected));
    });

    test('should emit [loading, error] when getting data fails', () async {
      // arrange
      when(() => mockGetPokemonNaturalMoves(any()))
          .thenAnswer((_) async => const Left(UnknownFailure(message: '')));
      // act
      bloc.add(const GetPokemonNaturalMovesEvent(pokemonId: tPokemonId));
      // assert
      final expected = [
        const PokemonNaturalMovesLoadingState(),
        const PokemonNaturalMovesErrorState(message: ''),
      ];
      await expectLater(bloc.stream, emitsInOrder(expected));
    });
  });
}
