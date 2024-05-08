import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi_vanilla/pokeapi_local_source.dart';
import 'package:flutterdex/data/models/vanilla/pokemon_basic_model.dart';
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

  tearDown(() {
    database.close();
  });
}
