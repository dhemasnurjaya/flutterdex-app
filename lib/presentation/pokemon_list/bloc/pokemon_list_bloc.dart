import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutterdex/domain/entities/pokemon_basic_info.dart';
import 'package:flutterdex/domain/use_cases/get_pokemons.dart';

part 'pokemon_list_events.dart';
part 'pokemon_list_states.dart';

class PokemonListBloc extends Bloc<PokemonListEvent, PokemonListState> {
  PokemonListBloc({
    required this.getPokemons,
  }) : super(const PokemonListInitial()) {
    on<GetPokemonListEvent>(_onGetPokemonList);
  }

  final GetPokemons getPokemons;

  Future<void> _onGetPokemonList(
    GetPokemonListEvent event,
    Emitter<PokemonListState> emit,
  ) async {
    emit(const PokemonListLoadingState());

    final result = await getPokemons(
      GetPokemonsParams(
        offset: event.offset,
        limit: event.limit,
        searchQuery: event.searchQuery,
      ),
    );

    result.fold(
      (failure) => emit(PokemonListErrorState(message: failure.message)),
      (pokemons) => emit(PokemonListLoadedState(pokemons: pokemons)),
    );
  }
}
