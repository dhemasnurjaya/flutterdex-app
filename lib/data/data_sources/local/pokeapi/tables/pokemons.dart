import 'package:drift/drift.dart';

@DataClassName('PokemonModel')
class Pokemons extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  IntColumn get order => integer().nullable()();
  IntColumn get weight => integer().nullable()();
  IntColumn get height => integer().nullable()();
  BoolColumn get isDefault => boolean()();
  IntColumn get pokemonSpeciesId => integer().nullable()();
  IntColumn get baseExperience => integer().nullable()();

  @override
  String get tableName => 'pokemon_v2_pokemon';
}
