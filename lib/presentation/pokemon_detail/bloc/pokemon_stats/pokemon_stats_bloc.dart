import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/core/presentation/bloc/error_state.dart';
import 'package:flutterdex/domain/entities/pokemon_stat.dart';
import 'package:flutterdex/domain/use_cases/get_pokemon_stats.dart';

part 'pokemon_stats_events.dart';
part 'pokemon_stats_states.dart';

class PokemonStatsBloc extends Bloc<PokemonStatsEvent, PokemonStatsState> {
  PokemonStatsBloc({required this.getPokemonStats})
      : super(const PokemonStatsInitialState()) {
    on<GetPokemonStatsEvent>(_onGetPokemonStatsEvent);
  }
  final GetPokemonStats getPokemonStats;

  Future<void> _onGetPokemonStatsEvent(
    GetPokemonStatsEvent event,
    Emitter<PokemonStatsState> emit,
  ) async {
    emit(const PokemonStatsLoadingState());
    final result = await getPokemonStats.execute(
      GetPokemonStatsParams(
        id: event.id,
      ),
    );
    result.fold(
      (failure) => emit(
        PokemonStatsErrorState(
          message: failure.message,
          cause: failure.cause,
        ),
      ),
      (pokemonStats) =>
          emit(PokemonStatsLoadedState(pokemonStats: pokemonStats)),
    );
  }
}
