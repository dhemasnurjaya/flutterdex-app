import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutterdex/data/enums/pokemon_generation.dart';
import 'package:flutterdex/data/enums/pokemon_move_learn_method.dart';
import 'package:flutterdex/domain/entities/pokemon_move.dart';
import 'package:flutterdex/domain/use_cases/get_pokemon_moves.dart';

part 'pokemon_moves_events.dart';
part 'pokemon_moves_states.dart';

class PokemonMovesBloc extends Bloc<PokemonMovesEvent, PokemonMovesState> {
  PokemonMovesBloc({
    required this.getPokemonNaturalMoves,
  }) : super(const PokemonMovesInitialState()) {
    on<GetPokemonMovesEvent>(_onGetPokemonNaturalMoves);
  }

  final GetPokemonMoves getPokemonNaturalMoves;

  Future<void> _onGetPokemonNaturalMoves(
    GetPokemonMovesEvent event,
    Emitter<PokemonMovesState> emit,
  ) async {
    emit(const PokemonMovesLoadingState());
    final result = await getPokemonNaturalMoves(
      GetPokemonMovesParams(
        pokemonId: event.pokemonId,
        learnMethod: event.learnMethod,
        generation: event.generation,
      ),
    );
    result.fold(
      (failure) => emit(
        PokemonMovesErrorState(
          message: failure.message,
          cause: failure.cause,
        ),
      ),
      (moves) => emit(PokemonMovesLoadedState(moves)),
    );
  }
}
