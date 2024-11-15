import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutterdex/domain/entities/pokemon_basic_info.dart';
import 'package:flutterdex/presentation/app_settings/app_settings_page.dart';
import 'package:flutterdex/presentation/pokemon_details/pokemon_details_page.dart';
import 'package:flutterdex/presentation/pokemon_list/pokemon_list_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: PokemonListRoute.page,
          initial: true,
        ),
        AutoRoute(page: PokemonDetailsRoute.page),
        AutoRoute(page: AppSettingsRoute.page),
      ];
}
