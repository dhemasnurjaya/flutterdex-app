import 'package:drift/drift.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/tables/evolution_triggers.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/tables/pokemon_species.dart';

@DataClassName('PokemonEvolutionModel')
class PokemonEvolutions extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn? get minLevel => integer().nullable()();
  TextColumn? get timeOfDay => text().nullable()();
  IntColumn? get minHappiness => integer().nullable()();
  IntColumn? get minAffection => integer().nullable()();
  IntColumn? get relativePhysicalStats => integer().nullable()();
  BoolColumn get needsOverworldRain => boolean()();
  BoolColumn get turnUpsideDown => boolean()();
  IntColumn? get evolutionTriggerId =>
      integer().nullable().references(EvolutionTriggers, #id)();
  IntColumn? get evolvedSpeciesId =>
      integer().nullable().references(PokemonSpecies, #id)();
  IntColumn? get genderId => integer().nullable()();
  IntColumn? get knownMoveId => integer().nullable()();
  IntColumn? get knownMoveTypeId => integer().nullable()();
  IntColumn? get partySpeciesId => integer().nullable()();
  IntColumn? get partyTypeId => integer().nullable()();
  IntColumn? get tradeSpeciesId => integer().nullable()();
  IntColumn? get minBeauty => integer().nullable()();
  IntColumn? get evolutionItemId => integer().nullable()();
  IntColumn? get heldItemId => integer().nullable()();
  IntColumn? get locationId => integer().nullable()();

  @override
  String get tableName => 'pokemon_v2_pokemonevolution';
}
