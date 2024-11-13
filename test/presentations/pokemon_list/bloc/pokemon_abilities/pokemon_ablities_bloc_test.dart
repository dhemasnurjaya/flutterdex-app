import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdex/core/error/unknown_failure.dart';
import 'package:flutterdex/domain/use_cases/get_pokemon_abilities.dart';
import 'package:flutterdex/presentation/pokemon_details/bloc/pokemon_abilities/pokemon_abilities_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockGetPokemonAbilities extends Mock implements GetPokemonAbilities {}

void main() {
  late MockGetPokemonAbilities mockGetPokemonAbilities;
  late PokemonAbilitiesBloc bloc;

  setUp(() {
    mockGetPokemonAbilities = MockGetPokemonAbilities();
    bloc = PokemonAbilitiesBloc(getPokemonAbilities: mockGetPokemonAbilities);
  });

  test('initial state should be PokemonAbilitiesInitialState', () {
    // assert
    expect(bloc.state, const PokemonAbilitiesInitialState());
  });

  group('GetPokemonAbilitiesEvent', () {
    const tPokemonId = 1;
    const tEvent = GetPokemonAbilitiesEvent(pokemonId: tPokemonId);
    const tParams = GetPokemonAbilitiesParams(pokemonId: tPokemonId);

    test('should get pokemon abilities from use case', () async {
      // arrange
      when(() => mockGetPokemonAbilities(tParams)).thenAnswer(
        (_) async => const Right([]),
      );

      // act
      bloc.add(tEvent);
      await untilCalled(() => mockGetPokemonAbilities(tParams));

      // assert
      verify(() => mockGetPokemonAbilities.call(tParams));
      verifyNoMoreInteractions(mockGetPokemonAbilities);
    });

    test('should emit [loading, loaded] when successful', () async {
      // arrange
      when(() => mockGetPokemonAbilities(tParams)).thenAnswer(
        (_) async => const Right([]),
      );

      // act
      bloc.add(tEvent);

      // assert
      final expected = [
        const PokemonAbilitiesLoadingState(),
        const PokemonAbilitiesLoadedState(abilities: []),
      ];
      await expectLater(bloc.stream, emitsInOrder(expected));
    });

    test('should emit [loading, error] when unsuccessful', () async {
      // arrange
      when(() => mockGetPokemonAbilities(tParams)).thenAnswer(
        (_) async => const Left(
          UnknownFailure(message: 'An unknown error occurred'),
        ),
      );

      // act
      bloc.add(tEvent);

      // assert
      final expected = [
        const PokemonAbilitiesLoadingState(),
        const PokemonAbilitiesErrorState(
          message: 'An unknown error occurred',
        ),
      ];
      await expectLater(bloc.stream, emitsInOrder(expected));
    });
  });
}
