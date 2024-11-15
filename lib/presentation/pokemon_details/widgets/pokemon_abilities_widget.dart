import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutter/material.dart';

import 'package:flutterdex/domain/entities/pokemon_ability.dart';
import 'package:flutterdex/presentation/pokemon_details/bloc/pokemon_abilities/pokemon_abilities_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PokemonAbilitiesWidget extends StatefulWidget {
  const PokemonAbilitiesWidget({
    required this.pokemonId,
    required this.baseColor,
    super.key,
  });

  final int pokemonId;
  final Color baseColor;

  @override
  State<PokemonAbilitiesWidget> createState() => _PokemonAbilitiesWidgetState();
}

class _PokemonAbilitiesWidgetState extends State<PokemonAbilitiesWidget> {
  @override
  void initState() {
    super.initState();

    // get pokemon abilities
    BlocProvider.of<PokemonAbilitiesBloc>(context).add(
      GetPokemonAbilitiesEvent(
        pokemonId: widget.pokemonId,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonAbilitiesBloc, PokemonAbilitiesState>(
      builder: (context, state) {
        if (state is PokemonAbilitiesLoadedState) {
          return _buildAbilitiesList(context, state.abilities);
        }

        return const SizedBox();
      },
    );
  }

  Widget _buildAbilitiesList(
    BuildContext context,
    List<PokemonAbility> abilities,
  ) {
    final abilityWidgets = abilities.map(
      (ability) => ListTile(
        title: Text(
          ability.name,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        subtitle: Text(ability.description),
        trailing: Text(ability.generation),
        leading: FaIcon(
          ability.isHidden ? FontAwesomeIcons.eyeSlash : FontAwesomeIcons.eye,
        ),
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: abilityWidgets.toList(),
      ),
    );
  }
}
