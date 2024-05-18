import 'package:flutterdex/core/error/failure.dart';
import 'package:flutterdex/core/error/unknown_failure.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_local_source.dart';
import 'package:flutterdex/domain/entities/pokemon_abilities.dart';
import 'package:flutterdex/domain/entities/pokemon_basic_info.dart';
import 'package:flutterdex/domain/entities/pokemon_detail_info.dart';
import 'package:flutterdex/domain/entities/pokemon_stat.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';
import 'package:fpdart/fpdart.dart';

class PokeapiRepositoryImpl implements PokeapiRepository {
  PokeapiRepositoryImpl({
    required this.localSource,
  });
  final PokeapiLocalSource localSource;

  @override
  Future<Either<Failure, List<PokemonBasicInfo>>> getPokemonList({
    required String searchQuery,
    int limit = 20,
    int offset = 0,
  }) async {
    try {
      final result = await localSource.getPokemonList(
        searchQuery: searchQuery,
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
      final pokemon = await localSource.getPokemonSpecies(id: id);
      final eggGroups = await localSource.getPokemonEggGroups(id: id);

      final heightInKg = pokemon.height / 10;
      final weightInMeter = pokemon.weight / 10;
      final isGenderless = pokemon.genderRate == -1;
      final femalePercentage =
          isGenderless ? null : (pokemon.genderRate / 8.0) * 100;
      final malePercentage = isGenderless ? null : 100 - femalePercentage!;
      final capturePercentage = (pokemon.captureRate / 255.0) * 100;
      final baseHappinessPercentage = (pokemon.baseHappiness / 255.0) * 100;

      final entity = PokemonDetailInfo(
        id: pokemon.id,
        name: pokemon.name,
        heightInMeter: heightInKg,
        weightInKg: weightInMeter,
        malePercentage: malePercentage,
        femalePercentage: femalePercentage,
        capturePercentage: capturePercentage,
        baseHappinessPercentage: baseHappinessPercentage,
        isBaby: pokemon.isBaby,
        hatchCounter: pokemon.hatchCounter,
        description: pokemon.description,
        growthRate: pokemon.growthRate,
        eggGroups: eggGroups.map((e) => e.name).toList(),
      );
      return right(entity);
    } on Exception catch (e) {
      return left(
        UnknownFailure(message: e.toString(), cause: e),
      );
    }
  }

  @override
  Future<Either<Failure, List<PokemonStat>>> getPokemonStats({
    required int id,
  }) async {
    try {
      final result = await localSource.getPokemonStats(id: id);
      final entities = result.map(
        (e) => PokemonStat(
          name: e.name,
          value: e.value,
          effortValue: e.effortValue,
        ),
      );
      return right(entities.toList());
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
    try {
      final result = await localSource.getPokemonAbilities(id: id);
      final entities = result.map(
        (e) => PokemonAbility(
          isHidden: e.isHidden,
          name: e.name,
          description: e.description,
          generation: e.generation,
        ),
      );
      return right(entities.toList());
    } on Exception catch (e) {
      return left(
        UnknownFailure(message: e.toString(), cause: e),
      );
    }
  }
}
