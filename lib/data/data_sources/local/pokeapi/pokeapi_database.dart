import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/services.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/tables/pokemon_types.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/tables/pokemons.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/tables/types.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

part 'pokeapi_database.g.dart';

@DriftDatabase(tables: [
  Pokemons,
  PokemonTypes,
  Types,
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
    final appDirectory = await getApplicationDocumentsDirectory();
    final file = File(p.join(appDirectory.path, 'pokeapi.sqlite3'));

    if (!await file.exists()) {
      // write the pre-populated database file from assets

      // copy db archive from assets
      const archiveDbFileName = 'pokeapi.sqlite3.zip';
      final tempFolder = await getTemporaryDirectory();
      final tempFile = File(p.join(tempFolder.path, archiveDbFileName));
      final blob = await rootBundle.load('assets/$archiveDbFileName');
      final buffer = blob.buffer;
      await tempFile.writeAsBytes(
          buffer.asUint8List(blob.offsetInBytes, blob.lengthInBytes));

      // extract db from archive
      await extractFileToDisk(tempFile.path, appDirectory.path);

      // delete temp file
      await tempFile.delete();
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
