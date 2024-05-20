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
  String _searchQuery = '';

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

  @override
  Widget build(BuildContext context) {
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
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          onVerticalDragDown: (_) => FocusScope.of(context).unfocus(),
          child: SafeArea(
            child: CustomScrollView(
              controller: _pokemonScrollCtl,
              slivers: [
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 24,
                  ),
                ),
                _buildAppBar(),
                _buildSubtitle(),
                _buildSearchBox(),
                _buildPokemonList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return SliverAppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: Text(
        'Pokémon',
        style: GoogleFonts.outfit().copyWith(
          fontSize: 32,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }

  Widget _buildSubtitle() {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverToBoxAdapter(
        child: Text(
          'Search for Pokémon by using name or National Pokédex number.',
          style: GoogleFonts.montserrat().copyWith(
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBox() {
    const padding = EdgeInsets.symmetric(vertical: 12);
    return SliverPersistentHeader(
      pinned: true,
      delegate: PokemonSearchBoxDelegate(
        minHeight: 50 + padding.vertical,
        maxHeight: 50 + padding.vertical,
        pinned: true,
        child: Padding(
          padding: padding,
          child: PokemonSearchBox(
            onSearch: _onSearch,
          ),
        ),
      ),
    );
  }

  Widget _buildPokemonList() {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      sliver: SliverGrid.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 4 / 5,
        ),
        itemCount: _pokemons.length + 1, // +1 for error indicator
        itemBuilder: (context, index) {
          if (index == _pokemons.length) {
            if (_isError) {
              return ErrorRetryWidget(onTapRetry: _getPokemons);
            } else {
              return const SizedBox();
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
  }

  void _onSearch(String query) {
    setState(() {
      _searchQuery = query;
      _offset = 0;
      _pokemons.clear();
      _getPokemons();
    });
  }

  void _getPokemons() {
    context.read<PokemonListBloc>().add(
          GetPokemonListEvent(
            offset: _offset,
            limit: _limit,
            searchQuery: _searchQuery,
          ),
        );
  }
}
