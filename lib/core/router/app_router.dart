import 'package:auto_route/auto_route.dart';
import 'package:flutterdex/presentation/app_settings/app_settings_page.dart';
import 'package:flutterdex/presentation/current_weather/current_weather_page.dart';
import 'package:flutterdex/presentation/pokemon_list/pokemon_list_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: CurrentWeatherRoute.page),
        AutoRoute(page: AppSettingsRoute.page),
        AutoRoute(
          page: PokemonListRoute.page,
          initial: true,
        ),
      ];
}
