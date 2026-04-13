part of 'pokemon_moves_bloc.dart';

abstract class PokemonMovesState extends Equatable {
  const PokemonMovesState();

  @override
  List<Object?> get props => [];
}

class PokemonMovesInitialState extends PokemonMovesState {
  const PokemonMovesInitialState();
}

class PokemonMovesLoadingState extends PokemonMovesState {
  const PokemonMovesLoadingState();
}

class PokemonMovesLoadedState extends PokemonMovesState {
  const PokemonMovesLoadedState(
    this.moves,
  );

  final List<PokemonMove> moves;

  @override
  List<Object?> get props => [moves];
}

class PokemonMovesErrorState extends PokemonMovesState implements ErrorState {
  const PokemonMovesErrorState({
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
