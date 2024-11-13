import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/core/presentation/bloc/app_bloc_observer.dart';
import 'package:flutterdex/core/presentation/theme/app_theme.dart';
import 'package:flutterdex/core/presentation/theme/theme_mode_cubit.dart';
import 'package:flutterdex/core/router/app_router.dart';
import 'package:flutterdex/injection_container.dart' as ic;
import 'package:flutterdex/presentation/pokemon_details/bloc/pokemon_abilities/pokemon_abilities_bloc.dart';
import 'package:flutterdex/presentation/pokemon_details/bloc/pokemon_details/pokemon_details_bloc.dart';
import 'package:flutterdex/presentation/pokemon_details/bloc/pokemon_evolutions/pokemon_evolutions_bloc.dart';
import 'package:flutterdex/presentation/pokemon_details/bloc/pokemon_stats/pokemon_stats_bloc.dart';
import 'package:flutterdex/presentation/pokemon_list/bloc/pokemon_list_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // dependency injection setup
  ic.setup();
  await ic.getIt.allReady();

  // register bloc observer
  Bloc.observer = AppBlocObserver();

  runApp(FlutterdexApp());
}

class FlutterdexApp extends StatelessWidget {
  FlutterdexApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeModeCubit>(
          create: (context) => ic.getIt(),
        ),
        BlocProvider<PokemonListBloc>(
          create: (context) => ic.getIt(),
        ),
        BlocProvider<PokemonDetailsBloc>(
          create: (context) => ic.getIt(),
        ),
        BlocProvider<PokemonStatsBloc>(
          create: (context) => ic.getIt(),
        ),
        BlocProvider<PokemonAbilitiesBloc>(
          create: (context) => ic.getIt(),
        ),
        BlocProvider<PokemonEvolutionsBloc>(
          create: (context) => ic.getIt(),
        ),
      ],
      child: BlocBuilder<ThemeModeCubit, ThemeMode>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Flutterdex',
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: state,
            routerConfig: _appRouter.config(),
          );
        },
      ),
    );
  }
}
