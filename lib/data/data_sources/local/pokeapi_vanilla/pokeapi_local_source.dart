import 'package:flutterdex/data/models/vanilla/pokemon_basic_model.dart';
import 'package:sqflite/sqflite.dart';

abstract class PokeapiLocalSource {
  Future<List<PokemonBasicModel>> getPokemonList({
    int limit = 20,
    int offset = 0,
  });
}

class PokeapiLocalSourceImpl implements PokeapiLocalSource {
  final Database database;

  PokeapiLocalSourceImpl({
    required this.database,
  });

  @override
  Future<List<PokemonBasicModel>> getPokemonList({
    int limit = 20,
    int offset = 0,
  }) async {
    const query = '''
      SELECT
        ps.id,
        ps.name,
        t.name as 'type'
      FROM
        (
          SELECT
            id,
            name
          FROM 
            pokemon_v2_pokemonspecies
          ORDER BY id ASC 
          LIMIT ?
          OFFSET ?
        ) ps
      JOIN 
        pokemon_v2_pokemontype pt
        ON ps.id = pt.pokemon_id
      JOIN
        pokemon_v2_type t
        ON pt.type_id = t.id;
    ''';

    final result = await database.rawQuery(query, [limit, offset]);
    return result
        .map((row) => PokemonBasicModel(
              id: row['id'] as int,
              name: row['name'] as String,
              type: row['type'] as String,
            ))
        .toList();
  }
}
