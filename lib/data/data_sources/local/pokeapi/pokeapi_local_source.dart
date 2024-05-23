import 'package:flutterdex/data/models/pokemon_ability_model.dart';
import 'package:flutterdex/data/models/pokemon_egg_group_model.dart';
import 'package:flutterdex/data/models/pokemon_evolution_model.dart';
import 'package:flutterdex/data/models/pokemon_model.dart';
import 'package:flutterdex/data/models/pokemon_species_model.dart';
import 'package:flutterdex/data/models/pokemon_stat_model.dart';
import 'package:sqflite/sqflite.dart';

abstract class PokeapiLocalSource {
  Future<List<PokemonModel>> getPokemonList({
    String searchQuery = '',
    int limit = 20,
    int offset = 0,
  });

  Future<PokemonModel> getPokemon({
    required int id,
  });

  Future<PokemonSpeciesModel> getPokemonSpecies({required int id});

  Future<List<PokemonStatModel>> getPokemonStats({required int id});

  Future<List<PokemonAbilityModel>> getPokemonAbilities({required int id});

  Future<List<PokemonEggGroupModel>> getPokemonEggGroups({required int id});

  Future<List<PokemonEvolutionModel>> getPokemonEvolutions({required int id});
}

class PokeapiLocalSourceImpl implements PokeapiLocalSource {
  PokeapiLocalSourceImpl({
    required this.database,
  });
  final Database database;

  @override
  Future<List<PokemonModel>> getPokemonList({
    String searchQuery = '',
    int limit = 20,
    int offset = 0,
  }) async {
    const query = '''
      SELECT
        ps.id,
        psn.name,
        GROUP_CONCAT(t.name) AS types,
        psn.genus
      FROM
        pokemon_v2_pokemonspecies ps
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
        (
          ps.id = ? OR
          psn.name LIKE ?
        ) AND
        psn.language_id = 9
      GROUP BY 
        ps.id
      LIMIT ?
      OFFSET ?;
    ''';

    final queryResult = await database.rawQuery(query, [
      searchQuery,
      '%$searchQuery%',
      limit,
      offset,
    ]);
    final result = queryResult.map(
      (row) => PokemonModel(
        id: row['id']! as int,
        name: row['name']! as String,
        types: row['types']! as String,
        genus: row['genus']! as String,
      ),
    );
    return result.toList();
  }

  @override
  Future<PokemonModel> getPokemon({
    required int id,
  }) async {
    const query = '''
      SELECT
        ps.id,
        psn.name,
        GROUP_CONCAT(t.name) AS types,
        psn.genus
      FROM
        pokemon_v2_pokemonspecies ps
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
        ps.id = ? AND
        psn.language_id = 9
      GROUP BY
        ps.id
      LIMIT 1;
    ''';

    final queryResult = await database.rawQuery(query, [id]);
    final result = queryResult.map(
      (row) => PokemonModel(
        id: row['id']! as int,
        name: row['name']! as String,
        types: row['type']! as String,
        genus: row['genus']! as String,
      ),
    );
    return result.single;
  }

