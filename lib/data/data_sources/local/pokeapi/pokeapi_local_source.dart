import 'package:flutterdex/data/models/pokemon_ability_model.dart';
import 'package:flutterdex/data/models/pokemon_basic_model.dart';
import 'package:flutterdex/data/models/pokemon_detail_model.dart';
import 'package:flutterdex/data/models/pokemon_stat_model.dart';
import 'package:sqflite/sqflite.dart';

abstract class PokeapiLocalSource {
  Future<List<PokemonBasicModel>> getPokemonList({
    int limit = 20,
    int offset = 0,
  });

  Future<PokemonDetailModel> getPokemon({required int id});

  Future<List<PokemonStatModel>> getPokemonStats({required int id});

  Future<List<PokemonAbilityModel>> getPokemonAbilities({required int id});
}

class PokeapiLocalSourceImpl implements PokeapiLocalSource {
  PokeapiLocalSourceImpl({
    required this.database,
  });
  final Database database;

  @override
  Future<List<PokemonBasicModel>> getPokemonList({
    int limit = 20,
    int offset = 0,
  }) async {
    const query = '''
      SELECT
        ps.id,
        psn.name,
        t.name AS 'type',
        psn.genus
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
        ON pt.type_id = t.id
      JOIN
        pokemon_v2_pokemonspeciesname psn
        ON ps.id = psn.pokemon_species_id
      WHERE
        psn.language_id = 9;
    ''';

    final result = await database.rawQuery(query, [limit, offset]);
    return result
        .map(
          (row) => PokemonBasicModel(
            id: row['id']! as int,
            name: row['name']! as String,
            type: row['type']! as String,
            genus: row['genus']! as String,
          ),
        )
        .toList();
  }

  @override
  Future<PokemonDetailModel> getPokemon({required int id}) async {
    const query = '''
      SELECT
        p.id,
        p.name,
        p.height,
        p.weight,
        ps.gender_rate,
        ps.capture_rate,
        ps.base_happiness,
        ps.is_baby,
        ps.hatch_counter,
        psft.flavor_text AS 'description'
      FROM
        pokemon_v2_pokemon p
      JOIN
        pokemon_v2_pokemonspecies ps
        ON p.pokemon_species_id = ps.id
      JOIN
        pokemon_v2_pokemonspeciesflavortext psft
        ON ps.id = psft.pokemon_species_id
      WHERE
        p.id = ? AND
        psft.language_id = 9
      ORDER BY psft.version_id DESC
      LIMIT 1;
  ''';

    final result = await database.rawQuery(query, [id]);
    return result
        .map(
          (row) => PokemonDetailModel(
            id: row['id']! as int,
            name: row['name']! as String,
            height: row['height']! as int,
            weight: row['weight']! as int,
            genderRate: row['gender_rate']! as int,
            captureRate: row['capture_rate']! as int,
            baseHappiness: row['base_happiness']! as int,
            isBaby: row['is_baby']! as int == 1,
            hatchCounter: row['hatch_counter']! as int,
            description: row['description']! as String,
          ),
        )
        .single;
  }

  @override
  Future<List<PokemonAbilityModel>> getPokemonAbilities({
    required int id,
  }) async {
    const query = '''
      SELECT
        pa.is_hidden,
        an.name,
        aft.flavor_text AS 'description',
        gn.name AS 'generation'
      FROM
        pokemon_v2_pokemonability pa
      JOIN
        pokemon_v2_ability a
        ON pa.ability_id = a.id
      JOIN 
        pokemon_v2_abilityname an
        ON a.id = an.ability_id
      JOIN
        pokemon_v2_abilityflavortext aft
        ON a.id = aft.ability_id
      JOIN
        pokemon_v2_generation g
        ON a.generation_id = g.id 
      JOIN
        pokemon_v2_generationname gn
        ON g.id = gn.generation_id 
      WHERE
        pa.pokemon_id = ? AND
        an.language_id = 9 AND
        gn.language_id = 9 AND
        aft.language_id = 9 AND
        aft.version_group_id = (
          SELECT 
            max(version_group_id) 
          FROM
            pokemon_v2_abilityflavortext aft
          JOIN
            pokemon_v2_ability a
            ON aft.ability_id = a.id
          JOIN
            pokemon_v2_pokemonability pa
            ON a.id = pa.ability_id
          WHERE
            pa.pokemon_id = ?
        );
    ''';

    final result = await database.rawQuery(query, [id, id]);
    return result
        .map(
          (row) => PokemonAbilityModel(
            isHidden: row['is_hidden']! as int == 1,
            name: row['name']! as String,
            description: row['description']! as String,
            generation: row['generation']! as String,
          ),
        )
        .toList();
  }

  @override
  Future<List<PokemonStatModel>> getPokemonStats({required int id}) async {
    const query = '''
      SELECT
        statn.name,
        pstat.base_stat,
        pstat.effort
      FROM
        pokemon_v2_pokemonstat pstat
      JOIN
        pokemon_v2_pokemon p
        ON pstat.pokemon_id = p.id 
      JOIN
        pokemon_v2_stat stat
        ON pstat.stat_id = stat.id
      JOIN
        pokemon_v2_statname statn
        ON stat.id = statn.stat_id
      WHERE
        p.id = ? AND
        statn.language_id = 9;
    ''';

    final result = await database.rawQuery(query, [id]);
    return result
        .map(
          (row) => PokemonStatModel(
            name: row['name']! as String,
            value: row['base_stat']! as int,
            effortValue: row['effort']! as int,
          ),
        )
        .toList();
  }
}
