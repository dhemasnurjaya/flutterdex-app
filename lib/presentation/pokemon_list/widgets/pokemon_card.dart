import 'package:flutter/material.dart';
import 'package:flutterdex/domain/entities/pokemon_basic_info.dart';
import 'package:flutterdex/presentation/curve_clipper.dart';
import 'package:flutterdex/presentation/pokemon_colors.dart';
import 'package:flutterdex/presentation/pokemon_list/widgets/pokemon_sprite_widget.dart';
import 'package:flutterdex/presentation/pokemon_list/widgets/pokemon_type_chip.dart';
import 'package:flutterdex/utilities/color_utility.dart';

/// Pokemon Card Widget
/// Used as main list item of Pokemons
class PokemonCard extends StatelessWidget {
  const PokemonCard({
    required this.pokemon,
    required this.onTap,
    super.key,
  });

  /// [PokemonBasicInfo] entity
  final PokemonBasicInfo pokemon;

  /// On Tap callback when the card is tapped
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final pokemonName = Text(
      pokemon.name,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
            fontWeight: FontWeight.bold,
          ),
    );
    final pokemonTypes = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: pokemon.types.map<Widget>(PokemonTypeChip.new).toList(),
    );
    final pokemonNumber = Text(
      pokemon.id.toString().padLeft(4, '0'),
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: darken(pokemonColors[pokemon.types.first]!, 25),
            fontWeight: FontWeight.bold,
          ),
    );
    final pokemonCard = Container(
      clipBehavior: Clip.antiAlias,
      // margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: darken(pokemonColors[pokemon.types.first]!, 20),
            blurRadius: 2,
          ),
        ],
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 0,
            child: ClipPath(
              clipper: const CurveClipper(),
              child: Container(
                height: 110,
                decoration: BoxDecoration(
                  color: pokemonColors[pokemon.types.first],
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: pokemon,
                child: PokemonSpriteWidget(
                  pokemon.id,
                  padding: const EdgeInsets.all(8),
                  height: 100,
                ),
              ),
              pokemonName,
              const SizedBox(height: 8),
              pokemonTypes,
            ],
          ),
          Positioned(
            top: 8,
            right: 8,
            child: pokemonNumber,
          ),
        ],
      ),
    );

    return GestureDetector(
      onTap: onTap,
      child: pokemonCard,
    );
  }
}
