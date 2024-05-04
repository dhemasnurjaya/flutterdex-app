import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_database.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_local_source.dart';
import 'package:flutterdex/data/models/pokemon_with_ability_model.dart';
import 'package:flutterdex/data/models/pokemon_with_species_model.dart';
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

  test('getPokemon', () async {
    // arrange
    const pokemonId = 1;
    const expectedPokemon = PokemonModel(
      id: pokemonId,
      name: 'bulbasaur',
      order: 1,
      height: 7,
      weight: 69,
      isDefault: true,
      pokemonSpeciesId: 1,
      baseExperience: 64,
    );

    // act
    final result = await pokeApiLocalSource.getPokemon(id: pokemonId);

    // assert
    expect(result, isA<PokemonModel>());
    expect(result, expectedPokemon);
  });

  test('getPokemonAbilities', () async {
    // nothing to arrange
    // act
    final result = await pokeApiLocalSource.getPokemonAbilities(id: 1);

    // assert
    expect(result, isA<List<PokemonWithAbilityModel>>());
  });

  test('getPokemonSpeciesAndTypes', () async {
    // arrange
    const expectedPokemonSpecies = PokemonSpeciesModel(
      id: 1,
      name: 'bulbasaur',
      order: 1,
      genderRate: 1,
      captureRate: 45,
      baseHappiness: 50,
      isBaby: false,
      hatchCounter: 20,
      hasGenderDifferences: false,
      formsSwitchable: false,
      evolutionChainId: 1,
      generationId: 1,
      growthRateId: 4,
      pokemonColorId: 5,
      pokemonHabitatId: 3,
      pokemonShapeId: 8,
      isLegendary: false,
      isMythical: false,
      evolvesFromSpeciesId: null,
    );
    const expectedType = TypeModel(
      id: 12,
      name: 'grass',
    );

    // act
    final result = await pokeApiLocalSource.getPokemonSpeciesAndTypes();

    // assert
    expect(result, isA<List<PokemonSpeciesWithTypeModel>>());
    expect(result.first.pokemonSpecies, expectedPokemonSpecies);
    expect(result.first.type, expectedType);
  });

  test('getPokemonSpecies', () async {
    // nothing to arrange
    // act
    final result = await pokeApiLocalSource.getPokemonSpecies(id: 1);

    // assert
    expect(result, isA<PokemonWithSpeciesModel>());
  });

  test('getPokemonStats', () async {
    // nothing to arrange
    // act
    final result = await pokeApiLocalSource.getPokemonStats(id: 1);

    // assert
    expect(result, isA<List<PokemonWithStatModel>>());
  });

  tearDown(() {
    pokeApiDatabase.close().then((_) => dbFile.deleteSync());
  });
}
