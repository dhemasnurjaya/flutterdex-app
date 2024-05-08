part of 'pokemon_stats_bloc.dart';

abstract class PokemonStatsState extends Equatable {
  const PokemonStatsState();
}

class PokemonStatsInitialState extends PokemonStatsState {
  const PokemonStatsInitialState();

  @override
  List<Object> get props => [];
}

class PokemonStatsLoadingState extends PokemonStatsState {
  const PokemonStatsLoadingState();

  @override
  List<Object> get props => [];
}

class PokemonStatsLoadedState extends PokemonStatsState {
  final List<PokemonStat> pokemonStats;

  const PokemonStatsLoadedState({required this.pokemonStats});

  @override
  List<Object> get props => [pokemonStats];
}

class PokemonStatsErrorState extends PokemonStatsState implements ErrorState {
  @override
  final String message;

  @override
  final Exception? cause;

  const PokemonStatsErrorState({required this.message, this.cause});

  @override
  List<Object> get props => [message];
}
