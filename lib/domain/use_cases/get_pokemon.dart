import 'package:equatable/equatable.dart';
import 'package:flutterdex/core/domain/use_case.dart';
import 'package:flutterdex/core/error/failure.dart';
import 'package:flutterdex/domain/entities/pokemon_detail.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetPokemon extends UseCase<PokemonDetail, GetPokemonParams> {
  final PokeapiRepository repository;

  GetPokemon({required this.repository});

  @override
  Future<Either<Failure, PokemonDetail>> execute(
    GetPokemonParams params,
  ) async {
    return repository.getPokemon(id: params.id);
  }
}

class GetPokemonParams extends Equatable {
  final int id;

  const GetPokemonParams({required this.id});

  @override
  List<Object> get props => [id];
}
