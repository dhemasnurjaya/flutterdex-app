import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutterdex/domain/entities/pokemon_natural_move.dart';
import 'package:flutterdex/domain/use_cases/get_pokemon_natural_moves.dart';

part 'pokemon_natural_moves_events.dart';
part 'pokemon_natural_moves_states.dart';

class PokemonNaturalMovesBloc
    extends Bloc<PokemonNaturalMovesEvent, PokemonNaturalMovesState> {
  PokemonNaturalMovesBloc({
    required this.getPokemonNaturalMoves,
  }) : super(const PokemonNaturalMovesInitialState()) {
    on<GetPokemonNaturalMovesEvent>(_onGetPokemonNaturalMoves);
  }

  final GetPokemonNaturalMoves getPokemonNaturalMoves;

  Future<void> _onGetPokemonNaturalMoves(
    GetPokemonNaturalMovesEvent event,
    Emitter<PokemonNaturalMovesState> emit,
  ) async {
    emit(const PokemonNaturalMovesLoadingState());
    final result = await getPokemonNaturalMoves(
      GetPokemonNaturalMovesParams(pokemonId: event.pokemonId),
    );
    result.fold(
      (failure) => emit(
        PokemonNaturalMovesErrorState(
          message: failure.message,
          cause: failure.cause,
        ),
      ),
      (moves) => emit(PokemonNaturalMovesLoadedState(moves: moves)),
    );
  }
}
