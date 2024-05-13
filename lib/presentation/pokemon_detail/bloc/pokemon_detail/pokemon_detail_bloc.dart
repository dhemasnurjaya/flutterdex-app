import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/core/presentation/bloc/error_state.dart';
import 'package:flutterdex/domain/entities/pokemon_detail_info.dart';
import 'package:flutterdex/domain/use_cases/get_pokemon.dart';

part 'pokemon_detail_events.dart';
part 'pokemon_detail_states.dart';

class PokemonDetailBloc extends Bloc<PokemonDetailEvent, PokemonDetailState> {
  PokemonDetailBloc({required this.getPokemon})
      : super(const PokemonDetailInitialState()) {
    on<GetPokemonDetailEvent>(_onGetPokemonEvent);
  }
  final GetPokemon getPokemon;

  Future<void> _onGetPokemonEvent(
    GetPokemonDetailEvent event,
    Emitter<PokemonDetailState> emit,
  ) async {
    emit(const PokemonDetailLoadingState());
    final result = await getPokemon.execute(GetPokemonParams(id: event.id));
    result.fold(
      (failure) => emit(
        PokemonDetailErrorState(
          message: failure.message,
          cause: failure.cause,
        ),
      ),
      (pokemon) => emit(PokemonDetailLoadedState(pokemonDetail: pokemon)),
    );
  }
}
