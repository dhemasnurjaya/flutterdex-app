import 'package:equatable/equatable.dart';
import 'package:flutterdex/core/domain/use_case.dart';
import 'package:flutterdex/core/error/failure.dart';
import 'package:flutterdex/domain/entities/vanilla/pokemon_basic_info.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetPokemonList
    extends UseCase<List<PokemonBasicInfo>, GetPokemonListParams> {
  final PokeapiRepository repository;

  GetPokemonList({required this.repository});

  @override
  Future<Either<Failure, List<PokemonBasicInfo>>> execute(
    GetPokemonListParams params,
  ) async {
    return repository.getPokemonList(
      limit: params.limit,
      offset: params.offset,
    );
  }
}

class GetPokemonListParams extends Equatable {
  final int limit;
  final int offset;

  const GetPokemonListParams({required this.limit, required this.offset});

  @override
  List<Object> get props => [limit, offset];
}
