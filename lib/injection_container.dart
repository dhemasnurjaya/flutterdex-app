import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterdex/core/data/local/config.dart';
import 'package:flutterdex/core/data/local/theme_mode_config.dart';
import 'package:flutterdex/core/network/network.dart';
import 'package:flutterdex/core/presentation/theme/theme_mode_cubit.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_database.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_local_data_source.dart';
import 'package:flutterdex/data/repositories/pokeapi_repository_impl.dart';
import 'package:flutterdex/domain/repositories/pokeapi_repository.dart';
import 'package:flutterdex/domain/use_cases/get_pokemon_abilities.dart';
import 'package:flutterdex/domain/use_cases/get_pokemon_details.dart';
import 'package:flutterdex/domain/use_cases/get_pokemon_evolutions.dart';
import 'package:flutterdex/domain/use_cases/get_pokemon_stats.dart';
import 'package:flutterdex/domain/use_cases/get_pokemons.dart';
import 'package:flutterdex/presentation/pokemon_details/bloc/pokemon_abilities/pokemon_abilities_bloc.dart';
import 'package:flutterdex/presentation/pokemon_details/bloc/pokemon_details/pokemon_details_bloc.dart';
import 'package:flutterdex/presentation/pokemon_details/bloc/pokemon_evolutions/pokemon_evolutions_bloc.dart';
import 'package:flutterdex/presentation/pokemon_details/bloc/pokemon_stats/pokemon_stats_bloc.dart';
import 'package:flutterdex/presentation/pokemon_list/bloc/pokemon_list_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

final getIt = GetIt.instance;

void setup() {
  // network
  getIt.registerLazySingleton<Network>(NetworkImpl.new);

  // poke api database
  getIt.registerSingletonAsync<Database>(
    () async => PokeapiDatabase().I,
  );

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
  getIt.registerSingletonAsync<PokeapiLocalDataSource>(
    () async => PokeapiLocalDataSourceImpl(
      database: getIt(),
    ),
    dependsOn: [Database],
  );

  // repositories
  getIt.registerLazySingleton<PokeapiRepository>(
    () => PokeapiRepositoryImpl(
      localSource: getIt(),
    ),
  );

  // use cases
  getIt.registerLazySingleton<GetPokemons>(
    () => GetPokemons(
      repository: getIt(),
    ),
  );
  getIt.registerLazySingleton<GetPokemonDetails>(
    () => GetPokemonDetails(
      repository: getIt(),
    ),
  );
  getIt.registerLazySingleton<GetPokemonStats>(
    () => GetPokemonStats(
      repository: getIt(),
    ),
  );
  getIt.registerLazySingleton<GetPokemonAbilities>(
    () => GetPokemonAbilities(
      repository: getIt(),
    ),
  );
  getIt.registerLazySingleton<GetPokemonEvolutions>(
    () => GetPokemonEvolutions(
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
      getPokemons: getIt(),
    ),
  );
  getIt.registerFactory<PokemonDetailsBloc>(
    () => PokemonDetailsBloc(
      getPokemonDetails: getIt(),
    ),
  );
  getIt.registerFactory<PokemonStatsBloc>(
    () => PokemonStatsBloc(
      getPokemonStats: getIt(),
    ),
  );
  getIt.registerFactory<PokemonAbilitiesBloc>(
    () => PokemonAbilitiesBloc(
      getPokemonAbilities: getIt(),
    ),
  );
  getIt.registerFactory<PokemonEvolutionsBloc>(
    () => PokemonEvolutionsBloc(
      getPokemonEvolutions: getIt(),
    ),
  );

  // others
  getIt.registerSingletonAsync<AssetManifest>(
    () async {
      final assetManifest = await AssetManifest.loadFromAssetBundle(rootBundle);
      return assetManifest;
    },
  );
}
