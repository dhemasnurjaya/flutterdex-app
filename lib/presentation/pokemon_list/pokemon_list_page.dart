import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/presentation/pokemon_list/bloc/pokemon_list_bloc.dart';

@RoutePage()
class PokemonListPage extends StatefulWidget {
  const PokemonListPage({super.key});

  @override
  State<PokemonListPage> createState() => _PokemonListPageState();
}

class _PokemonListPageState extends State<PokemonListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon List'),
      ),
      body: BlocBuilder<PokemonListBloc, PokemonListState>(
        builder: (context, state) {
          if (state is PokemonListLoadedState) {
            return ListView.builder(
              itemCount: state.pokemons.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(state.pokemons[index].name),
                  subtitle: Text(
                    state.pokemons[index].types.map((e) => e.name).join(', '),
                  ),
                  trailing: Text(
                    '#${state.pokemons[index].id.toString().padLeft(4, '0')}',
                  ),
                );
              },
            );
          }

          if (state is PokemonListErrorState) {
            return Text(state.message);
          }

          return const Center();
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    context.read<PokemonListBloc>().add(
          const GetPokemonListEvent(
            offset: 0,
            limit: 100,
          ),
        );
  }
}
