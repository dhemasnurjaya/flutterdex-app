import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutterdex/domain/entities/pokemon_detail_info.dart';
import 'package:flutterdex/domain/use_cases/get_pokemon_details.dart';
import 'package:flutterdex/presentation/pokemon_details/bloc/pokemon_details/pokemon_details_bloc.dart';

import 'package:mocktail/mocktail.dart';

class MockGetPokemonDetails extends Mock implements GetPokemonDetails {}

void main() {
  late MockGetPokemonDetails mockGetPokemonDetails;
  late PokemonDetailsBloc bloc;

  setUp(() {
    mockGetPokemonDetails = MockGetPokemonDetails();
    bloc = PokemonDetailsBloc(getPokemonDetails: mockGetPokemonDetails);
  });

  test('initial state should be PokemonDetailsInitialState', () {
    // assert
    expect(bloc.state, const PokemonDetailsInitialState());
  });

  group('GetPokemonDetailsEvent', () {
    const tPokemonId = 1;
    const tEvent = GetPokemonDetailsEvent(pokemonId: tPokemonId);
    const tParams = GetPokemonDetailsParams(pokemonId: tPokemonId);
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

    test('should get pokemon details from use case', () async {
      // arrange
      when(() => mockGetPokemonDetails(tParams)).thenAnswer(
        (_) async => Right(tPokemonDetails),
      );

      // act
      bloc.add(tEvent);
      await untilCalled(() => mockGetPokemonDetails.call(tParams));

      // assert
      verify(() => mockGetPokemonDetails(tParams));
      verifyNoMoreInteractions(mockGetPokemonDetails);
    });

    test('should emit [loading, loaded] when successful', () async {
      // arrange
      when(() => mockGetPokemonDetails(tParams)).thenAnswer(
        (_) async => Right(tPokemonDetails),
      );

      // act
      bloc.add(tEvent);

      // assert
      final expected = [
        const PokemonDetailsLoadingState(),
        PokemonDetailsLoadedState(pokemonDetail: tPokemonDetails),
      ];
      await expectLater(bloc.stream, emitsInOrder(expected));
    });

    test('should emit [loading, error] when unsuccessful', () async {
      // arrange
      when(() => mockGetPokemonDetails(tParams)).thenAnswer(
        (_) async => const Left(
          UnknownFailure(message: 'An unknown error occurred'),
        ),
      );

      // act
      bloc.add(tEvent);

      // assert
      final expected = [
        const PokemonDetailsLoadingState(),
        const PokemonDetailsErrorState(
          message: 'An unknown error occurred',
        ),
      ];
      await expectLater(bloc.stream, emitsInOrder(expected));
    });
  });
}
