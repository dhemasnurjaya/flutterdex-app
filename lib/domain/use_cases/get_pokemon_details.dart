import 'package:equatable/equatable.dart';
import 'package:flutterdex/core/domain/use_case.dart';
import 'package:flutterdex/core/error/failure.dart';
import 'package:flutterdex/domain/entities/pokemon_detail_info.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetPokemonDetails
    extends UseCase<PokemonDetailInfo, GetPokemonDetailsParams> {
  GetPokemonDetails({required this.repository});
  final PokeapiRepository repository;

  @override
  Future<Either<Failure, PokemonDetailInfo>> call(
    GetPokemonDetailsParams params,
  ) async {
    return repository.getPokemonDetails(pokemonId: params.pokemonId);
  }
}

class GetPokemonDetailsParams extends Equatable {
  const GetPokemonDetailsParams({required this.pokemonId});

  final int pokemonId;

  @override
  List<Object> get props => [pokemonId];
}
