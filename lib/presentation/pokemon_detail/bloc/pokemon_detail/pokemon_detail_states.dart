part of 'pokemon_detail_bloc.dart';

abstract class PokemonDetailState extends Equatable {
  const PokemonDetailState();
}

class PokemonDetailInitialState extends PokemonDetailState {
  const PokemonDetailInitialState();

  @override
  List<Object> get props => [];
}

class PokemonDetailLoadingState extends PokemonDetailState {
  const PokemonDetailLoadingState();

  @override
  List<Object> get props => [];
}

class PokemonDetailLoadedState extends PokemonDetailState {
  const PokemonDetailLoadedState({required this.pokemonDetail});
  final PokemonDetailInfo pokemonDetail;

  @override
  List<Object> get props => [pokemonDetail];
}

class PokemonDetailErrorState extends PokemonDetailState implements ErrorState {
  const PokemonDetailErrorState({required this.message, this.cause});
  @override
  final String message;

  @override
  final Exception? cause;

  @override
  List<Object> get props => [message];
}
