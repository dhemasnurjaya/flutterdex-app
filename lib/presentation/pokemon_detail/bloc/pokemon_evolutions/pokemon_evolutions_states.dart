part of 'pokemon_evolutions_bloc.dart';

abstract class PokemonEvolutionsState extends Equatable {
  const PokemonEvolutionsState();
}

class PokemonEvolutionsInitialState extends PokemonEvolutionsState {
  const PokemonEvolutionsInitialState();

  @override
  List<Object> get props => [];
}

class PokemonEvolutionsLoadingState extends PokemonEvolutionsState {
  const PokemonEvolutionsLoadingState();

  @override
  List<Object> get props => [];
}

class PokemonEvolutionsLoadedState extends PokemonEvolutionsState {
  const PokemonEvolutionsLoadedState({
    required this.evolutions,
  });

  final List<PokemonEvolutions> evolutions;

  @override
  List<Object> get props => [evolutions];
}

class PokemonEvolutionsErrorState extends PokemonEvolutionsState
    implements ErrorState {
  const PokemonEvolutionsErrorState({
    required this.message,
    this.cause,
  });

  @override
  final String message;

  @override
  final Exception? cause;

  @override
  List<Object> get props => [message];
}
