import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_local_source.dart';
import 'package:flutterdex/data/models/pokemon_ability_model.dart';
import 'package:flutterdex/data/models/pokemon_basic_model.dart';
import 'package:flutterdex/data/models/pokemon_detail_model.dart';
import 'package:flutterdex/data/models/pokemon_stat_model.dart';
import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

Future<Database> _openConnection(File dbFile) async {
  // Check if the database exists
  var exists = await dbFile.exists();
  final dbPath = dbFile.absolute.path;

  if (!exists) {
    // Copy from asset
    ByteData data = await rootBundle.load(url.join(
      'assets',
      'pokeapi.sqlite3',
    ));
    List<int> bytes = data.buffer.asUint8List(
      data.offsetInBytes,
      data.lengthInBytes,
    );

    // Write and flush the bytes written
    await File(dbPath).writeAsBytes(bytes, flush: true);
  }

  // open the database
  sqfliteFfiInit();
  return await databaseFactoryFfi.openDatabase(
    dbPath,
    options: OpenDatabaseOptions(
      readOnly: true,
      singleInstance: true,
    ),
  );
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final dbFile = File('pokeapi_test.db');
  late Database database;
  late PokeapiLocalSource dataSource;

  setUp(() {
    return Future(() async {
      database = await _openConnection(dbFile);
      dataSource = PokeapiLocalSourceImpl(database: database);
    });
  });

  test('getPokemonList', () async {
    // arrange
    const tLimit = 3;
    const tOffset = 0;
    const tExpectedPokemonNameList = [
      'bulbasaur',
      'bulbasaur',
      'ivysaur',
      'ivysaur',
      'venusaur',
      'venusaur',
    ];

    // act
    final result = await dataSource.getPokemonList(
      limit: tLimit,
      offset: tOffset,
    );

    // assert
    expect(result, isA<List<PokemonBasicModel>>());
    expect(
      result.map((e) => e.name),
      tExpectedPokemonNameList,
    );
  });

  test('getPokemon', () async {
    // arrange
    const tId = 1;
    const tExpectedPokemonName = 'bulbasaur';

    // act
    final result = await dataSource.getPokemon(id: tId);

    // assert
    expect(result, isA<PokemonDetailModel>());
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
}
