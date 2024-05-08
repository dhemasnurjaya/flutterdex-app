part of 'pokemon_stats_bloc.dart';

abstract class PokemonStatsEvent extends Equatable {
  const PokemonStatsEvent();
}

class GetPokemonStatsEvent extends PokemonStatsEvent {
  final int id;

  const GetPokemonStatsEvent({required this.id});

  @override
  List<Object> get props => [id];
}
