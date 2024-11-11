import 'dart:io';

String readQuery(String queryName) {
  return File('lib/data/data_sources/local/pokeapi/queries/$queryName.sql')
      .readAsStringSync();
}
