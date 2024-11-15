import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutterdex/domain/entities/pokemon_ability.dart';
import 'package:flutterdex/domain/use_cases/get_pokemon_abilities.dart';

part 'pokemon_abilities_events.dart';
part 'pokemon_abilities_states.dart';

class PokemonAbilitiesBloc
    extends Bloc<PokemonAbilitiesEvent, PokemonAbilitiesState> {
  PokemonAbilitiesBloc({
    required this.getPokemonAbilities,
  }) : super(const PokemonAbilitiesInitialState()) {
    on<GetPokemonAbilitiesEvent>(_onGetPokemonAbilitiesEvent);
  }

  final GetPokemonAbilities getPokemonAbilities;

  Future<void> _onGetPokemonAbilitiesEvent(
    GetPokemonAbilitiesEvent event,
    Emitter<PokemonAbilitiesState> emit,
  ) async {
    emit(const PokemonAbilitiesLoadingState());
    final result = await getPokemonAbilities.call(
      GetPokemonAbilitiesParams(
        pokemonId: event.pokemonId,
      ),
    );
    result.fold(
      (failure) => emit(
        PokemonAbilitiesErrorState(
          message: failure.message,
          cause: failure.cause,
        ),
      ),
      (abilities) => emit(PokemonAbilitiesLoadedState(abilities: abilities)),
    );
  }
}
