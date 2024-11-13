import 'package:flutterdex/core/error/failure.dart';
import 'package:flutterdex/core/error/unknown_failure.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_local_data_source.dart';
import 'package:flutterdex/data/models/pokemon_evolution_model.dart';
import 'package:flutterdex/domain/entities/pokemon_abilities.dart';
import 'package:flutterdex/domain/entities/pokemon_basic_info.dart';
import 'package:flutterdex/domain/entities/pokemon_detail_info.dart';
import 'package:flutterdex/domain/entities/pokemon_evolutions.dart';
import 'package:flutterdex/domain/entities/pokemon_stat.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';
import 'package:fpdart/fpdart.dart';

class PokeapiRepositoryImpl implements PokeapiRepository {
  PokeapiRepositoryImpl({
    required this.localSource,
  });
  final PokeapiLocalDataSource localSource;

  @override
  Future<Either<Failure, List<PokemonBasicInfo>>> getPokemons({
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
      final pokemons = result.map(PokemonBasicInfo.fromModel);

      return right(pokemons.toList());
    } on Exception catch (e) {
      return left(UnknownFailure(message: e.toString(), cause: e));
    }
  }

  @override
  Future<Either<Failure, PokemonDetailInfo>> getPokemonDetails({
    required int id,
  }) async {
    try {
      final species = await localSource.getPokemonSpecies(id: id);
      final eggGroups = await localSource.getPokemonEggGroups(id: id);
      final pokemonDetailInfo = PokemonDetailInfo.fromModels(
        species,
        eggGroups,
      );
      return right(pokemonDetailInfo);
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
      final pokemonStats = result.map(PokemonStat.fromModel).toList();
      return right(pokemonStats);
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
      final pokemonAbilities = result.map(PokemonAbility.fromModel);
      return right(pokemonAbilities.toList());
    } on Exception catch (e) {
      return left(
        UnknownFailure(message: e.toString(), cause: e),
      );
    }
  }

  @override
  Future<Either<Failure, List<PokemonEvolutions>>> getPokemonEvolutions({
    required int id,
  }) async {
    try {
      final result = (await localSource.getPokemonEvolutions(id: id)).toList();
      final evolutionChains = <PokemonEvolutions>[];
      while (true) {
        if (result.length == 1) {
          break;
        }

        final evolutions = await _findEvolutions(result, result.first);

        // remove used evolutions
        for (final evolution in evolutions.evolutionChains) {
          final stillHasEvolution = result
                  .where((r) => r.evolvesFromSpeciesId == evolution.pokemon.id)
                  .length >
              1;
          final isBaseSpecies = evolution.evolvesFromSpeciesId == null;
          if (!stillHasEvolution && !isBaseSpecies) {
            result.removeWhere((r) => r.id == evolution.pokemon.id);
          }
        }

        evolutionChains.add(evolutions);
      }

      return right(evolutionChains);
    } on Exception catch (e) {
      return left(
        UnknownFailure(message: e.toString(), cause: e),
      );
    }
  }

  Future<PokemonEvolutions> _findEvolutions(
    List<PokemonEvolutionModel> pokemons,
    PokemonEvolutionModel lastEvolution,
  ) async {
    final evolutions = <PokemonEvolution>[];
    evolutions.add(PokemonEvolution.fromModel(lastEvolution));

    // find previous evolution from a pokemon recursively
    Future<PokemonEvolutionModel> findPreviousEvolution(
      PokemonEvolutionModel pokemon,
    ) async {
      if (pokemon.evolvesFromSpeciesId == null) {
        return pokemon;
      }

      final previousEvolution =
          pokemons.where((p) => p.id == pokemon.evolvesFromSpeciesId).first;
      evolutions.add(
        PokemonEvolution.fromModel(previousEvolution),
      );
      return findPreviousEvolution(previousEvolution);
    }

    await findPreviousEvolution(lastEvolution);
    return PokemonEvolutions(evolutionChains: evolutions.reversed.toList());
  }
}
