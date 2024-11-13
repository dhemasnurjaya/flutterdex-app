part of 'pokemon_evolutions_bloc.dart';

abstract class PokemonEvolutionsEvent extends Equatable {
  const PokemonEvolutionsEvent();
}

class GetPokemonEvolutionsEvent extends PokemonEvolutionsEvent {
  const GetPokemonEvolutionsEvent({required this.pokemonId});

  final int pokemonId;

  @override
  List<Object> get props => [pokemonId];
}