  @override
  Future<PokemonSpeciesModel> getPokemonSpecies({required int id}) async {
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
        psft.flavor_text AS description,
        pgrd.description AS growth_rate
      FROM
        pokemon_v2_pokemonspecies ps
      JOIN
        pokemon_v2_pokemon p
        ON ps.id = p.pokemon_species_id
      JOIN
        pokemon_v2_pokemonspeciesflavortext psft
        ON ps.id = psft.pokemon_species_id
      JOIN
        pokemon_v2_growthrate pgr
        ON ps.growth_rate_id = pgr.id
      JOIN
        pokemon_v2_growthratedescription pgrd
        ON pgr.id - pgrd.growth_rate_id
      WHERE
        p.id = ? AND
        psft.language_id = 9 AND
        pgrd.language_id = 9
      ORDER BY psft.version_id DESC
      LIMIT 1;
  ''';

    final queryResult = await database.rawQuery(query, [id]);
    final result = queryResult.map(
      (row) => PokemonSpeciesModel(
        id: row['id']! as int,
        name: row['name']! as String,
        height: row['height']! as int,
        weight: row['weight']! as int,
        genderRate: row['gender_rate']! as int,
        captureRate: row['capture_rate']! as int,
        baseHappiness: row['base_happiness'] as int?,
        isBaby: row['is_baby']! as int == 1,
        hatchCounter: row['hatch_counter'] as int?,
        description: row['description']! as String,
        growthRate: row['growth_rate']! as String,
      ),
    );

    return result.single;
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

    final queryResult = await database.rawQuery(query, [id, id]);
    final result = queryResult.map(
      (row) => PokemonAbilityModel(
        isHidden: row['is_hidden']! as int == 1,
        name: row['name']! as String,
        description: row['description']! as String,
        generation: row['generation']! as String,
      ),
    );
    return result.toList();
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

    final queryResult = await database.rawQuery(query, [id]);
    final result = queryResult.map(
      (row) => PokemonStatModel(
        name: row['name']! as String,
        value: row['base_stat']! as int,
        effortValue: row['effort']! as int,
      ),
    );
    return result.toList();
  }

  @override
  Future<List<PokemonEggGroupModel>> getPokemonEggGroups({
    required int id,
  }) async {
    const query = '''
      SELECT
        egn.name
      FROM
        pokemon_v2_pokemonegggroup peg
      JOIN
        pokemon_v2_egggroup eg
        ON peg.egg_group_id = eg.id
      JOIN
        pokemon_v2_egggroupname egn
        ON eg.id = egn.egg_group_id
      WHERE
        peg.pokemon_species_id = ? AND
        egn.language_id = 9;
    ''';

    final queryResult = await database.rawQuery(query, [id]);
    final result = queryResult.map(
      (row) => PokemonEggGroupModel(
        name: row['name']! as String,
      ),
    );
    return result.toList();
  }

  @override
  Future<List<PokemonEvolutionModel>> getPokemonEvolutions({
    required int id,
  }) async {
    const query = '''
      SELECT
        ps.id,
        psn.name,
        GROUP_CONCAT(DISTINCT t.name) AS types,
        psn.genus,
        ps.is_baby,
        ps.evolves_from_species_id,
        GROUP_CONCAT(DISTINCT etj.name) AS evolution_triggers,
        pe.min_level,
        pe.time_of_day,
        pe.min_happiness,
        pe.min_affection,
        pe.min_beauty,
        pe.relative_physical_stats,
        pe.needs_overworld_rain,
        pe.turn_upside_down,
        pe.gender_id,
        pe.known_move_id,
        pi_held.name as held_item_name,
        pi_evolution.name AS evolution_item_name
      FROM
        pokemon_v2_pokemonspecies ps
      JOIN
        pokemon_v2_pokemonspeciesname psn
        ON ps.id = psn.pokemon_species_id
      JOIN 
        pokemon_v2_pokemontype pt
        ON ps.id = pt.pokemon_id
      JOIN
        pokemon_v2_type t
        ON pt.type_id = t.id
      LEFT JOIN
        pokemon_v2_pokemonevolution pe
        ON ps.id = pe.evolved_species_id
      LEFT JOIN
        (
          SELECT
            et.id,
            etn.name 
          FROM
            pokemon_v2_evolutiontrigger et
          JOIN
            pokemon_v2_evolutiontriggername etn
            ON et.id = etn.evolution_trigger_id
          WHERE
            etn.language_id  = 9
        ) etj
        ON pe.evolution_trigger_id = etj.id
      LEFT JOIN
        (
          SELECT
            pi.id,
            pin.name
          FROM
            pokemon_v2_item pi
          JOIN
            pokemon_v2_itemname pin
            ON pi.id = pin.item_id
          WHERE
            pin.language_id = 9
        ) pi_held
        ON pe.held_item_id = pi_held.id
      LEFT JOIN
        (
          SELECT
            pi.id,
            pin.name
          FROM
            pokemon_v2_item pi
          JOIN
            pokemon_v2_itemname pin
            ON pi.id = pin.item_id
          WHERE
            pin.language_id = 9
        ) pi_evolution
        ON pe.evolution_item_id = pi_evolution.id
      WHERE
        evolution_chain_id = 
        (
          SELECT 
            ec.id
          FROM 
            pokemon_v2_pokemonspecies sp
          JOIN
            pokemon_v2_evolutionchain ec
          ON
            sp.evolution_chain_id = ec.id
          WHERE
            sp.id = ?
        ) AND
        psn.language_id = 9
      GROUP BY 
        ps.id
      ORDER BY 
        ps.is_baby ASC,
        psn.id DESC;
    ''';

    final queryResult = await database.rawQuery(query, [id]);
    final result = queryResult.map(
      (row) => PokemonEvolutionModel(
        id: row['id']! as int,
        name: row['name']! as String,
        types: row['types']! as String,
        genus: row['genus']! as String,
        isBaby: row['is_baby']! as int == 1,
        evolutionTriggers: row['evolution_triggers'] as String?,
        evolvesFromSpeciesId: row['evolves_from_species_id'] as int?,
        minLevel: row['min_level'] as int?,
        heldItem: row['held_item_name'] as String?,
        evolutionItem: row['evolution_item_name'] as String?,
        timeOfDay: row['time_of_day'] as String?,
        minHappiness: row['min_happiness'] as int?,
        minAffection: row['min_affection'] as int?,
        minBeauty: row['min_beauty'] as int?,
        relativePhysicalStats: row['relative_physical_stats'] as int?,
        needsOverworldRain: (row['needs_overworld_rain'] as int?) == 1,
        turnUpsideDown: (row['turn_upside_down'] as int?) == 1,
      ),
    );
    return result.toList();
  }
}
