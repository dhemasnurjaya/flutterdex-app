import 'package:flutter/material.dart';
import 'package:flutterdex/domain/entities/pokemon_stat.dart';
import 'package:flutterdex/utilities/color_utility.dart';

class PokemonStatsWidget extends StatelessWidget {
  final List<PokemonStat> pokemonStats;
  final Color baseColor;

  const PokemonStatsWidget({
    required this.pokemonStats,
    required this.baseColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        children: [
          Text(
            'Base Stats',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w800,
                  color: darken(baseColor),
                ),
          ),
          const SizedBox(height: 16),
          ...buildStats(context),
        ],
      ),
    );
  }

  List<Widget> buildStats(BuildContext context) {
    return pokemonStats.map((stat) {
      final statName = SizedBox(
        width: 36,
        child: Text(
          _getShortStatName(stat.name),
          textAlign: TextAlign.right,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: darken(baseColor),
              ),
        ),
      );

      final statValue = Expanded(
        child: Row(
          children: [
            SizedBox(
              width: 40,
              child: Text(
                stat.value.toString().padLeft(3, '0'),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Expanded(
              child: LinearProgressIndicator(
                value: stat.value / 255,
                minHeight: 3,
                color: darken(baseColor, 20),
                backgroundColor: lighten(baseColor, 70),
              ),
            ),
          ],
        ),
      );

      final divider = Container(
        width: 1,
        height: 20,
        color: lighten(baseColor, 70),
        margin: const EdgeInsets.symmetric(horizontal: 16),
      );

      return Row(
        children: [
          statName,
          divider,
          statValue,
        ],
      );
    }).toList();
  }

  String _getShortStatName(String name) {
    name = name.toLowerCase();
    final shortNames = {
      'hp': 'HP',
      'attack': 'ATK',
      'defense': 'DEF',
      'special attack': 'SATK',
      'special defense': 'SDEF',
      'speed': 'SPD',
    };
    return shortNames[name] ?? name;
  }
}
