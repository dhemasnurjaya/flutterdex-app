import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdex/data/enums/pokemon_generation.dart';
import 'package:flutterdex/data/enums/pokemon_move_learn_method.dart';
import 'package:flutterdex/domain/entities/pokemon_move.dart';
import 'package:flutterdex/domain/use_cases/get_pokemon_moves.dart';
import 'package:flutterdex/presentation/pokemon_details/bloc/pokemon_moves/pokemon_moves_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockGetPokemonMoves extends Mock implements GetPokemonMoves {}

void main() {
  late GetPokemonMoves mockGetPokemonMoves;
  late PokemonMovesBloc bloc;

  setUp(() {
    mockGetPokemonMoves = MockGetPokemonMoves();
    bloc = PokemonMovesBloc(
      getPokemonNaturalMoves: mockGetPokemonMoves,
    );
  });

  test('initial state should be PokemonMovesInitialState', () {
    // assert
    expect(bloc.state, const PokemonMovesInitialState());
  });

  group('GetPokemonNaturalMovesEvent', () {
    const tPokemonId = 1;
    const tLearnMethod = PokemonMoveLearnMethod.levelUp;
    const tGeneration = PokemonGeneration.gen1;
    registerFallbackValue(
      const GetPokemonMovesParams(
        pokemonId: tPokemonId,
        learnMethod: tLearnMethod,
        generation: tGeneration,
      ),
    );

    test('should get data from the GetPokemonNaturalMoves use case', () async {
      // arrange
      when(() => mockGetPokemonMoves(any())).thenAnswer(
        (_) async => const Right(<PokemonMove>[]),
      );
      // act
      bloc.add(
        const GetPokemonMovesEvent(
          pokemonId: tPokemonId,
          learnMethod: tLearnMethod,
          generation: tGeneration,
        ),
      );
      await untilCalled(() => mockGetPokemonMoves(any()));
      // assert
      verify(
        () => mockGetPokemonMoves(
          const GetPokemonMovesParams(
            pokemonId: tPokemonId,
            learnMethod: tLearnMethod,
            generation: tGeneration,
          ),
        ),
      );
    });

    test('should emit [loading, loaded] when data is gotten successfully',
        () async {
      // arrange
      when(() => mockGetPokemonMoves(any()))
          .thenAnswer((_) async => const Right(<PokemonMove>[]));
      // act
      bloc.add(
        const GetPokemonMovesEvent(
          pokemonId: tPokemonId,
          learnMethod: tLearnMethod,
          generation: tGeneration,
        ),
      );
      // assert
      final expected = [
        const PokemonMovesLoadingState(),
        const PokemonMovesLoadedState(<PokemonMove>[]),
      ];
      await expectLater(bloc.stream, emitsInOrder(expected));
    });

    test('should emit [loading, error] when getting data fails', () async {
      // arrange
      when(() => mockGetPokemonMoves(any()))
          .thenAnswer((_) async => const Left(UnknownFailure(message: '')));
      // act
      bloc.add(
        const GetPokemonMovesEvent(
          pokemonId: tPokemonId,
          learnMethod: tLearnMethod,
          generation: tGeneration,
        ),
      );
      // assert
      final expected = [
        const PokemonMovesLoadingState(),
        const PokemonMovesErrorState(message: ''),
      ];
      await expectLater(bloc.stream, emitsInOrder(expected));
    });
  });
}
