import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutterdex/app_router.dart';
import 'package:flutterdex/domain/entities/pokemon_basic_info.dart';
import 'package:flutterdex/presentation/pokemon_colors.dart';
import 'package:flutterdex/presentation/pokemon_list/widgets/pokemon_card.dart';

class PokemonListWidget extends StatelessWidget {
  const PokemonListWidget({required this.pokemons, super.key});

  final Set<PokemonBasicInfo> pokemons;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 4 / 5,
      ),
      itemCount: pokemons.length + 1, // +1 for error or loading indicator
      itemBuilder: (context, index) {
        if (index == pokemons.length) {
          return const SizedBox();
        }

        return PokemonCard(
          pokemon: pokemons.elementAt(index),
          onTap: () {
            context.router.push(
              PokemonDetailRoute(
                pokemon: pokemons.elementAt(index),
                baseColor:
                    pokemonColors[pokemons.elementAt(index).types.first]!,
              ),
            );
          },
        );
      },
    );
  }
}
