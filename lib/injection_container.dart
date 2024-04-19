import 'package:flutterdex/core/data/local/config.dart';
import 'package:flutterdex/core/data/local/theme_mode_config.dart';
import 'package:flutterdex/core/network/network.dart';
import 'package:flutterdex/core/presentation/theme/theme_mode_cubit.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_database.dart';
import 'package:flutterdex/data/data_sources/local/pokeapi/pokeapi_sqlite_local_source.dart';
import 'package:flutterdex/data/data_sources/remote/weather_api_remote_source.dart';
import 'package:flutterdex/data/repositories/poke_api_repository_impl.dart';
import 'package:flutterdex/data/repositories/weather_api_repository_impl.dart';
import 'package:flutterdex/domain/repositories/poke_api_repository.dart';
import 'package:flutterdex/domain/repositories/weather_api_repository.dart';
import 'package:flutterdex/domain/use_cases/get_current_weather.dart';
import 'package:flutterdex/domain/use_cases/get_pokemon_list.dart';
import 'package:flutterdex/presentation/current_weather/blocs/current_weather_bloc.dart';
import 'package:flutter/material.dart';
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
  getIt.registerLazySingleton<WeatherApiRemoteSource>(
    () => WeatherApiRemoteSourceImpl(
      network: getIt(),
    ),
  );
  getIt.registerLazySingleton<PokeApiSqliteLocalSource>(
    () => PokeApiSqliteLocalSourceImpl(
      database: getIt(),
    ),
  );

  // repositories
  getIt.registerLazySingleton<WeatherApiRepository>(
    () => WeatherApiRepositoryImpl(
      weatherApiRemoteSource: getIt(),
    ),
  );
  getIt.registerLazySingleton<PokeApiRepository>(
    () => PokeApiRepositoryImpl(
      localSource: getIt(),
    ),
  );

  // use cases
  getIt.registerLazySingleton<GetCurrentWeather>(
    () => GetCurrentWeather(
      weatherApiRepository: getIt(),
    ),
  );
  getIt.registerLazySingleton<GetPokemonList>(
    () => GetPokemonList(
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
  getIt.registerFactory<CurrentWeatherBloc>(
    () => CurrentWeatherBloc(
      getCurrentWeather: getIt(),
    ),
  );
  getIt.registerFactory<PokemonListBloc>(
    () => PokemonListBloc(
      getPokemonList: getIt(),
    ),
  );

  // others
}
