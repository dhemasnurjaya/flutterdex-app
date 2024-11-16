part of 'pokemon_natural_moves_bloc.dart';

abstract class PokemonNaturalMovesEvent extends Equatable {
  const PokemonNaturalMovesEvent();

  @override
  List<Object?> get props => [];
}

class GetPokemonNaturalMovesEvent extends PokemonNaturalMovesEvent {
  const GetPokemonNaturalMovesEvent({
    required this.pokemonId,
  });

  final int pokemonId;

  @override
  List<Object?> get props => [pokemonId];
}
