import 'package:flutter/material.dart';
import 'package:flutterdex/domain/entities/pokemon_stat.dart';
import 'package:flutterdex/utilities/color_utility.dart';
import 'package:flutterdex/utilities/string_extension.dart';

class PokemonStatsInfo extends StatelessWidget {
  final List<PokemonStat> pokemonStats;
  final Color baseColor;

  const PokemonStatsInfo({
    required this.pokemonStats,
    required this.baseColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final statRows = pokemonStats.map((stat) {
      final statName = SizedBox(
        width: 130,
        child: Text(stat.name.toTitleCase(splitter: '-')),
      );

      final statValue = Expanded(
        child: Row(
          children: [
            SizedBox(
              width: 36,
              child: Text(
                stat.baseStat.toString(),
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            Expanded(
              child: LinearProgressIndicator(
                value: stat.baseStat / 255,
                minHeight: 14,
                color: darken(baseColor, 20),
                backgroundColor: lighten(baseColor, 70),
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ],
        ),
      );

      return Row(
        children: [
          statName,
          statValue,
        ],
      );
    }).toList();

    return IntrinsicHeight(
      child: Column(
        children: statRows,
      ),
    );
  }
}