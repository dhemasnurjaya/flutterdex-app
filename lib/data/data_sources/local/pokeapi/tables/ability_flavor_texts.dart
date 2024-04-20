import 'package:drift/drift.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/tables/abilities.dart';

@DataClassName('AbilityFlavorTextModel')
class AbilityFlavorTexts extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get abilityId => integer().nullable().references(Abilities, #id)();
  IntColumn get languageId => integer().nullable()();
  IntColumn get versionGroupId => integer().nullable()();
  TextColumn get flavorText => text().withLength(min: 1, max: 500)();

  @override
  String get tableName => 'pokemon_v2_abilityflavortext';
}
