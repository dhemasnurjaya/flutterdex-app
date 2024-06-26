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
  const PokemonListLoadedState({required this.pokemons});
  final List<PokemonBasicInfo> pokemons;

  @override
  List<Object> get props => [pokemons];

  @override
  String toString() => 'PokemonListLoadedState { count: ${pokemons.length} }';
}

class PokemonListErrorState extends PokemonListState implements ErrorState {
  const PokemonListErrorState({
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
