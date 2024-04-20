import 'package:drift/drift.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/tables/generations.dart';

@DataClassName('AbilityModel')
class Abilities extends Table {
  IntColumn get id => integer().autoIncrement()();
  BoolColumn get isMainSeries => boolean()();
  IntColumn get generationId =>
      integer().nullable().references(Generations, #id)();
  TextColumn get name => text().withLength(min: 1, max: 100)();

  @override
  String get tableName => 'pokemon_v2_ability';
}
