import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/core/presentation/bloc/error_state.dart';
import 'package:flutterdex/domain/entities/vanilla/pokemon_basic_info.dart';
import 'package:flutterdex/domain/use_cases/get_pokemon_list.dart';

part 'pokemon_list_events.dart';
part 'pokemon_list_states.dart';

class PokemonListBloc extends Bloc<PokemonListEvent, PokemonListState> {
  final GetPokemonList getPokemonList;

  PokemonListBloc({required this.getPokemonList})
      : super(const PokemonListInitial()) {
    on<GetPokemonListEvent>(_onGetPokemonList);
  }

  Future<void> _onGetPokemonList(
    GetPokemonListEvent event,
    Emitter<PokemonListState> emit,
  ) async {
    emit(const PokemonListLoadingState());

    final result = await getPokemonList.execute(
      GetPokemonListParams(offset: event.offset, limit: event.limit),
    );

    result.fold(
      (failure) => emit(PokemonListErrorState(message: failure.message)),
      (pokemons) => emit(PokemonListLoadedState(pokemons: pokemons)),
    );
  }
}
