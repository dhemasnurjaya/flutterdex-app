part of 'pokemon_detail_bloc.dart';

abstract class PokemonDetailEvent extends Equatable {
  const PokemonDetailEvent();
}

class GetPokemonDetailEvent extends PokemonDetailEvent {
  final int id;

  const GetPokemonDetailEvent({required this.id});

  @override
  List<Object> get props => [id];
}
