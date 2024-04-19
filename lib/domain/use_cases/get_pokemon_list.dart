import 'package:equatable/equatable.dart';
import 'package:flutterdex/core/domain/use_case.dart';
import 'package:flutterdex/core/error/failure.dart';
import 'package:flutterdex/domain/entities/pokemon.dart';
import 'package:flutterdex/domain/repositories/poke_api_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetPokemonList extends UseCase<List<Pokemon>, GetPokemonListParams> {
  final PokeApiRepository repository;

  GetPokemonList({required this.repository});

  @override
  Future<Either<Failure, List<Pokemon>>> execute(
    GetPokemonListParams params,
  ) async {
    return repository.getPokemonsWithType(
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
