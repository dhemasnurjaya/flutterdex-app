import 'package:drift/drift.dart';

@DataClassName('PokemonSpeciesFlavorTextModel')
class PokemonSpeciesFlavorText extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get flavorText => text().withLength(min: 0, max: 500)();

  IntColumn get languageId => integer().nullable()();

  IntColumn get pokemonSpeciesId => integer().nullable()();

  IntColumn get versionId => integer().nullable()();

  @override
  String get tableName => 'pokemon_v2_pokemonspeciesflavortext';
}
