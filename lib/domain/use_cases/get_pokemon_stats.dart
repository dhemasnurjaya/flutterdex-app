import 'package:equatable/equatable.dart';
import 'package:flutterdex/core/domain/use_case.dart';
import 'package:flutterdex/core/error/failure.dart';
import 'package:flutterdex/domain/entities/pokemon_stat.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetPokemonStats
    extends UseCase<List<PokemonStat>, GetPokemonStatsParams> {
  final PokeapiRepository repository;

  GetPokemonStats({required this.repository});

  @override
  Future<Either<Failure, List<PokemonStat>>> execute(
    GetPokemonStatsParams params,
  ) async {
    return repository.getPokemonStats(id: params.id);
  }
}

class GetPokemonStatsParams extends Equatable {
  final int id;

  const GetPokemonStatsParams({required this.id});

  @override
  List<Object> get props => [id];
}
