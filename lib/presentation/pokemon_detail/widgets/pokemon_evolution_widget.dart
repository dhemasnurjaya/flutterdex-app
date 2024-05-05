import 'package:flutter/material.dart';
import 'package:flutterdex/domain/entities/pokemon_evolution.dart';
import 'package:flutterdex/presentation/pokemon_list/widgets/pokemon_sprite.dart';
import 'package:flutterdex/utilities/color_utility.dart';
import 'package:flutterdex/utilities/string_extension.dart';

class PokemonEvolutionWidget extends StatelessWidget {
  final PokemonEvolution pokemonEvolution;
  final bool highlighted;
  final Color baseColor;

  const PokemonEvolutionWidget({
    required this.pokemonEvolution,
    required this.highlighted,
    required this.baseColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final pokemonName = Text(
      pokemonEvolution.name.toTitleCase(),
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
    );

    return Container(
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(
          color: highlighted ? lighten(baseColor, 10) : Colors.transparent,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              PokemonSprite(
                pokemonEvolution.id,
                padding: const EdgeInsets.all(8),
              ),
              const SizedBox(width: 4),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  pokemonName,
                  _buildEvolutionInfo(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildEvolutionInfo() {
    if (pokemonEvolution.trigger != null) {
      if (pokemonEvolution.trigger == EvolutionTrigger.levelUp) {
        return Text(
          'Level ${pokemonEvolution.minLevel}',
        );
      }
    }

    return const SizedBox();
  }
}
