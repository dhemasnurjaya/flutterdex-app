part of 'pokemon_details_bloc.dart';

abstract class PokemonDetailsState extends Equatable {
  const PokemonDetailsState();
}

class PokemonDetailsInitialState extends PokemonDetailsState {
  const PokemonDetailsInitialState();

  @override
  List<Object> get props => [];
}

class PokemonDetailsLoadingState extends PokemonDetailsState {
  const PokemonDetailsLoadingState();

  @override
  List<Object> get props => [];
}

class PokemonDetailsLoadedState extends PokemonDetailsState {
  const PokemonDetailsLoadedState({required this.pokemonDetail});
  final PokemonDetailInfo pokemonDetail;

  @override
  List<Object> get props => [pokemonDetail];
}

class PokemonDetailsErrorState extends PokemonDetailsState
    implements ErrorState {
  const PokemonDetailsErrorState({
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
