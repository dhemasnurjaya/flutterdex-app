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
  Future<Either<Failure, List<Pokemon>>> listPokemonSpeciesWithType({
    int limit = 20,
    int offset = 0,
  }) async {
    try {
      final result = await localSource.listPokemonSpeciesWithType(
          limit: limit, offset: offset);
      final pokemons = result
          .map((e) => PokemonSpeciesWithTypeModel(
                pokemonSpecies: e.pokemonSpecies,
                type: e.type,
              ))
          .toList();
      final mergedEntities = <int, Pokemon>{};

      // map pokemon model to entity
      for (final e in pokemons) {
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
        mergedEntities[e.pokemonSpecies.id] = Pokemon(
          id: e.pokemonSpecies.id,
          name: e.pokemonSpecies.name,
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
          await localSource.listPokemonWithAbilities(id: id);
      final pokemonWithStats = await localSource.listPokemonWithStats(id: id);
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
