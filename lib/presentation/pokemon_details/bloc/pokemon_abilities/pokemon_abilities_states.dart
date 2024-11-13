part of 'pokemon_abilities_bloc.dart';

abstract class PokemonAbilitiesState extends Equatable {
  const PokemonAbilitiesState();
}

class PokemonAbilitiesInitialState extends PokemonAbilitiesState {
  const PokemonAbilitiesInitialState();

  @override
  List<Object> get props => [];
}

class PokemonAbilitiesLoadingState extends PokemonAbilitiesState {
  const PokemonAbilitiesLoadingState();

  @override
  List<Object> get props => [];
}

class PokemonAbilitiesLoadedState extends PokemonAbilitiesState {
  const PokemonAbilitiesLoadedState({
    required this.abilities,
  });

  final List<PokemonAbility> abilities;

  @override
  List<Object> get props => [abilities];
}

class PokemonAbilitiesErrorState extends PokemonAbilitiesState
    implements ErrorState {
  const PokemonAbilitiesErrorState({
    required this.message,
    this.cause,
  });

  @override
  final String message;

  @override
  final Exception? cause;

  @override
  List<Object> get props => [message];
}
