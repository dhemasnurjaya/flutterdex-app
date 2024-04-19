import 'package:drift/drift.dart';

@DataClassName('TypeModel')
class Types extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();

  @override
  String get tableName => 'pokemon_v2_type';
}
