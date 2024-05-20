part of 'pokemon_list_bloc.dart';

abstract class PokemonListEvent extends Equatable {
  const PokemonListEvent();
}

class GetPokemonListEvent extends PokemonListEvent {
  const GetPokemonListEvent({
    required this.offset,
    required this.limit,
    required this.searchQuery,
  });

  final int offset;
  final int limit;
  final String searchQuery;

  @override
  List<Object> get props => [offset, limit, searchQuery];
}
