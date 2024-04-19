import 'package:drift/drift.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_database.dart';
import 'package:flutterdex/data/models/pokemon_with_type_model.dart';

abstract class PokeApiSqliteLocalSource {
  Future<List<PokemonModel>> getPokemons({
    int limit = 20,
    int offset = 0,
  });

  Future<List<PokemonWithTypeModel>> getPokemonsWithType({
    int limit = 20,
    int offset = 0,
  });
}

class PokeApiSqliteLocalSourceImpl implements PokeApiSqliteLocalSource {
  final PokeApiDatabase database;

  PokeApiSqliteLocalSourceImpl({required this.database});

  @override
  Future<List<PokemonModel>> getPokemons({
    int limit = 20,
    int offset = 0,
  }) async {
    final result = await (database.select(database.pokemons)
          ..limit(limit, offset: offset))
        .get();
    return result;
  }

  @override
  Future<List<PokemonWithTypeModel>> getPokemonsWithType({
    int limit = 20,
    int offset = 0,
  }) async {
    final pokemonSubquery = Subquery(
      database.select(database.pokemons)..limit(limit, offset: offset),
      'p',
    );

    final query = database.select(pokemonSubquery).join([
      leftOuterJoin(
        database.pokemonTypes,
        database.pokemonTypes.pokemonId
            .equalsExp(pokemonSubquery.ref(database.pokemons.id)),
      ),
      leftOuterJoin(
        database.types,
        database.types.id.equalsExp(database.pokemonTypes.typeId),
      ),
    ]);

    final result = query
        .map((row) => PokemonWithTypeModel(
              pokemon: row.readTable(pokemonSubquery),
              type: row.readTable(database.types),
            ))
        .get();

    return result;
  }
}
