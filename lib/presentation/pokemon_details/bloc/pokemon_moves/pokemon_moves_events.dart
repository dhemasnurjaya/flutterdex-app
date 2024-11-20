part of 'pokemon_moves_bloc.dart';

abstract class PokemonMovesEvent extends Equatable {
  const PokemonMovesEvent();

  @override
  List<Object?> get props => [];
}

class GetPokemonMovesEvent extends PokemonMovesEvent {
  const GetPokemonMovesEvent({
    required this.pokemonId,
    required this.learnMethod,
    required this.generation,
  });

  final int pokemonId;
  final PokemonMoveLearnMethod learnMethod;
  final PokemonGeneration generation;

  @override
  List<Object?> get props => [pokemonId];
}
