import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterdex/data/enums/pokemon_generation.dart';
import 'package:flutterdex/data/enums/pokemon_move_learn_method.dart';
import 'package:flutterdex/domain/entities/pokemon_move.dart';
import 'package:flutterdex/presentation/pokemon_details/bloc/pokemon_moves/pokemon_moves_bloc.dart';
import 'package:flutterdex/utilities/string_extension.dart';

class PokemonMovesWidget extends StatefulWidget {
  const PokemonMovesWidget({
    required this.pokemonId,
    required this.learnMethod,
    required this.generation,
    super.key,
  });

  final int pokemonId;
  final PokemonMoveLearnMethod learnMethod;
  final PokemonGeneration generation;

  @override
  State<PokemonMovesWidget> createState() => _PokemonMovesWidgetState();
}

class _PokemonMovesWidgetState extends State<PokemonMovesWidget> {
  @override
  void initState() {
    super.initState();

    context.read<PokemonMovesBloc>().add(
          GetPokemonMovesEvent(
            pokemonId: widget.pokemonId,
            learnMethod: widget.learnMethod,
            generation: widget.generation,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonMovesBloc, PokemonMovesState>(
      builder: (context, state) {
        if (state is PokemonMovesLoadedState) {
          return _buildMoveList(state.moves);
        }

        if (state is PokemonMovesErrorState) {
          return const Center(
            child: Text('Failed to load moves'),
          );
        }

        return const SizedBox();
      },
    );
  }

  Widget _buildMoveList(List<PokemonMove> moves) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: moves.length,
      separatorBuilder: (context, index) => const Divider(
        height: 0,
        indent: 16,
        endIndent: 16,
      ),
      itemBuilder: (context, index) {
        final move = moves[index];
        return ExpansionTile(
          expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
          tilePadding: const EdgeInsets.symmetric(horizontal: 24),
          childrenPadding: const EdgeInsets.fromLTRB(24, 4, 24, 8),
          shape: const Border(),
          controlAffinity: ListTileControlAffinity.trailing,
          trailing: const Icon(Icons.arrow_drop_down),
          title: Text(
            move.name,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          subtitle: GridView.count(
            crossAxisCount: 3,
            childAspectRatio: 5 / 2,
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
            children: [
              _buildMoveInfo(
                title: 'Level',
                value: move.level.toString(),
              ),
              _buildMoveInfo(
                title: 'PP',
                value: move.pp.toString(),
              ),
              _buildMoveInfo(
                title: 'Accuracy',
                value: move.accuracy?.toString(),
              ),
              _buildMoveInfo(
                title: 'Power',
                value: move.power?.toString(),
              ),
              _buildMoveInfo(
                title: 'Type',
                value: move.type,
              ),
            ],
          ),
          children: [
            Text(
              move.description.trimNewLines(),
              textAlign: TextAlign.start,
            ),
          ],
        );
      },
    );
  }

  Widget _buildMoveInfo({
    required String title,
    required String? value,
  }) =>
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Theme.of(context).disabledColor,
                  height: 1,
                ),
          ),
          const SizedBox(height: 4),
          Text(
            value ?? '-',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  height: 1,
                ),
          ),
        ],
      );
}
