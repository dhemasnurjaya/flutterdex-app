import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/core/presentation/widgets/error_retry_widget.dart';
import 'package:flutterdex/core/router/app_router.dart';
import 'package:flutterdex/domain/entities/pokemon_basic_info.dart';
import 'package:flutterdex/presentation/pokemon_colors.dart';
import 'package:flutterdex/presentation/pokemon_list/bloc/pokemon_list_bloc.dart';
import 'package:flutterdex/presentation/pokemon_list/widgets/pokemon_card.dart';
import 'package:flutterdex/presentation/pokemon_list/widgets/pokemon_search_box.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class PokemonListPage extends StatefulWidget {
  const PokemonListPage({super.key});

  @override
  State<PokemonListPage> createState() => _PokemonListPageState();
}

class _PokemonListPageState extends State<PokemonListPage> {
  final _pokemonScrollCtl = ScrollController();
  final _pokemons = <PokemonBasicInfo>[];
  final _limit = 50;

  int _offset = 0;
  bool _isLastPage = false;
  bool _isError = false;

  @override
  Widget build(BuildContext context) {
    final title = SliverPadding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      sliver: SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Pokémon',
              style: GoogleFonts.outfit().copyWith(
                fontSize: 32,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Search for Pokémon by using name or National Pokédex number.',
              style: GoogleFonts.montserrat().copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
    const searchBox = SliverPersistentHeader(
      pinned: true,
      delegate: PokemonSearchBoxDelegate(
        minHeight: 72,
        maxHeight: 72,
        pinned: true,
        child: PokemonSearchBox(),
      ),
    );
    final pokemonList = SliverPadding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      sliver: SliverGrid.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 4 / 5,
        ),
        itemCount: _pokemons.length + 1, // +1 for progress indicator
        itemBuilder: (context, index) {
          if (index == _pokemons.length) {
            if (_isError) {
              return ErrorRetryWidget(onTapRetry: _getPokemons);
            } else {
              if (_isLastPage) {
                return const SizedBox();
              }
              return const Center(child: CircularProgressIndicator());
            }
          }

          return PokemonCard(
            pokemon: _pokemons[index],
            onTap: () {
              context.router.push(
                PokemonDetailRoute(
                  pokemon: _pokemons[index],
                  baseColor: pokemonColors[_pokemons[index].types.first]!,
                ),
              );
            },
          );
        },
      ),
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
        child: SafeArea(
          child: CustomScrollView(
            controller: _pokemonScrollCtl,
            slivers: [
              title,
              searchBox,
              pokemonList,
            ],
          ),
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
