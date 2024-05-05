import 'package:drift/drift.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_database.dart';
import 'package:flutterdex/data/models/pokemon_with_evolution_model.dart';
import 'package:flutterdex/data/models/pokemon_with_ability_model.dart';
import 'package:flutterdex/data/models/pokemon_with_species_model.dart';
import 'package:flutterdex/data/models/pokemon_with_stat_model.dart';
import 'package:flutterdex/data/models/pokemon_with_type_model.dart';

abstract class PokeApiLocalSource {
  Future<List<PokemonSpeciesWithTypeModel>> getPokemonSpeciesAndTypes({
    int limit = 20,
    int offset = 0,
  });

  Future<PokemonModel> getPokemon({required int id});

  Future<PokemonWithSpeciesModel> getPokemonSpecies({required int id});

  Future<List<PokemonWithEvolutionModel>> getPokemonSpeciesEvolutions(
      {required int id});

  Future<List<PokemonWithStatModel>> getPokemonStats({required int id});

  Future<List<PokemonWithAbilityModel>> getPokemonAbilities({required int id});
}

class PokeApiSqliteLocalSourceImpl implements PokeApiLocalSource {
  final PokeApiDatabase database;

  PokeApiSqliteLocalSourceImpl({required this.database});

  @override
  Future<List<PokemonSpeciesWithTypeModel>> getPokemonSpeciesAndTypes({
    int limit = 20,
    int offset = 0,
  }) async {
    final pokemonSpeciesSubquery = Subquery(
      database.select(database.pokemonSpecies)..limit(limit, offset: offset),
      'ps',
    );

    final query = database.select(pokemonSpeciesSubquery).join([
      leftOuterJoin(
        database.pokemonSpeciesNames,
        database.pokemonSpeciesNames.pokemonSpeciesId
            .equalsExp(pokemonSpeciesSubquery.ref(database.pokemonSpecies.id)),
      ),
      leftOuterJoin(
        database.pokemonTypes,
        database.pokemonTypes.pokemonId
            .equalsExp(pokemonSpeciesSubquery.ref(database.pokemonSpecies.id)),
      ),
      leftOuterJoin(
        database.types,
        database.types.id.equalsExp(database.pokemonTypes.typeId),
      ),
    ]);
    // 9 = English
    query.where(database.pokemonSpeciesNames.languageId.equals(9));

    final result = query
        .map((row) => PokemonSpeciesWithTypeModel(
              pokemonSpecies: row.readTable(pokemonSpeciesSubquery),
              pokemonSpeciesName: row.readTable(database.pokemonSpeciesNames),
              type: row.readTable(database.types),
            ))
        .get();

    return result;
  }

  @override
  Future<PokemonModel> getPokemon({required int id}) async {
    final result = await (database.select(database.pokemons)
          ..where((tbl) => tbl.id.equals(id)))
        .getSingle();
    return result;
  }

  @override
  Future<PokemonWithSpeciesModel> getPokemonSpecies({required int id}) async {
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
    // 9 = English
    query.where(database.pokemonSpeciesFlavorText.languageId.equals(9));
    query.orderBy([
      OrderingTerm.asc(database.pokemonSpeciesFlavorText.versionId),
    ]);
    query.limit(1);

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
  Future<List<PokemonWithEvolutionModel>> getPokemonSpeciesEvolutions(
      {required int id}) async {
    final baseSpecies = await (database.select(database.pokemonSpecies)
          ..where((tbl) => tbl.id.equals(id))
          ..limit(1))
        .getSingle();

    Future<PokemonWithEvolutionModel?> getEvolution(
      Subquery<PokemonSpeciesModel> speciesSubquery,
      GeneratedColumn<int> speciesColumn,
      GeneratedColumn<int> speciesColumnEqualTo,
    ) async {
      final query = database.select(speciesSubquery).join([
        leftOuterJoin(
          database.pokemonEvolutions,
          speciesSubquery.ref(speciesColumn).equalsExp(speciesColumnEqualTo),
        ),
        leftOuterJoin(
          database.evolutionTriggers,
          database.pokemonEvolutions.evolutionTriggerId
              .equalsExp(database.evolutionTriggers.id),
        ),
      ]);
      query.limit(1);

      return await query
          .map((row) => PokemonWithEvolutionModel(
                species: row.readTable(speciesSubquery),
                evolution: row.readTableOrNull(database.pokemonEvolutions),
                evolutionTrigger:
                    row.readTableOrNull(database.evolutionTriggers),
              ))
          .getSingleOrNull();
    }

    final evolutions = <PokemonWithEvolutionModel>[];

    // current evolution
    final currentEvolution = await getEvolution(
      Subquery(
        database.select(database.pokemonSpecies)
          ..where((tbl) => tbl.id.equals(baseSpecies.id)),
        'ps',
      ),
      database.pokemonSpecies.id,
      database.pokemonEvolutions.evolvedSpeciesId,
    );
    if (currentEvolution != null) {
      evolutions.add(currentEvolution);
    }

    // find forward evolutions
    var baseSpeciesId = baseSpecies.id;
    while (true) {
      final result = await getEvolution(
        Subquery(
          database.select(database.pokemonSpecies)
            ..where((tbl) => tbl.evolvesFromSpeciesId.equals(baseSpeciesId)),
          'ps',
        ),
        database.pokemonSpecies.id,
        database.pokemonEvolutions.evolvedSpeciesId,
      );

      if (result == null) {
        break;
      }

      evolutions.add(result);
      baseSpeciesId = result.species.id;
    }

    // find backward evolutions
    var evolveFromSpeciesId = baseSpecies.evolvesFromSpeciesId;
    while (true) {
      if (evolveFromSpeciesId == null) {
        break;
      }

      final result = await getEvolution(
        Subquery(
          database.select(database.pokemonSpecies)
            ..where((tbl) => tbl.id.equals(evolveFromSpeciesId!)),
          'ps',
        ),
        database.pokemonSpecies.evolvesFromSpeciesId,
        database.pokemonEvolutions.evolvedSpeciesId,
      );

      if (result == null) {
        break;
      }

      evolutions.add(result);
      evolveFromSpeciesId = result.species.evolvesFromSpeciesId;
    }

    // sort by id ascending
    evolutions.sort((a, b) => a.species.id.compareTo(b.species.id));

    return evolutions;
  }

  @override
  Future<List<PokemonWithStatModel>> getPokemonStats({required int id}) async {
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
  Future<List<PokemonWithAbilityModel>> getPokemonAbilities(
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
    // 9 = English, 25 = scarlet-violet (latest)
    query.where(database.abilityFlavorTexts.languageId.equals(9));
    query.where(database.abilityFlavorTexts.versionGroupId.equals(25));
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
