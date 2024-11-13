part of 'pokemon_stats_bloc.dart';

abstract class PokemonStatsEvent extends Equatable {
  const PokemonStatsEvent();
}

class GetPokemonStatsEvent extends PokemonStatsEvent {
  const GetPokemonStatsEvent({required this.pokemonId});
  final int pokemonId;

  @override
  List<Object> get props => [pokemonId];
}
