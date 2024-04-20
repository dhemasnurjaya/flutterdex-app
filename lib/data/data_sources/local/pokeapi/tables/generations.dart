import 'package:drift/drift.dart';

@DataClassName('GenerationModel')
class Generations extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get regionId => integer().nullable()();
  TextColumn get name => text().withLength(min: 1, max: 100)();

  @override
  String get tableName => 'pokemon_v2_generation';
}
