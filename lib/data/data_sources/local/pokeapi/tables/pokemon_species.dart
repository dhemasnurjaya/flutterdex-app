import 'package:drift/drift.dart';

@DataClassName('PokemonSpeciesModel')
class PokemonSpecies extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 100)();
  IntColumn get order => integer().nullable()();
  IntColumn get genderRate => integer().nullable()();
  IntColumn get captureRate => integer().nullable()();
  IntColumn get baseHappiness => integer().nullable()();
  BoolColumn get isBaby => boolean()();
  IntColumn get hatchCounter => integer().nullable()();
  BoolColumn get hasGenderDifferences => boolean()();
  BoolColumn get formsSwitchable => boolean()();
  IntColumn get evolutionChainId => integer().nullable()();
  IntColumn get generationId => integer().nullable()();
  IntColumn get growthRateId => integer().nullable()();
  IntColumn get pokemonColorId => integer().nullable()();
  IntColumn get pokemonHabitatId => integer().nullable()();
  IntColumn get pokemonShapeId => integer().nullable()();
  BoolColumn get isLegendary => boolean()();
  BoolColumn get isMythical => boolean()();
  IntColumn get evolvesFromSpeciesId =>
      integer().nullable().references(PokemonSpecies, #id)();

  @override
  String get tableName => 'pokemon_v2_pokemonspecies';
}
