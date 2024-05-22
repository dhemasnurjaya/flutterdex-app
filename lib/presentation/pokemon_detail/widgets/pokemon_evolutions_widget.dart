import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/core/router/app_router.dart';
import 'package:flutterdex/domain/entities/pokemon_evolutions.dart';
import 'package:flutterdex/presentation/pokemon_colors.dart';
import 'package:flutterdex/presentation/pokemon_detail/bloc/pokemon_evolutions/pokemon_evolutions_bloc.dart';
import 'package:flutterdex/presentation/pokemon_list/widgets/pokemon_sprite.dart';
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
          height: 24,
          opacity: const AlwaysStoppedAnimation(0.2),
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
        children: childrenWithDividers,
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
    final pokemonImage = PokemonSprite(pokemonEvolution.pokemon.id);

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
    final triggers = <String>[];

    switch (pokemonEvolution.evolutionTrigger) {
      case 'level-up':
        triggers.add('Level ${pokemonEvolution.minLevel}');
      case 'trade':
        triggers.add('Trade');
      case 'use-item':
        triggers.add('Using {itemName}');
      case 'shed':
      case 'spin':
      case 'tower-of-darkness':
      case 'tower-of-waters':
      case 'three-critical-hits':
      case 'take-damage':
      case 'agile-style-move':
      case 'strong-style-move':
      case 'recoil-damage':
      case 'other':
        triggers.add('Special trigger, long press for more info');
    }

    return Text(
      triggers.join(', '),
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).disabledColor,
          ),
    );
  }
}
