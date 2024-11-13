import 'package:equatable/equatable.dart';
import 'package:flutterdex/core/domain/use_case.dart';
import 'package:flutterdex/core/error/failure.dart';
import 'package:flutterdex/domain/entities/pokemon_ability.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetPokemonAbilities
    extends UseCase<List<PokemonAbility>, GetPokemonAbilitiesParams> {
  GetPokemonAbilities({required this.repository});
  final PokeapiRepository repository;

  @override
  Future<Either<Failure, List<PokemonAbility>>> call(
    GetPokemonAbilitiesParams params,
  ) async {
    return repository.getPokemonAbilities(pokemonId: params.pokemonId);
  }
}

class GetPokemonAbilitiesParams extends Equatable {
  const GetPokemonAbilitiesParams({required this.pokemonId});

  final int pokemonId;

  @override
  List<Object> get props => [pokemonId];
}
