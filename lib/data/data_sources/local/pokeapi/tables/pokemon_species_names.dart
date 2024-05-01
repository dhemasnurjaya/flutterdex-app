import 'package:drift/drift.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/tables/pokemon_species.dart';

@DataClassName('PokemonSpeciesNameModel')
class PokemonSpeciesNames extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get genus => text().withLength(min: 1, max: 30)();
  IntColumn get languageId => integer().nullable()();
  IntColumn get pokemonSpeciesId =>
      integer().nullable().references(PokemonSpecies, #id)();
  TextColumn get name => text().withLength(min: 1, max: 100)();

  @override
  String get tableName => 'pokemon_v2_pokemonspeciesname';
}
