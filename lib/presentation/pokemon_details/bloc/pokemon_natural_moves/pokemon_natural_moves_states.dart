part of 'pokemon_natural_moves_bloc.dart';

abstract class PokemonNaturalMovesState extends Equatable {
  const PokemonNaturalMovesState();

  @override
  List<Object?> get props => [];
}

class PokemonNaturalMovesInitialState extends PokemonNaturalMovesState {
  const PokemonNaturalMovesInitialState();
}

class PokemonNaturalMovesLoadingState extends PokemonNaturalMovesState {
  const PokemonNaturalMovesLoadingState();
}

class PokemonNaturalMovesLoadedState extends PokemonNaturalMovesState {
  const PokemonNaturalMovesLoadedState({
    required this.moves,
  });

  final PokemonNaturalMoves moves;

  @override
  List<Object?> get props => [moves];
}

class PokemonNaturalMovesErrorState extends PokemonNaturalMovesState
    implements ErrorState {
  const PokemonNaturalMovesErrorState({
    required this.message,
    this.cause,
  });

  @override
  final String message;

  @override
  final Exception? cause;

  @override
  List<Object?> get props => [message, cause];
}
