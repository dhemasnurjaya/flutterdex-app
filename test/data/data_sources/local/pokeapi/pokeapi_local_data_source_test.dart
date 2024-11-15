import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_local_data_source.dart';
import 'package:flutterdex/data/models/pokemon_ability_model.dart';
import 'package:flutterdex/data/models/pokemon_evolution_model.dart';
import 'package:flutterdex/data/models/pokemon_model.dart';
import 'package:flutterdex/data/models/pokemon_species_model.dart';
import 'package:flutterdex/data/models/pokemon_stat_model.dart';
import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

Future<Database> _openConnection(File dbFile) async {
  // Check if the database exists
  final exists = dbFile.existsSync();
  final dbPath = dbFile.absolute.path;

  if (!exists) {
    // Copy from asset
    final data = await rootBundle.load(
      url.join(
        'assets',
        'pokeapi.sqlite3',
      ),
    );
    final List<int> bytes = data.buffer.asUint8List(
      data.offsetInBytes,
      data.lengthInBytes,
    );

    // Write and flush the bytes written
    await File(dbPath).writeAsBytes(bytes, flush: true);
  }

  // open the database
  sqfliteFfiInit();
  return databaseFactoryFfi.openDatabase(
    dbPath,
    options: OpenDatabaseOptions(
      readOnly: true,
    ),
  );
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final dbFile = File('pokeapi_test.db');
  late Database database;
  late PokeapiLocalDataSource dataSource;

  setUp(() {
    return Future(() async {
      database = await _openConnection(dbFile);
      dataSource = PokeapiLocalDataSourceImpl(database: database);
    });
  });

  test('getPokemonList', () async {
    // arrange
    const tLimit = 3;
    const tExpectedPokemonNameList = [
      'Bulbasaur',
      'Ivysaur',
      'Venusaur',
    ];

    // act
    final result = await dataSource.getPokemonList(
      limit: tLimit,
    );

    // assert
    expect(result, isA<List<PokemonModel>>());
    expect(
      result.map((e) => e.name).toSet(),
      tExpectedPokemonNameList,
    );
  });

  test('getPokemonListWithQuery', () async {
    // arrange
    const tSearchQuery = 'bul';
    const tExpectedPokemonNames = [
      'Bulbasaur',
      'Snubbull',
      'Granbull',
      'Tapu Bulu',
      'Tadbulb',
    ];

    // act
    final result = await dataSource.getPokemonList(
      searchQuery: tSearchQuery,
    );

    // assert
    expect(result, isA<List<PokemonModel>>());
    expect(
      result.map((e) => e.name).toSet(),
      tExpectedPokemonNames,
    );
  });

  test('getPokemonSpecies', () async {
    // arrange
    const tId = 1;
    const tExpectedPokemonName = 'bulbasaur';

    // act
    final result = await dataSource.getPokemonSpecies(id: tId);

    // assert
    expect(result, isA<PokemonSpeciesModel>());
    expect(result.name, tExpectedPokemonName);
  });

  test('getPokemonStats', () async {
    // arrange
    const tId = 1;

    // act
    final result = await dataSource.getPokemonStats(id: tId);

    // assert
    expect(result, isA<List<PokemonStatModel>>());
    expect(result.length, 6);
  });

  test('getPokemonAbilities', () async {
    // arrange
    const tId = 1;
    final tExpectedAbilityNames = [
      'Overgrow',
      'Chlorophyll',
    ];

    // act
    final result = await dataSource.getPokemonAbilities(id: tId);

    // assert
    expect(result, isA<List<PokemonAbilityModel>>());
    expect(result.map((e) => e.name), tExpectedAbilityNames);
  });

  tearDown(() {
    database.close();
  });

  test('getPokemonEvolutions', () async {
    // arrange
    const tId = 265;
    final tExpectedPokemonNames = [
      'Dustox',
      'Cascoon',
      'Beautifly',
      'Silcoon',
      'Wurmple',
    ];

    // act
    final result = await dataSource.getPokemonEvolutions(id: tId);

    // assert
    expect(result, isA<List<PokemonEvolutionModel>>());
    expect(result.map((e) => e.name).toSet(), tExpectedPokemonNames);
  });
}
