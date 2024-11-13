import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutterdex/domain/entities/pokemon_detail_info.dart';
import 'package:flutterdex/domain/use_cases/get_pokemon_details.dart';

part 'pokemon_details_events.dart';
part 'pokemon_details_states.dart';

class PokemonDetailsBloc
    extends Bloc<PokemonDetailsEvent, PokemonDetailsState> {
  PokemonDetailsBloc({required this.getPokemonDetails})
      : super(const PokemonDetailsInitialState()) {
    on<GetPokemonDetailsEvent>(_onGetPokemonEvent);
  }
  final GetPokemonDetails getPokemonDetails;

  Future<void> _onGetPokemonEvent(
    GetPokemonDetailsEvent event,
    Emitter<PokemonDetailsState> emit,
  ) async {
    emit(const PokemonDetailsLoadingState());
    final result = await getPokemonDetails
        .call(GetPokemonDetailsParams(pokemonId: event.pokemonId));
    result.fold(
      (failure) => emit(
        PokemonDetailsErrorState(
          message: failure.message,
          cause: failure.cause,
        ),
      ),
      (pokemon) => emit(PokemonDetailsLoadedState(pokemonDetail: pokemon)),
    );
  }
}
