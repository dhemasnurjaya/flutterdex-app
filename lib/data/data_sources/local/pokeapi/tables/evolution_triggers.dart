import 'package:drift/drift.dart';

@DataClassName('EvolutionTriggerModel')
class EvolutionTriggers extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text().withLength(min: 1, max: 100)();

  @override
  String get tableName => 'pokemon_v2_evolutiontrigger';
}
