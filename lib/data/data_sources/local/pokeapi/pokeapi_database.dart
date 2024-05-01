import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/services.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/tables/abilities.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/tables/ability_flavor_texts.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/tables/generations.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/tables/pokemon_abilities.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/tables/pokemon_species.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/tables/pokemon_species_flavor_text.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/tables/pokemon_species_names.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/tables/pokemon_stats.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/tables/pokemon_types.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/tables/pokemons.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/tables/stats.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/tables/types.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

part 'pokeapi_database.g.dart';

@DriftDatabase(tables: [
  Pokemons,
  PokemonAbilities,
  PokemonSpecies,
  PokemonSpeciesNames,
  PokemonSpeciesFlavorText,
  PokemonTypes,
  PokemonStats,
  Abilities,
  AbilityFlavorTexts,
  Generations,
  Types,
  Stats,
])
class PokeApiDatabase extends _$PokeApiDatabase {
  PokeApiDatabase({QueryExecutor? executor})
      : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    // put pokeapi.db in app's documents directory
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'pokeapi.db'));

    if (!await file.exists()) {
      // extract the pre-populated database file from assets
      final blob = await rootBundle.load('assets/pokeapi.sqlite3');
      final buffer = blob.buffer;
      await file.writeAsBytes(
          buffer.asUint8List(blob.offsetInBytes, blob.lengthInBytes));
    }

    // work around for limitations on old Android versions
    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }

    // make sqlite3 pick a more suitable location for temporary files - the
    // one from the system may be inaccessible due to sandboxing.
    final cachebase = (await getTemporaryDirectory()).path;
    // Android can't access /tmp, which sqlite3 would try by default.
    // explicitly tell it about the correct temporary directory.
    sqlite3.tempDirectory = cachebase;

    return NativeDatabase.createInBackground(file);
  });
}
