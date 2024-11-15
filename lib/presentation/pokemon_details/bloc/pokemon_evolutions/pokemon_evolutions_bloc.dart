import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutterdex/domain/entities/pokemon_evolutions.dart';
import 'package:flutterdex/domain/use_cases/get_pokemon_evolutions.dart';

part 'pokemon_evolutions_events.dart';
part 'pokemon_evolutions_states.dart';

class PokemonEvolutionsBloc
    extends Bloc<PokemonEvolutionsEvent, PokemonEvolutionsState> {
  PokemonEvolutionsBloc({
    required this.getPokemonEvolutions,
  }) : super(const PokemonEvolutionsInitialState()) {
    on<GetPokemonEvolutionsEvent>(_getPokemonEvolutions);
  }

  final GetPokemonEvolutions getPokemonEvolutions;

  Future<void> _getPokemonEvolutions(
    GetPokemonEvolutionsEvent event,
    Emitter<PokemonEvolutionsState> emit,
  ) async {
    emit(const PokemonEvolutionsLoadingState());

    final result = await getPokemonEvolutions.call(
      GetPokemonEvolutionsParams(
        pokemonId: event.pokemonId,
      ),
    );

    result.fold(
      (failure) => emit(
        PokemonEvolutionsErrorState(
          message: failure.message,
          cause: failure.cause,
        ),
      ),
      (evolutions) {
        if (evolutions.isNotEmpty) {
          emit(PokemonEvolutionsLoadedState(evolutions: evolutions));
        } else {
          emit(const PokemonEvolutionsEmptyState());
        }
      },
    );
  }
}
