part of 'pokemon_abilities_bloc.dart';

abstract class PokemonAbilitiesEvent extends Equatable {
  const PokemonAbilitiesEvent();
}

class GetPokemonAbilitiesEvent extends PokemonAbilitiesEvent {
  const GetPokemonAbilitiesEvent({
    required this.pokemonId,
  });

  final int pokemonId;

  @override
  List<Object> get props => [pokemonId];
}
