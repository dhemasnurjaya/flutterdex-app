import 'package:flutterdex/core/error/failure.dart';
import 'package:flutterdex/core/error/unknown_failure.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_local_source.dart';
import 'package:flutterdex/domain/entities/pokemon.dart';
import 'package:flutterdex/domain/entities/pokemon_basic_info.dart';
import 'package:flutterdex/domain/entities/pokemon_ability.dart';
import 'package:flutterdex/domain/entities/pokemon_detail.dart';
import 'package:flutterdex/domain/entities/pokemon_evolution.dart';
import 'package:flutterdex/domain/entities/pokemon_generation.dart';
import 'package:flutterdex/domain/entities/pokemon_species.dart';
import 'package:flutterdex/domain/entities/pokemon_stat.dart';
import 'package:flutterdex/domain/entities/pokemon_type.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';
import 'package:fpdart/fpdart.dart';

class PokeapiRepositoryImpl implements PokeapiRepository {
  final PokeApiLocalSource localSource;

  PokeapiRepositoryImpl({required this.localSource});

  @override
  Future<Either<Failure, List<PokemonBasicInfo>>> getPokemonBasicInfoList({
    int limit = 20,
    int offset = 0,
  }) async {
    try {
      final result = await localSource.getPokemonSpeciesAndTypes(
          limit: limit, offset: offset);
      final mergedEntities = <int, PokemonBasicInfo>{};

      // map pokemon model to entity
      for (final e in result) {
        // add type to existing pokemon entity
        if (mergedEntities.containsKey(e.pokemonSpecies.id)) {
          mergedEntities[e.pokemonSpecies.id]!.types.add(
                PokemonType(
                  id: e.type.id,
                  name: e.type.name,
                ),
              );
          continue;
        }

        // create new pokemon entity
        mergedEntities[e.pokemonSpecies.id] = PokemonBasicInfo(
          id: e.pokemonSpecies.id,
          name: e.pokemonSpecies.name,
          genus: e.pokemonSpeciesName.genus,
          types: [
            PokemonType(
              id: e.type.id,
              name: e.type.name,
            ),
          ],
        );
      }

      return right(mergedEntities.values.toList());
    } on Exception catch (e) {
      return left(UnknownFailure(message: e.toString(), cause: e));
    }
  }

  @override
  Future<Either<Failure, PokemonDetail>> getPokemonDetail(
      {required int id}) async {
    try {
      final pokemon = await localSource.getPokemon(id: id);
      final pokemonWithAbilities =
          await localSource.getPokemonAbilities(id: id);
      final pokemonWithStats = await localSource.getPokemonStats(id: id);
      final pokemonWithSpecies = await localSource.getPokemonSpecies(id: id);
      final pokemonEvolutions =
          await localSource.getPokemonSpeciesEvolutions(id: id);

      final pokemonEntity = Pokemon(
        id: pokemon.id,
        name: pokemon.name,
        weight: pokemon.weight,
        height: pokemon.height,
      );
      final abilityEntities = pokemonWithAbilities
          .map(
            (e) => PokemonAbility(
              id: e.ability.id,
              name: e.ability.name,
              description: e.abilityFlavorText.flavorText,
              generation: PokemonGeneration(
                id: e.generation.id,
                name: e.generation.name,
              ),
            ),
          )
          .toList();
      final statEntities = pokemonWithStats
          .map(
            (e) => PokemonStat(
              id: e.stat.id,
              name: e.stat.name,
              baseStat: e.pokemonStat.baseStat,
              effort: e.pokemonStat.effort,
            ),
          )
          .toList();
      final speciesEntity = PokemonSpecies(
        id: pokemonWithSpecies.pokemon.id,
        name: pokemonWithSpecies.species.name,
        description: pokemonWithSpecies.flavorText.flavorText,
        genderRate: pokemonWithSpecies.species.genderRate,
        captureRate: pokemonWithSpecies.species.captureRate,
        baseHappiness: pokemonWithSpecies.species.baseHappiness,
      );
      final evolutionEntities = pokemonEvolutions
          .map(
            (e) => PokemonEvolution(
              id: e.species.id,
              name: e.species.name,
              trigger: EvolutionTrigger.values
                  .where((el) => el.index == e.evolutionTrigger?.id)
                  .firstOrNull,
              minLevel: e.evolution?.minLevel,
              timeOfDay: e.evolution?.timeOfDay,
              minHappiness: e.evolution?.minHappiness,
              minAffection: e.evolution?.minAffection,
              relativePhysicalStats: e.evolution?.relativePhysicalStats,
              minBeauty: e.evolution?.minBeauty,
              needsOverworldRain: e.evolution?.needsOverworldRain ?? false,
              turnUpsideDown: e.evolution?.turnUpsideDown ?? false,
            ),
          )
          .toList();

      return right(PokemonDetail(
        id: pokemonWithStats.first.pokemon.id,
        pokemon: pokemonEntity,
        species: speciesEntity,
        abilities: abilityEntities,
        stats: statEntities,
        evolutions: evolutionEntities,
      ));
    } on Exception catch (e) {
      return left(UnknownFailure(message: e.toString(), cause: e));
    }
  }
}
