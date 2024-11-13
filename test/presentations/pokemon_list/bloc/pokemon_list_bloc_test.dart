import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdex/core/error/unknown_failure.dart';
import 'package:flutterdex/domain/entities/pokemon_basic_info.dart';
import 'package:flutterdex/domain/use_cases/get_pokemons.dart';
import 'package:flutterdex/presentation/pokemon_list/bloc/pokemon_list_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockGetPokemons extends Mock implements GetPokemons {}

void main() {
  late MockGetPokemons mockGetPokemons;
  late PokemonListBloc bloc;

  setUp(() {
    mockGetPokemons = MockGetPokemons();
    bloc = PokemonListBloc(getPokemons: mockGetPokemons);
  });

  test('initial state should be PokemonListInitial', () {
    // assert
    expect(bloc.state, const PokemonListInitial());
  });

  group('GetPokemonListEvent', () {
    const tSearchQuery = 'bulbasaur';
    const tOffset = 0;
    const tLimit = 20;
    const tEvent = GetPokemonListEvent(
      searchQuery: tSearchQuery,
      offset: tOffset,
      limit: tLimit,
    );
    const tParams = GetPokemonsParams(
      searchQuery: tSearchQuery,
      offset: tOffset,
      limit: tLimit,
    );
    const tResult = <PokemonBasicInfo>[];

    test('should get pokemons from use case', () async {
      // arrange
      when(() => mockGetPokemons(tParams)).thenAnswer(
        (_) async => const Right(<PokemonBasicInfo>[]),
      );
      // act
      bloc.add(tEvent);
      await untilCalled(() => mockGetPokemons(tParams));

      // assert
      verify(() => mockGetPokemons(tParams));
    });

    test('should emit [loading, loaded] when successful', () async {
      // arrange
      when(() => mockGetPokemons(tParams)).thenAnswer(
        (_) async => const Right(tResult),
      );
      // act
      bloc.add(tEvent);
      // assert later
      final tExpected = [
        const PokemonListLoadingState(),
        const PokemonListLoadedState(pokemons: tResult),
      ];
      await expectLater(bloc.stream, emitsInOrder(tExpected));
    });

    test('should emit [loading, error] when unsuccessful', () async {
      // arrange
      const tFailure = UnknownFailure(message: 'Server error');
      when(() => mockGetPokemons(tParams)).thenAnswer(
        (_) async => const Left(tFailure),
      );
      // act
      bloc.add(tEvent);
      // assert later
      final tExpected = [
        const PokemonListLoadingState(),
        PokemonListErrorState(message: tFailure.message),
      ];
      await expectLater(bloc.stream, emitsInOrder(tExpected));
    });
  });
}
