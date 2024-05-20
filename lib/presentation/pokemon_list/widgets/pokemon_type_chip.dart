import 'package:flutter/material.dart';
import 'package:flutterdex/presentation/pokemon_colors.dart';
import 'package:flutterdex/utilities/string_extension.dart';

class PokemonTypeChip extends StatelessWidget {
  const PokemonTypeChip(this.type, {super.key});
  final String type;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: pokemonColors[type],
      ),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      margin: const EdgeInsets.symmetric(horizontal: 2),
      child: Text(
        type.toTitleCase(),
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.white,
            ),
      ),
    );
  }
}
