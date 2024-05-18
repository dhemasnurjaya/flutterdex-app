import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/core/presentation/bloc/error_state.dart';
import 'package:flutterdex/domain/entities/pokemon_abilities.dart';
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
    final result = await getPokemonAbilities.execute(
      GetPokemonAbilitiesParams(
        id: event.pokemonId,
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
