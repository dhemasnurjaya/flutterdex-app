import 'package:drift/drift.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/tables/abilities.dart';

@DataClassName('PokemonAbilityModel')
class PokemonAbilities extends Table {
  IntColumn get id => integer().autoIncrement()();
  BoolColumn get isHidden => boolean()();
  IntColumn get slot => integer()();
  IntColumn get abilityId => integer().nullable().references(Abilities, #id)();
  IntColumn get pokemonId => integer().nullable()();

  @override
  String get tableName => 'pokemon_v2_pokemonability';
}
