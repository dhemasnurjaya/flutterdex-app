import 'package:drift/drift.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_database.dart';
import 'package:flutterdex/data/models/pokemon_with_ability_model.dart';
import 'package:flutterdex/data/models/pokemon_with_species_model.dart';
import 'package:flutterdex/data/models/pokemon_with_stat_model.dart';
import 'package:flutterdex/data/models/pokemon_with_type_model.dart';

abstract class PokeApiLocalSource {
  Future<List<PokemonModel>> getPokemons({
    int limit = 20,
    int offset = 0,
  });

  Future<List<PokemonWithTypeModel>> getPokemonsWithType({
    int limit = 20,
    int offset = 0,
  });

  Future<PokemonWithSpeciesModel> getPokemonWithSpecies({required int id});

  Future<List<PokemonWithStatModel>> getPokemonWithStats({required int id});

  Future<List<PokemonWithAbilityModel>> getPokemonWithAbilities(
      {required int id});
}

class PokeApiSqliteLocalSourceImpl implements PokeApiLocalSource {
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
    query.where(
        pokemonSubquery.ref(database.pokemons.id).isSmallerOrEqualValue(10000));

    final result = query
        .map((row) => PokemonWithTypeModel(
              pokemon: row.readTable(pokemonSubquery),
              type: row.readTable(database.types),
            ))
        .get();

    return result;
  }

  @override
  Future<PokemonWithSpeciesModel> getPokemonWithSpecies(
      {required int id}) async {
    final pokemonSubquery = Subquery(
      database.select(database.pokemons)..where((tbl) => tbl.id.equals(id)),
      'p',
    );

    final query = database.select(pokemonSubquery).join([
      leftOuterJoin(
        database.pokemonSpecies,
        pokemonSubquery
            .ref(database.pokemons.pokemonSpeciesId)
            .equalsExp(database.pokemonSpecies.id),
      ),
      leftOuterJoin(
        database.pokemonSpeciesFlavorText,
        database.pokemonSpeciesFlavorText.pokemonSpeciesId
            .equalsExp(database.pokemonSpecies.id),
      ),
    ]);
    // 9 = English, 34 = Pokemon Shield
    query.where(database.pokemonSpeciesFlavorText.languageId.equals(9));
    query.where(database.pokemonSpeciesFlavorText.versionId.equals(34));

    final result = query
        .map((row) => PokemonWithSpeciesModel(
              pokemon: row.readTable(pokemonSubquery),
              species: row.readTable(database.pokemonSpecies),
              flavorText: row.readTable(database.pokemonSpeciesFlavorText),
            ))
        .getSingle();

    return result;
  }

  @override
  Future<List<PokemonWithStatModel>> getPokemonWithStats(
      {required int id}) async {
    final pokemonSubquery = Subquery(
      database.select(database.pokemons)..where((tbl) => tbl.id.equals(id)),
      'p',
    );

    final query = database.select(pokemonSubquery).join([
      leftOuterJoin(
        database.pokemonStats,
        database.pokemonStats.pokemonId
            .equalsExp(pokemonSubquery.ref(database.pokemons.id)),
      ),
      leftOuterJoin(
        database.stats,
        database.stats.id.equalsExp(database.pokemonStats.statId),
      ),
    ]);

    final result = query
        .map((row) => PokemonWithStatModel(
              pokemon: row.readTable(pokemonSubquery),
              stat: row.readTable(database.stats),
              pokemonStat: row.readTable(database.pokemonStats),
            ))
        .get();

    return result;
  }

  @override
  Future<List<PokemonWithAbilityModel>> getPokemonWithAbilities(
      {required int id}) async {
    final pokemonSubquery = Subquery(
      database.select(database.pokemons)..where((tbl) => tbl.id.equals(id)),
      'p',
    );

    final query = database.select(pokemonSubquery).join([
      leftOuterJoin(
        database.pokemonAbilities,
        database.pokemonAbilities.pokemonId
            .equalsExp(pokemonSubquery.ref(database.pokemons.id)),
      ),
      leftOuterJoin(
        database.abilities,
        database.abilities.id.equalsExp(database.pokemonAbilities.abilityId),
      ),
      leftOuterJoin(
        database.abilityFlavorTexts,
        database.abilityFlavorTexts.abilityId.equalsExp(database.abilities.id),
      ),
      leftOuterJoin(
        database.generations,
        database.generations.id.equalsExp(database.abilities.generationId),
      ),
    ]);
    // 9 = English
    query.where(database.abilityFlavorTexts.languageId.equals(9));
    query.where(database.pokemonAbilities.isHidden.equals(false));

    final result = query
        .map((row) => PokemonWithAbilityModel(
              pokemon: row.readTable(pokemonSubquery),
              ability: row.readTable(database.abilities),
              abilityFlavorText: row.readTable(database.abilityFlavorTexts),
              generation: row.readTable(database.generations),
            ))
        .get();

    return result;
  }
}
