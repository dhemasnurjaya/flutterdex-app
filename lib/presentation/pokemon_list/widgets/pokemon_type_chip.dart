import 'package:flutter/material.dart';
import 'package:flutterdex/presentation/pokemon_colors.dart';
import 'package:flutterdex/utilities/color_utility.dart';
import 'package:flutterdex/utilities/string_extension.dart';

class PokemonTypeChip extends StatelessWidget {
  final String type;

  const PokemonTypeChip(this.type, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: darken(pokemonColors[type]!, 10),
      ),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      margin: const EdgeInsets.only(right: 4),
      child: Text(
        type.toTitleCase(),
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.white70,
            ),
      ),
    );
  }
}
