import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_database.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_local_source.dart';
import 'package:flutterdex/data/models/pokemon_detail_model.dart';
import 'package:flutterdex/data/models/pokemon_with_stat_model.dart';
import 'package:flutterdex/data/models/pokemon_with_type_model.dart';

LazyDatabase _openTestConnection(File dbFile) {
  return LazyDatabase(() async {
    // extract the pre-populated database file from assets
    if (!await dbFile.exists()) {
      final blob = await rootBundle.load('assets/pokeapi.sqlite3');
      final buffer = blob.buffer;
      await dbFile.writeAsBytes(
          buffer.asUint8List(blob.offsetInBytes, blob.lengthInBytes));
    }
    return NativeDatabase.createInBackground(dbFile);
  });
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final dbFile = File('pokeapi_test.db');
  late PokeApiDatabase pokeApiDatabase;
  late PokeApiLocalSource pokeApiLocalSource;

  setUp(() {
    pokeApiDatabase = PokeApiDatabase(executor: _openTestConnection(dbFile));
    pokeApiLocalSource =
        PokeApiSqliteLocalSourceImpl(database: pokeApiDatabase);
  });

  final expectedFirstPokemon = PokemonWithTypeModel(
    pokemon: const PokemonModel(
      id: 1,
      name: 'bulbasaur',
      order: 1,
      height: 7,
      weight: 69,
      isDefault: true,
      pokemonSpeciesId: 1,
      baseExperience: 64,
    ),
    type: const TypeModel(
      id: 12,
      name: 'grass',
    ),
  );

  test('getPokemons', () async {
    // nothing to arrange
    // act
    final result = await pokeApiLocalSource.getPokemons();

    // assert
    expect(result, isA<List<PokemonModel>>());
    expect(result.first, expectedFirstPokemon.pokemon);
  });

  test('getPokemonsWithType', () async {
    // nothing to arrange
    // act
    final result = await pokeApiLocalSource.getPokemonsWithType();

    // assert
    expect(result, isA<List<PokemonWithTypeModel>>());
    expect(result.first.pokemon, expectedFirstPokemon.pokemon);
    expect(result.first.type, expectedFirstPokemon.type);
  });

  test('getPokemonDetail', () async {
    // nothing to arrange
    // act
    final result = await pokeApiLocalSource.getPokemon(id: 1);

    // assert
    expect(result, isA<PokemonDetailModel>());
  });

  test('getPokemonWithStats', () async {
    // nothing to arrange
    // act
    final result = await pokeApiLocalSource.getPokemonWithStats(id: 1);

    // assert
    expect(result, isA<List<PokemonWithStatModel>>());
  });

  tearDown(() {
    pokeApiDatabase.close().then((_) => dbFile.deleteSync());
  });
}
