import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class PokeapiDatabase {
  Future<Database> get I async => _openConnection();

  Future<Database> _openConnection() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'pokeapi.db');

    // Check if the database exists
    final exists = await databaseExists(path);

    if (!exists) {
      // Make sure the parent directory exists
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (_) {}

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
      await File(path).writeAsBytes(bytes, flush: true);
    }

    // open the database
    return openDatabase(path, readOnly: true);
  }
}
