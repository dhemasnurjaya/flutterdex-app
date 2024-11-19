import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterdex/presentation/pokemon_details/bloc/pokemon_natural_moves/pokemon_natural_moves_bloc.dart';

class PokemonNaturalMovesWidget extends StatefulWidget {
  const PokemonNaturalMovesWidget({
    required this.pokemonId,
    super.key,
  });

  final int pokemonId;

  @override
  State<PokemonNaturalMovesWidget> createState() =>
      _PokemonNaturalMovesWidgetState();
}

class _PokemonNaturalMovesWidgetState extends State<PokemonNaturalMovesWidget> {
  @override
  void initState() {
    super.initState();

    context.read<PokemonNaturalMovesBloc>().add(
          GetPokemonNaturalMovesEvent(pokemonId: widget.pokemonId),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonNaturalMovesBloc, PokemonNaturalMovesState>(
      builder: (context, state) {
        if (state is PokemonNaturalMovesLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is PokemonNaturalMovesLoadedState) {
          // TODO(dhemasnurjaya): build generation selector and
          //  corresponding list of moves
          return const SizedBox();
        } else if (state is PokemonNaturalMovesErrorState) {
          return const Center(
            child: Text('Failed to load natural moves'),
          );
        } else {
          return const Center(
            child: Text('Unknown state'),
          );
        }
      },
    );
  }
}
