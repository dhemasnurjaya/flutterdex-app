import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/domain/entities/pokemon_stat.dart';
import 'package:flutterdex/presentation/pokemon_details/bloc/pokemon_stats/pokemon_stats_bloc.dart';
import 'package:flutterdex/utilities/color_utility.dart';

class PokemonStatsWidget extends StatefulWidget {
  const PokemonStatsWidget({
    required this.pokemonId,
    required this.baseColor,
    super.key,
  });

  final int pokemonId;
  final Color baseColor;

  @override
  State<PokemonStatsWidget> createState() => _PokemonStatsWidgetState();
}

class _PokemonStatsWidgetState extends State<PokemonStatsWidget> {
  @override
  void initState() {
    super.initState();

    // get pokemon stats
    BlocProvider.of<PokemonStatsBloc>(context).add(
      GetPokemonStatsEvent(pokemonId: widget.pokemonId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonStatsBloc, PokemonStatsState>(
      builder: (context, state) {
        if (state is PokemonStatsLoadedState) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  Text(
                    'Base Stats',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: darken(widget.baseColor),
                        ),
                  ),
                  const SizedBox(height: 16),
                  buildStats(context, state.pokemonStats),
                  const SizedBox(height: 16),
                  Text(
                    'Effort Stats',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: darken(widget.baseColor),
                        ),
                  ),
                  buildEffortStats(context, state.pokemonStats),
                ],
              ),
            ),
          );
        }

        return const SizedBox();
      },
    );
  }

  Widget buildStats(
    BuildContext context,
    List<PokemonStat> pokemonStats,
  ) {
    final statWidgets = pokemonStats.map((stat) {
      final statName = SizedBox(
        width: 36,
        child: Text(
          _getShortStatName(stat.name),
          textAlign: TextAlign.right,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: darken(widget.baseColor),
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
                color: darken(widget.baseColor, 20),
                backgroundColor: lighten(widget.baseColor, 70),
              ),
            ),
          ],
        ),
      );

      final divider = Container(
        width: 1,
        height: 20,
        color: lighten(widget.baseColor, 70),
        margin: const EdgeInsets.symmetric(horizontal: 16),
      );

      return Row(
        children: [
          statName,
          divider,
          statValue,
        ],
      );
    });

    return Column(children: statWidgets.toList());
  }

  Widget buildEffortStats(
    BuildContext context,
    List<PokemonStat> pokemonStats,
  ) {
    final effortStats =
        pokemonStats.where((element) => element.effortValue != 0);
    final effortStatWidgets = effortStats.map((stat) {
      return Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              _getShortStatName(stat.name),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: darken(widget.baseColor),
                  ),
            ),
            Text(
              '+${stat.effortValue}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      );
    });

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: effortStatWidgets.toList(),
    );
  }

  String _getShortStatName(String name) {
    final lowerName = name.toLowerCase();
    final shortNames = {
      'hp': 'HP',
      'attack': 'ATK',
      'defense': 'DEF',
      'special attack': 'SATK',
      'special defense': 'SDEF',
      'speed': 'SPD',
    };
    return shortNames[lowerName] ?? name;
  }
}
