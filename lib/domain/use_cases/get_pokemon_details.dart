import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutterdex/domain/entities/pokemon_detail_info.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';

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
