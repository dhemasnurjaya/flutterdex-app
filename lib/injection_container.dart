import 'package:flutter/material.dart';
import 'package:flutterdex/core/data/local/config.dart';
import 'package:flutterdex/core/data/local/theme_mode_config.dart';
import 'package:flutterdex/core/network/network.dart';
import 'package:flutterdex/core/presentation/theme/theme_mode_cubit.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_database.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_local_source.dart';
import 'package:flutterdex/data/repositories/pokeapi_repository_impl.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';
import 'package:flutterdex/domain/use_cases/get_pokemon.dart';
import 'package:flutterdex/domain/use_cases/get_pokemon_list.dart';
import 'package:flutterdex/presentation/pokemon_detail/bloc/pokemon_detail_bloc.dart';
import 'package:flutterdex/presentation/pokemon_list/bloc/pokemon_list_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

void setup() {
  // network
  getIt.registerLazySingleton<Network>(() => NetworkImpl());

  // poke api database
  getIt.registerLazySingleton<PokeApiDatabase>(() => PokeApiDatabase());

  // shared preferences
  getIt.registerSingletonAsync<SharedPreferences>(
    () async {
      final prefs = await SharedPreferences.getInstance();
      return prefs;
    },
  );

  // configs
  getIt.registerSingletonWithDependencies<Config<ThemeMode>>(
    () => ThemeModeConfig(sharedPreferences: getIt()),
    dependsOn: [SharedPreferences],
  );

  // data sources
  getIt.registerLazySingleton<PokeApiLocalSource>(
    () => PokeApiSqliteLocalSourceImpl(
      database: getIt(),
    ),
  );

  // repositories
  getIt.registerLazySingleton<PokeapiRepository>(
    () => PokeapiRepositoryImpl(
      localSource: getIt(),
    ),
  );

  // use cases
  getIt.registerLazySingleton<GetPokemonList>(
    () => GetPokemonList(
      repository: getIt(),
    ),
  );
  getIt.registerLazySingleton<GetPokemon>(
    () => GetPokemon(
      repository: getIt(),
    ),
  );

  // blocs
  getIt.registerSingletonAsync<ThemeModeCubit>(
    () async {
      final initialThemeMode = await getIt<Config<ThemeMode>>().get();
      return ThemeModeCubit(
        themeModeConfig: getIt(),
        initialThemeMode: initialThemeMode,
      );
    },
    dependsOn: [SharedPreferences, Config<ThemeMode>],
  );
  getIt.registerFactory<PokemonListBloc>(
    () => PokemonListBloc(
      getPokemonList: getIt(),
    ),
  );
  getIt.registerFactory<PokemonDetailBloc>(
    () => PokemonDetailBloc(
      getPokemon: getIt(),
    ),
  );

  // others
}
