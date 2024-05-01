import 'package:flutter/material.dart';
import 'package:flutterdex/domain/entities/pokemon.dart';
import 'package:flutterdex/presentation/pokemon_colors.dart';
import 'package:flutterdex/presentation/pokemon_list/widgets/pokemon_sprite.dart';
import 'package:flutterdex/presentation/pokemon_list/widgets/pokemon_type_chip.dart';
import 'package:flutterdex/utilities/color_utility.dart';
import 'package:flutterdex/utilities/string_extension.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;
  final Function() onTap;

  const PokemonCard({
    required this.pokemon,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final pokemonName = Text(
      pokemon.name.toTitleCase(),
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
    );
    final pokemonTypes = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: pokemon.types
          .map<Widget>((type) => PokemonTypeChip(type.name))
          .toList(),
    );
    final pokemonNumber = Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Image.asset(
            'assets/images/pokeball-flat.png',
            opacity: const AlwaysStoppedAnimation(0.05),
          ),
        ),
        Text(
          '#${pokemon.id.toString().padLeft(4, '0')}',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: darken(pokemonColors[pokemon.types.first.name]!, 25),
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
    final pokemonCard = Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: pokemonColors[pokemon.types.first.name],
      ),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const SizedBox(width: 4),
              Hero(
                tag: pokemon,
                child: PokemonSprite(
                  pokemon.id,
                  padding: const EdgeInsets.all(8),
                ),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  pokemonName,
                  pokemonTypes,
                ],
              ),
            ],
          ),
          pokemonNumber,
        ],
      ),
    );

    return GestureDetector(
      onTap: onTap,
      child: pokemonCard,
    );
  }
}
