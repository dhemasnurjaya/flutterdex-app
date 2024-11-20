import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutterdex/data/enums/pokemon_generation.dart';
import 'package:flutterdex/data/enums/pokemon_move_learn_method.dart';
import 'package:flutterdex/domain/entities/pokemon_basic_info.dart';
import 'package:flutterdex/presentation/curve_clipper.dart';
import 'package:flutterdex/presentation/pokemon_details/widgets/pokemon_abilities_widget.dart';
import 'package:flutterdex/presentation/pokemon_details/widgets/pokemon_about_widget.dart';
import 'package:flutterdex/presentation/pokemon_details/widgets/pokemon_evolutions_widget.dart';
import 'package:flutterdex/presentation/pokemon_details/widgets/pokemon_moves_widget.dart';
import 'package:flutterdex/presentation/pokemon_details/widgets/pokemon_stats_widget.dart';
import 'package:flutterdex/presentation/pokemon_list/widgets/pokemon_sprite_widget.dart';
import 'package:flutterdex/presentation/pokemon_list/widgets/pokemon_type_chip.dart';
import 'package:flutterdex/utilities/color_utility.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class PokemonDetailsPage extends StatefulWidget {
  const PokemonDetailsPage({
    required this.pokemon,
    required this.baseColor,
    super.key,
  });
  final PokemonBasicInfo pokemon;
  final Color baseColor;

  @override
  State<PokemonDetailsPage> createState() => _PokemonDetailsPageState();
}

class _PokemonDetailsPageState extends State<PokemonDetailsPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  final _tabTitles = ['About', 'Stats', 'Abilities', 'Evolution', 'Moves'];
  final _tabPages = <Widget>[];
  double _xStart = 0;

  @override
  void initState() {
    super.initState();

    _buildTabPages();
    _tabController = TabController(
      length: _tabTitles.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        // detect horizontal swipe to change tab
        onPanStart: (details) {
          _xStart = details.globalPosition.dx;
        },
        onPanEnd: (details) {
          var currentTabIndex = _tabController?.index;
          if (currentTabIndex == null) {
            return;
          }

          const sensitivity = 50;
          final xEnd = details.globalPosition.dx;
          final xDelta = xEnd - _xStart;

          if (xDelta > sensitivity) {
            currentTabIndex = currentTabIndex - 1;
          } else if (xDelta < -sensitivity) {
            currentTabIndex = currentTabIndex + 1;
          }

          if (currentTabIndex >= 0 && currentTabIndex < _tabTitles.length) {
            _tabController?.animateTo(currentTabIndex);
            setState(() {});
          }
        },
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            _buildAppBar(),
            _buildPokemonSprite(),
            _buildPokemonName(),
            _buildPokemonGenus(),
            _buildPokemonTypes(),
            _buildInfoTabBar(),
            _buildInfoPages(),
          ],
        ),
      ),
    );
  }

  void _buildTabPages() {
    final pages = [
      PokemonAboutWidget(
        pokemonId: widget.pokemon.id,
        baseColor: widget.baseColor,
      ),
      PokemonStatsWidget(
        pokemonId: widget.pokemon.id,
        baseColor: widget.baseColor,
      ),
      PokemonAbilitiesWidget(
        pokemonId: widget.pokemon.id,
        baseColor: widget.baseColor,
      ),
      PokemonEvolutionsWidget(
        pokemonId: widget.pokemon.id,
        baseColor: widget.baseColor,
      ),
      PokemonMovesWidget(
        pokemonId: widget.pokemon.id,
        learnMethod: PokemonMoveLearnMethod.levelUp,
        generation: PokemonGeneration.gen1,
      ),
    ];
    _tabPages.addAll(pages);
  }

  Widget _buildAppBar() {
    const defaultAppBarHeight = 56.0;
    final statusBarHeight = MediaQuery.of(context).padding.vertical;

    final pokemonNumber = Text(
      '#${widget.pokemon.id.toString().padLeft(4, '0')}',
      style: GoogleFonts.outfit().copyWith(
        fontSize: 18,
        color: Colors.black,
      ),
    );

    final customAppBar = Container(
      height: defaultAppBarHeight + statusBarHeight,
      padding: EdgeInsets.fromLTRB(8, statusBarHeight, 8, 0),
      color: widget.baseColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () => context.router.maybePop(),
          ),
          pokemonNumber,
          IconButton(
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
            onPressed: () => context.router.maybePop(),
          ),
        ],
      ),
    );

    return customAppBar;
  }

  Widget _buildPokemonSprite() {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        ClipPath(
          clipper: const CurveClipper(),
          child: Container(
            height: 140,
            color: widget.baseColor,
          ),
        ),
        SizedBox(
          height: 190,
          width: 190,
          child: Hero(
            tag: widget.pokemon,
            child: PokemonSpriteWidget(widget.pokemon.id),
          ),
        ),
      ],
    );
  }

  Widget _buildPokemonName() {
    return Text(
      widget.pokemon.name,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
    );
  }

  Widget _buildPokemonGenus() {
    return Text(
      widget.pokemon.genus,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).disabledColor,
            fontWeight: FontWeight.bold,
          ),
    );
  }

  Widget _buildPokemonTypes() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: widget.pokemon.types
            .map<Widget>(
              (e) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: PokemonTypeChip(e),
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _buildInfoTabBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: TabBar(
        controller: _tabController,
        isScrollable: true,
        tabAlignment: TabAlignment.startOffset,
        dividerHeight: 0,
        indicatorColor: darken(widget.baseColor),
        labelColor: darken(widget.baseColor),
        labelStyle: GoogleFonts.outfit().copyWith(
          fontSize: 16,
        ),
        tabs: _tabTitles.map(Text.new).toList(),
        onTap: (_) => setState(() {}),
      ),
    );
  }

  Widget _buildInfoPages() {
    final currentTabIndex = _tabController?.index;
    if (currentTabIndex == null) {
      return const SizedBox.shrink();
    }

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: _tabPages[currentTabIndex],
    );
  }
}
