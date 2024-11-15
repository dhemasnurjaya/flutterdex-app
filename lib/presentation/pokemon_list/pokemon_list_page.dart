import 'package:auto_route/auto_route.dart';
import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterdex/domain/entities/pokemon_basic_info.dart';
import 'package:flutterdex/presentation/pokemon_list/bloc/pokemon_list_bloc.dart';
import 'package:flutterdex/presentation/pokemon_list/widgets/pokemon_filter_widget.dart';
import 'package:flutterdex/presentation/pokemon_list/widgets/pokemon_list_widget.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class PokemonListPage extends StatefulWidget {
  const PokemonListPage({super.key});

  @override
  State<PokemonListPage> createState() => _PokemonListPageState();
}

class _PokemonListPageState extends State<PokemonListPage> {
  final _pokemonScrollCtl = ScrollController();
  final _pokemons = <PokemonBasicInfo>{};
  final _filteredPokemons = <PokemonBasicInfo>{};
  final _limit = 50;

  double _lastScrollPosition = 0;
  int _offset = 0;
  int _filteredOffset = 0;
  bool _isLastPage = false;
  bool _isError = false;
  String _searchQuery = '';

  bool get _isFiltered => _searchQuery.isNotEmpty;

  @override
  void initState() {
    super.initState();

    // load initial pokemons
    _getPokemons();

    _pokemonScrollCtl.addListener(() {
      // save last scroll position for unfiltered pokemons
      if (!_isFiltered) {
        _lastScrollPosition = _pokemonScrollCtl.position.pixels;
      }

      // lazy loading
      final isEndOfScroll =
          _lastScrollPosition == _pokemonScrollCtl.position.maxScrollExtent;
      if (isEndOfScroll && !_isError) {
        // update offset
        _isFiltered ? _filteredOffset += _limit : _offset += _limit;

        // load more pokemons
        if (!_isLastPage) {
          _getPokemons(query: _isFiltered ? _searchQuery : '');
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

              if (_isFiltered) {
                _filteredPokemons.addAll(state.pokemons);
              } else {
                _pokemons.addAll(state.pokemons);
                _pokemonScrollCtl.animateTo(
                  _lastScrollPosition,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              }
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
      centerTitle: false,
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
          child: PokemonFilterWidget(
            onSearch: (query) => _getPokemons(query: query),
          ),
        ),
      ),
    );
  }

  Widget _buildPokemonList() {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      sliver: PokemonListWidget(
        pokemons: _isFiltered ? _filteredPokemons : _pokemons,
      ),
    );
  }

  void _getPokemons({String query = ''}) {
    setState(() {
      _searchQuery = query;
      _filteredOffset = 0;
      _filteredPokemons.clear();
    });

    context.read<PokemonListBloc>().add(
          GetPokemonListEvent(
            offset: _isFiltered ? _filteredOffset : _offset,
            limit: _limit,
            searchQuery: _searchQuery,
          ),
        );
  }
}
