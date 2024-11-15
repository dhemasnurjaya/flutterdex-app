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
/// [PokemonDetailsPage]
class PokemonDetailsRoute extends PageRouteInfo<PokemonDetailsRouteArgs> {
  PokemonDetailsRoute({
    required PokemonBasicInfo pokemon,
    required Color baseColor,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          PokemonDetailsRoute.name,
          args: PokemonDetailsRouteArgs(
            pokemon: pokemon,
            baseColor: baseColor,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PokemonDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PokemonDetailsRouteArgs>();
      return PokemonDetailsPage(
        pokemon: args.pokemon,
        baseColor: args.baseColor,
        key: args.key,
      );
    },
  );
}

class PokemonDetailsRouteArgs {
  const PokemonDetailsRouteArgs({
    required this.pokemon,
    required this.baseColor,
    this.key,
  });

  final PokemonBasicInfo pokemon;

  final Color baseColor;

  final Key? key;

  @override
  String toString() {
    return 'PokemonDetailsRouteArgs{pokemon: $pokemon, baseColor: $baseColor, key: $key}';
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
