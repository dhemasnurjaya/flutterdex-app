// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AppSettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AppSettingsPage(),
      );
    },
    PokemonDetailRoute.name: (routeData) {
      final args = routeData.argsAs<PokemonDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PokemonDetailPage(
          pokemon: args.pokemon,
          key: args.key,
        ),
      );
    },
    PokemonListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PokemonListPage(),
      );
    },
  };
}

/// generated route for
/// [AppSettingsPage]
class AppSettingsRoute extends PageRouteInfo<void> {
  const AppSettingsRoute({List<PageRouteInfo>? children})
      : super(
          AppSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppSettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PokemonDetailPage]
class PokemonDetailRoute extends PageRouteInfo<PokemonDetailRouteArgs> {
  PokemonDetailRoute({
    required Pokemon pokemon,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          PokemonDetailRoute.name,
          args: PokemonDetailRouteArgs(
            pokemon: pokemon,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PokemonDetailRoute';

  static const PageInfo<PokemonDetailRouteArgs> page =
      PageInfo<PokemonDetailRouteArgs>(name);
}

class PokemonDetailRouteArgs {
  const PokemonDetailRouteArgs({
    required this.pokemon,
    this.key,
  });

  final Pokemon pokemon;

  final Key? key;

  @override
  String toString() {
    return 'PokemonDetailRouteArgs{pokemon: $pokemon, key: $key}';
  }
}

/// generated route for
/// [PokemonListPage]
class PokemonListRoute extends PageRouteInfo<void> {
  const PokemonListRoute({List<PageRouteInfo>? children})
      : super(
          PokemonListRoute.name,
          initialChildren: children,
        );

  static const String name = 'PokemonListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
