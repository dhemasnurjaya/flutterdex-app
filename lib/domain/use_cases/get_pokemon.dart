import 'package:equatable/equatable.dart';
import 'package:flutterdex/core/domain/use_case.dart';
import 'package:flutterdex/core/error/failure.dart';
import 'package:flutterdex/domain/entities/pokemon_detail_info.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetPokemon extends UseCase<PokemonDetailInfo, GetPokemonParams> {
  GetPokemon({required this.repository});
  final PokeapiRepository repository;

  @override
  Future<Either<Failure, PokemonDetailInfo>> execute(
    GetPokemonParams params,
  ) async {
    return repository.getPokemonDetails(id: params.id);
  }
}

class GetPokemonParams extends Equatable {
  const GetPokemonParams({required this.id});
  final int id;

  @override
  List<Object> get props => [id];
}
