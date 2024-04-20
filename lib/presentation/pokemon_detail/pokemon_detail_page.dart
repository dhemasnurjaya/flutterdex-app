import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/presentation/pokemon_detail/bloc/pokemon_detail_bloc.dart';

@RoutePage()
class PokemonDetailPage extends StatefulWidget {
  final int pokemonId;

  const PokemonDetailPage({
    required this.pokemonId,
    super.key,
  });

  @override
  State<PokemonDetailPage> createState() => _PokemonDetailPageState();
}

class _PokemonDetailPageState extends State<PokemonDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon Detail'),
      ),
      body: BlocBuilder<PokemonDetailBloc, PokemonDetailState>(
        builder: (context, state) {
          if (state is PokemonDetailLoadedState) {
            return ListView(
              children: [
                const Text(
                  'Abilities',
                  textAlign: TextAlign.center,
                ),
                ...state.pokemon.abilities.map<Widget>(
                  (e) => ListTile(
                    title: Text(e.name),
                    subtitle: Text(e.description),
                    leading:
                        Text(e.generation.name.split('-').last.toUpperCase()),
                  ),
                ),
                const Text(
                  'Stats',
                  textAlign: TextAlign.center,
                ),
                ...state.pokemon.stats.map<Widget>(
                  (e) => ListTile(
                    title: Text(e.name),
                    subtitle: Text('${e.baseStat}'),
                    leading: Text('+${e.effort}'),
                  ),
                ),
              ],
            );
          }

          if (state is PokemonDetailLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is PokemonDetailErrorState) {
            return Center(
              child: Text(state.message),
            );
          }

          return const SizedBox();
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    // get pokemon detail
    BlocProvider.of<PokemonDetailBloc>(context).add(
      GetPokemonDetailEvent(id: widget.pokemonId),
    );
  }
}
