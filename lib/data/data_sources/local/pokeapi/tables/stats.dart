import 'package:drift/drift.dart';

@DataClassName('StatModel')
class Stats extends Table {
  IntColumn get id => integer().autoIncrement()();
  BoolColumn get isBattleOnly => boolean()();
  IntColumn get gameIndex => integer()();
  IntColumn get moveDamageClassId => integer().nullable()();
  TextColumn get name => text().withLength(min: 1, max: 100)();

  @override
  String get tableName => 'pokemon_v2_stat';
}
