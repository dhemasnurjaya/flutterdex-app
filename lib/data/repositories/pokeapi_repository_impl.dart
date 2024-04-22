import 'package:flutterdex/core/error/failure.dart';
import 'package:flutterdex/core/error/unknown_failure.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_local_source.dart';
import 'package:flutterdex/data/models/pokemon_with_type_model.dart';
import 'package:flutterdex/domain/entities/pokemon.dart';
import 'package:flutterdex/domain/entities/pokemon_ability.dart';
import 'package:flutterdex/domain/entities/pokemon_detail.dart';
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
  Future<Either<Failure, List<Pokemon>>> getPokemonsWithType({
    int limit = 20,
    int offset = 0,
  }) async {
    try {
      final result =
          await localSource.getPokemonsWithType(limit: limit, offset: offset);
      final pokemons = result
          .map((e) => PokemonWithTypeModel(
                pokemon: e.pokemon,
                type: e.type,
              ))
          .toList();
      final mergedEntities = <int, Pokemon>{};

      // map pokemon model to entity
      for (final e in pokemons) {
        // add type to existing pokemon entity
        if (mergedEntities.containsKey(e.pokemon.id)) {
          mergedEntities[e.pokemon.id]!.types.add(
                PokemonType(
                  id: e.type.id,
                  name: e.type.name,
                ),
              );
          continue;
        }

        // create new pokemon entity
        mergedEntities[e.pokemon.id] = Pokemon(
          id: e.pokemon.id,
          name: e.pokemon.name,
          order: e.pokemon.order,
          height: e.pokemon.height,
          weight: e.pokemon.weight,
          isDefault: e.pokemon.isDefault,
          pokemonSpeciesId: e.pokemon.pokemonSpeciesId,
          baseExperience: e.pokemon.baseExperience,
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
  Future<Either<Failure, PokemonDetail>> getPokemon({required int id}) async {
    try {
      final pokemonWithAbilities =
          await localSource.getPokemonWithAbilities(id: id);
      final pokemonWithStats = await localSource.getPokemonWithStats(id: id);
      final pokemonWithSpecies =
          await localSource.getPokemonWithSpecies(id: id);

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
      );

      return right(PokemonDetail(
        id: pokemonWithStats.first.pokemon.id,
        species: speciesEntity,
        abilities: abilityEntities,
        stats: statEntities,
      ));
    } on Exception catch (e) {
      return left(UnknownFailure(message: e.toString(), cause: e));
    }
  }
}
