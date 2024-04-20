import 'package:drift/drift.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/tables/pokemons.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/tables/stats.dart';

@DataClassName('PokemonStatModel')
class PokemonStats extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get baseStat => integer()();
  IntColumn get effort => integer()();
  IntColumn get pokemonId => integer().nullable().references(Pokemons, #id)();
  IntColumn get statId => integer().nullable().references(Stats, #id)();

  @override
  String get tableName => 'pokemon_v2_pokemonstat';
}
