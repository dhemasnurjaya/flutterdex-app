part of 'pokemon_list_bloc.dart';

abstract class PokemonListEvent extends Equatable {
  const PokemonListEvent();
}

class GetPokemonListEvent extends PokemonListEvent {
  const GetPokemonListEvent({
    required this.offset,
    required this.limit,
  });
  final int offset;
  final int limit;

  @override
  List<Object> get props => [offset, limit];
}
