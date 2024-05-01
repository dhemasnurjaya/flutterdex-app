import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/core/presentation/widgets/error_retry_widget.dart';
import 'package:flutterdex/core/router/app_router.dart';
import 'package:flutterdex/domain/entities/pokemon.dart';
import 'package:flutterdex/presentation/pokemon_list/bloc/pokemon_list_bloc.dart';
import 'package:flutterdex/presentation/pokemon_list/widgets/pokemon_card.dart';

@RoutePage()
class PokemonListPage extends StatefulWidget {
  const PokemonListPage({super.key});

  @override
  State<PokemonListPage> createState() => _PokemonListPageState();
}

class _PokemonListPageState extends State<PokemonListPage> {
  final _pokemonScrollCtl = ScrollController();
  final _pokemons = <Pokemon>[];
  final _limit = 50;

  int _offset = 0;
  bool _isLastPage = false;
  bool _isError = false;

  @override
  Widget build(BuildContext context) {
    const appBar = SliverAppBar(
      title: Text('Pokemon List'),
      floating: true,
    );
    final pokemonList = SliverList.builder(
      // +1 for progress indicator
      itemCount: _pokemons.length + 1,
      itemBuilder: (context, index) {
        if (index == _pokemons.length) {
          if (_isError) {
            return ErrorRetryWidget(onTapRetry: _getPokemons);
          } else {
            if (_isLastPage) {
              return const SizedBox();
            }
            return const ListTile(
              title: Center(child: CircularProgressIndicator()),
            );
          }
        }

        return PokemonCard(
          pokemon: _pokemons[index],
          onTap: () {
            context.router.push(
              PokemonDetailRoute(pokemon: _pokemons[index]),
            );
          },
        );
      },
    );

    return Scaffold(
      body: BlocListener<PokemonListBloc, PokemonListState>(
        listener: (context, state) {
          setState(() {
            if (state is PokemonListLoadedState) {
              _isLastPage = state.pokemons.isEmpty;
              _pokemons.addAll(state.pokemons);
            }

            _isError = state is PokemonListErrorState;
          });
        },
        child: CustomScrollView(
          controller: _pokemonScrollCtl,
          slivers: [
            appBar,
            pokemonList,
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    // load initial pokemons
    _getPokemons();

    // register scroll listener for lazy loading
    _pokemonScrollCtl.addListener(() {
      if (_pokemonScrollCtl.position.pixels ==
          _pokemonScrollCtl.position.maxScrollExtent) {
        // prevent load more on error
        if (!_isError) {
          _offset += _limit;
        }

        // load more pokemons
        if (!_isLastPage) {
          _getPokemons();
        }
      }
    });
  }

  void _getPokemons() {
    context.read<PokemonListBloc>().add(
          GetPokemonListEvent(
            offset: _offset,
            limit: _limit,
          ),
        );
  }
}
