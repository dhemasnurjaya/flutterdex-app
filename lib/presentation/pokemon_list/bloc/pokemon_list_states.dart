part of 'pokemon_list_bloc.dart';

abstract class PokemonListState extends Equatable {
  const PokemonListState();
}

class PokemonListInitial extends PokemonListState {
  const PokemonListInitial();

  @override
  List<Object> get props => [];
}

class PokemonListLoadingState extends PokemonListState {
  const PokemonListLoadingState();

  @override
  List<Object> get props => [];
}

class PokemonListLoadedState extends PokemonListState {
  final List<Pokemon> pokemons;

  const PokemonListLoadedState({required this.pokemons});

  @override
  List<Object> get props => [pokemons];

  @override
  String toString() => 'PokemonListLoadedState { count: ${pokemons.length} }';
}

class PokemonListErrorState extends PokemonListState implements ErrorState {
  @override
  final String message;

  @override
  final Exception? cause;

  const PokemonListErrorState({
    required this.message,
    this.cause,
  });

  @override
  List<Object> get props => [message];
}
