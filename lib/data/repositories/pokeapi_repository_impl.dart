import 'package:flutterdex/core/error/failure.dart';
import 'package:flutterdex/core/error/unknown_failure.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_local_source.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi_vanilla/pokeapi_local_source.dart';
import 'package:flutterdex/domain/entities/vanilla/pokemon_abilities.dart';
import 'package:flutterdex/domain/entities/vanilla/pokemon_basic_info.dart';
import 'package:flutterdex/domain/entities/vanilla/pokemon_detail_info.dart';
import 'package:flutterdex/domain/entities/vanilla/pokemon_stat.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';
import 'package:fpdart/fpdart.dart';

class PokeapiRepositoryImpl implements PokeapiRepository {
  final PokeApiLocalSource localSource;
  final PokeapiLocalSource localSourceVanilla;

  PokeapiRepositoryImpl({
    required this.localSource,
    required this.localSourceVanilla,
  });

  @override
  Future<Either<Failure, List<PokemonBasicInfo>>> getPokemonList({
    int limit = 20,
    int offset = 0,
  }) async {
    try {
      final result = await localSourceVanilla.getPokemonList(
        limit: limit,
        offset: offset,
      );
      final mergedEntities = <int, PokemonBasicInfo>{};

      // map pokemon model to entity
      for (final e in result) {
        // add type to existing pokemon entity
        if (mergedEntities.containsKey(e.id)) {
          mergedEntities[e.id]!.types.add(e.type);
          continue;
        }

        // create new pokemon entity
        mergedEntities[e.id] = PokemonBasicInfo(
          id: e.id,
          name: e.name,
          genus: e.genus,
          types: [e.type],
        );
      }

      return right(mergedEntities.values.toList());
    } on Exception catch (e) {
      return left(UnknownFailure(message: e.toString(), cause: e));
    }
  }

  @override
  Future<Either<Failure, PokemonDetailInfo>> getPokemon({
    required int id,
  }) async {
    try {
      final result = await localSourceVanilla.getPokemon(id: id);

      double heightInKg = result.height / 10;
      double weightInMeter = result.weight / 10;
      bool isGenderless = result.genderRate == -1;
      double? femalePercentage =
          isGenderless ? null : (result.genderRate / 8.0) * 100;
      double? malePercentage = isGenderless ? null : 100 - femalePercentage!;
      double capturePercentage = (result.captureRate / 255.0) * 100;
      double baseHappinessPercentage = (result.baseHappiness / 255.0) * 100;

      final entity = PokemonDetailInfo(
        id: result.id,
        name: result.name,
        heightInMeter: heightInKg,
        weightInKg: weightInMeter,
        malePercentage: malePercentage,
        femalePercentage: femalePercentage,
        capturePercentage: capturePercentage,
        baseHappinessPercentage: baseHappinessPercentage,
        isBaby: result.isBaby,
        hatchCounter: result.hatchCounter,
        description: result.description,
      );
      return right(entity);
    } on Exception catch (e) {
      return left(
        UnknownFailure(message: e.toString(), cause: e),
      );
    }
  }

  @override
  Future<Either<Failure, List<PokemonAbility>>> getPokemonAbilities({
    required int id,
  }) async {
    // TODO: implement getPokemonAbilities
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<PokemonStat>>> getPokemonStats({
    required int id,
  }) async {
    // TODO: implement getPokemonStats
    throw UnimplementedError();
  }
}
