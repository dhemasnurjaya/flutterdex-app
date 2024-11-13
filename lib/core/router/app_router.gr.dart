// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AppSettingsPage]
class AppSettingsRoute extends PageRouteInfo<void> {
  const AppSettingsRoute({List<PageRouteInfo>? children})
      : super(
          AppSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppSettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AppSettingsPage();
    },
  );
}

/// generated route for
/// [PokemonDetailPage]
class PokemonDetailRoute extends PageRouteInfo<PokemonDetailRouteArgs> {
  PokemonDetailRoute({
    required PokemonBasicInfo pokemon,
    required Color baseColor,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          PokemonDetailRoute.name,
          args: PokemonDetailRouteArgs(
            pokemon: pokemon,
            baseColor: baseColor,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PokemonDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PokemonDetailRouteArgs>();
      return PokemonDetailPage(
        pokemon: args.pokemon,
        baseColor: args.baseColor,
        key: args.key,
      );
    },
  );
}

class PokemonDetailRouteArgs {
  const PokemonDetailRouteArgs({
    required this.pokemon,
    required this.baseColor,
    this.key,
  });

  final PokemonBasicInfo pokemon;

  final Color baseColor;

  final Key? key;

  @override
  String toString() {
    return 'PokemonDetailRouteArgs{pokemon: $pokemon, baseColor: $baseColor, key: $key}';
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PokemonListPage();
    },
  );
}
