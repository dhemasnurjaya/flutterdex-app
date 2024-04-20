import 'package:flutterdex/core/error/failure.dart';
import 'package:flutterdex/core/error/unknown_failure.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_local_source.dart';
import 'package:flutterdex/data/models/pokemon_with_type_model.dart';
import 'package:flutterdex/domain/entities/pokemon.dart';
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
}
