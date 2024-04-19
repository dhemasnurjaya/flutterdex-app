part of 'pokemon_list_bloc.dart';

abstract class PokemonListEvent extends Equatable {
  const PokemonListEvent();
}

class GetPokemonListEvent extends PokemonListEvent {
  final int offset;
  final int limit;

  const GetPokemonListEvent({
    required this.offset,
    required this.limit,
  });

  @override
  List<Object> get props => [offset, limit];
}
