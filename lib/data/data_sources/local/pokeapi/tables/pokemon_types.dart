import 'package:drift/drift.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/tables/pokemons.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/tables/types.dart';

@DataClassName('PokemonTypeModel')
class PokemonTypes extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get slot => integer()();
  IntColumn get pokemonId => integer().nullable().references(Pokemons, #id)();
  IntColumn get typeId => integer().nullable().references(Types, #id)();

  @override
  String get tableName => 'pokemon_v2_pokemontype';
}
