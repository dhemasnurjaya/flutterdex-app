import 'package:auto_route/auto_route.dart';
import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterdex/app_router.dart';
import 'package:flutterdex/domain/entities/pokemon_evolutions.dart';
import 'package:flutterdex/presentation/pokemon_colors.dart';
import 'package:flutterdex/presentation/pokemon_details/bloc/pokemon_evolutions/pokemon_evolutions_bloc.dart';
import 'package:flutterdex/presentation/pokemon_list/widgets/pokemon_sprite_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class PokemonEvolutionsWidget extends StatefulWidget {
  const PokemonEvolutionsWidget({
    required this.pokemonId,
    required this.baseColor,
    super.key,
  });

  final int pokemonId;
  final Color baseColor;

  @override
  State<PokemonEvolutionsWidget> createState() =>
      _PokemonEvolutionsWidgetState();
}

class _PokemonEvolutionsWidgetState extends State<PokemonEvolutionsWidget> {
  @override
  void initState() {
    super.initState();

    // get pokemon evolutions
    BlocProvider.of<PokemonEvolutionsBloc>(context).add(
      GetPokemonEvolutionsEvent(
        pokemonId: widget.pokemonId,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonEvolutionsBloc, PokemonEvolutionsState>(
      builder: (context, state) {
        if (state is PokemonEvolutionsLoadedState) {
          return _buildEvolutionsList(
            context,
            state.evolutions,
          );
        }

        if (state is PokemonEvolutionsEmptyState) {
          return const Padding(
            padding: EdgeInsets.all(16),
            child: Text('This Pokémon has no evolutions.'),
          );
        }

        return const SizedBox();
      },
    );
  }

  Widget _buildEvolutionsList(
    BuildContext context,
    List<PokemonEvolutions> evolutions,
  ) {
    final evolutionChainWidgets = evolutions.map(
      (evolution) => _buildEvolutionsChainList(context, evolution),
    );

    final divider = Row(
      children: [
        const Expanded(
          child: Divider(
            indent: 16,
            endIndent: 16,
          ),
        ),
        Image.asset(
          'assets/images/pokeball-flat.png',
          color: Theme.of(context).dividerColor,
          height: 20,
        ),
        const Expanded(
          child: Divider(
            indent: 16,
            endIndent: 16,
          ),
        ),
      ],
    );

    // Create a list of widgets with dividers
    final childrenWithDividers = <Widget>[];
    for (var i = 0; i < evolutionChainWidgets.length; i++) {
      childrenWithDividers.add(evolutionChainWidgets.elementAt(i));
      if (i < evolutionChainWidgets.length - 1) {
        // Add a divider between elements but not after the last one
        childrenWithDividers.add(divider);
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          ...childrenWithDividers,
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.circleQuestion,
                  size: 20,
                  color: Theme.of(context).disabledColor,
                ),
                const SizedBox(width: 4),
                Text(
                  'Long press to search for detailed evolution info',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).disabledColor,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEvolutionsChainList(
    BuildContext context,
    PokemonEvolutions evolution,
  ) {
    final pokemonChainWidgets = evolution.evolutionChains
        .map(
          (e) => _buildEvolutionItem(context, e),
        )
        .toList();

    return Column(
      children: pokemonChainWidgets,
    );
  }

  Widget _buildEvolutionItem(
    BuildContext context,
    PokemonEvolution pokemonEvolution,
  ) {
    final pokemonName = Text(
      pokemonEvolution.pokemon.name,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
    );
    final pokemonNumber = Text(
      '#${pokemonEvolution.pokemon.id.toString().padLeft(4, '0')}',
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).disabledColor,
          ),
    );
    final pokemonImage = PokemonSpriteWidget(pokemonEvolution.pokemon.id);

    return ListTile(
      leading: pokemonImage,
      trailing: pokemonNumber,
      title: pokemonName,
      subtitle: _buildEvolutionTriggers(context, pokemonEvolution),
      onTap: widget.pokemonId == pokemonEvolution.pokemon.id
          ? null
          : () {
              context.router.push(
                PokemonDetailRoute(
                  pokemon: pokemonEvolution.pokemon,
                  baseColor:
                      pokemonColors[pokemonEvolution.pokemon.types.first]!,
                ),
              );
            },
      onLongPress: () {
        launchUrl(
          Uri.https(
            'www.google.com',
            '/search',
            {
              'q': 'how to evolve ${pokemonEvolution.pokemon.name}',
            },
          ),
        );
      },
    );
  }

  Widget _buildEvolutionTriggers(
    BuildContext context,
    PokemonEvolution pokemonEvolution,
  ) {
    final triggers = pokemonEvolution.evolutionTriggers.map((t) => '[$t]');
    final requirements = <String>[];

    if (pokemonEvolution.heldItem != null) {
      requirements.add("holding '${pokemonEvolution.heldItem}'");
    }

    if (pokemonEvolution.evolutionItem != null) {
      requirements.add("using '${pokemonEvolution.evolutionItem}'");
    }

    if (pokemonEvolution.minAffection != null) {
      requirements.add('min. affection ${pokemonEvolution.minAffection}');
    }

    if (pokemonEvolution.minBeauty != null) {
      requirements.add('min. beauty ${pokemonEvolution.minBeauty}');
    }

    if (pokemonEvolution.minHappiness != null) {
      requirements.add('min. happiness ${pokemonEvolution.minHappiness}');
    }

    if (pokemonEvolution.minLevel != null) {
      requirements.add('min. level ${pokemonEvolution.minLevel}');
    }

    if (pokemonEvolution.needsOverworldRain ?? false) {
      requirements.add('needs overworld rain');
    }

    if (pokemonEvolution.timeOfDay?.isNotEmpty ?? false) {
      requirements.add('at ${pokemonEvolution.timeOfDay}');
    }

    if (pokemonEvolution.turnUpsideDown ?? false) {
      requirements.add('turns upside down');
    }

    return Text(
      '${triggers.join()} ${requirements.join(', ')}',
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).hintColor,
          ),
    );
  }
}
