import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/domain/entities/pokemon_evolutions.dart';
import 'package:flutterdex/presentation/pokemon_detail/bloc/pokemon_evolutions/pokemon_evolutions_bloc.dart';
import 'package:flutterdex/presentation/pokemon_list/widgets/pokemon_sprite.dart';

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

        return const SizedBox();
      },
    );
  }

  Widget _buildEvolutionsList(
    BuildContext context,
    List<PokemonEvolutions> evolutions,
  ) {
    final evolutionChainWidgets = evolutions
        .map(
          (evolution) => _buildEvolutionsChainList(context, evolution),
        )
        .toList();

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

    final chainCount = evolutionChainWidgets.length;
    for (var i = 0; i < chainCount; i++) {
      if (i != 0) {
        evolutionChainWidgets.insert(i, divider);
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: evolutionChainWidgets,
      ),
    );
  }

  Widget _buildEvolutionsChainList(
    BuildContext context,
    PokemonEvolutions evolution,
  ) {
    final pokemonChainWidgets = evolution.evolutionChains.map(
      (e) => _buildEvolutionItem(context, e),
    );

    return Column(
      children: pokemonChainWidgets.toList(),
    );
  }

  Widget _buildEvolutionItem(
    BuildContext context,
    PokemonEvolution pokemonEvolution,
  ) {
    final pokemonName = Text(
      pokemonEvolution.name,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
    );
    final pokemonNumber = Text(
      '#${pokemonEvolution.id.toString().padLeft(4, '0')}',
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).disabledColor,
          ),
    );
    final pokemonImage = PokemonSprite(pokemonEvolution.id);

    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          pokemonName,
          pokemonNumber,
        ],
      ),
      subtitle: Text(''),
      leading: pokemonImage,
    );
  }
}
