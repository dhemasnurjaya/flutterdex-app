part of 'pokemon_detail_bloc.dart';

abstract class PokemonDetailEvent extends Equatable {
  const PokemonDetailEvent();
}

class GetPokemonDetailEvent extends PokemonDetailEvent {
  const GetPokemonDetailEvent({required this.id});
  final int id;

  @override
  List<Object> get props => [id];
}
