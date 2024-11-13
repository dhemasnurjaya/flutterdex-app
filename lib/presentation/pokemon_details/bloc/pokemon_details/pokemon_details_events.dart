part of 'pokemon_details_bloc.dart';

abstract class PokemonDetailsEvent extends Equatable {
  const PokemonDetailsEvent();
}

class GetPokemonDetailsEvent extends PokemonDetailsEvent {
  const GetPokemonDetailsEvent({required this.pokemonId});

  final int pokemonId;

  @override
  List<Object> get props => [pokemonId];
}
