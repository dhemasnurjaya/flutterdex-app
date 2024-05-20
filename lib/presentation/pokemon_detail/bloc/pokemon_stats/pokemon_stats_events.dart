part of 'pokemon_stats_bloc.dart';

abstract class PokemonStatsEvent extends Equatable {
  const PokemonStatsEvent();
}

class GetPokemonStatsEvent extends PokemonStatsEvent {
  const GetPokemonStatsEvent({required this.id});
  final int id;

  @override
  List<Object> get props => [id];
}
