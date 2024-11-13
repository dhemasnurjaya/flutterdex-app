import 'package:flutterdex/data/data_sources/local/pokeapi/queries/_queries.dart';
import 'package:flutterdex/data/models/pokemon_ability_model.dart';
import 'package:flutterdex/data/models/pokemon_egg_group_model.dart';
import 'package:flutterdex/data/models/pokemon_evolution_model.dart';
import 'package:flutterdex/data/models/pokemon_model.dart';
import 'package:flutterdex/data/models/pokemon_species_model.dart';
import 'package:flutterdex/data/models/pokemon_stat_model.dart';
import 'package:sqflite/sqflite.dart';

abstract class PokeapiLocalDataSource {
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

class PokeapiLocalDataSourceImpl implements PokeapiLocalDataSource {
  PokeapiLocalDataSourceImpl({
    required this.database,
  });
  final Database database;

  @override
  Future<List<PokemonModel>> getPokemonList({
    String searchQuery = '',
    int limit = 20,
    int offset = 0,
  }) async {
    final query = readQuery('get_pokemon_list');
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
    final query = readQuery('get_pokemon');
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
    final query = readQuery('get_pokemon_species');
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
    final query = readQuery('get_pokemon_abilities');
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
    final query = readQuery('get_pokemon_stats');
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
    final query = readQuery('get_pokemon_egg_groups');
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
    final query = readQuery('get_pokemon_evolutions');
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
