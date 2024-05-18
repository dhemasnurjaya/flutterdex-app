import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutterdex/core/presentation/curve_clipper.dart';
import 'package:flutterdex/domain/entities/pokemon_basic_info.dart';
import 'package:flutterdex/presentation/pokemon_detail/widgets/pokemon_abilities_widget.dart';
import 'package:flutterdex/presentation/pokemon_detail/widgets/pokemon_about_widget.dart';
import 'package:flutterdex/presentation/pokemon_detail/widgets/pokemon_stats_widget.dart';
import 'package:flutterdex/presentation/pokemon_list/widgets/pokemon_sprite.dart';
import 'package:flutterdex/presentation/pokemon_list/widgets/pokemon_type_chip.dart';
import 'package:flutterdex/utilities/color_utility.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class PokemonDetailPage extends StatefulWidget {
  const PokemonDetailPage({
    required this.pokemon,
    required this.baseColor,
    super.key,
  });
  final PokemonBasicInfo pokemon;
  final Color baseColor;

  @override
  State<PokemonDetailPage> createState() => _PokemonDetailPageState();
}

class _PokemonDetailPageState extends State<PokemonDetailPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  final _tabTitles = ['About', 'Stats', 'Abilities', 'Evolution', 'Moves'];

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      length: _tabTitles.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildAppBar(),
          SliverList.list(
            children: [
              _buildPokemonSprite(),
              _buildPokemonName(),
              _buildPokemonGenus(),
              _buildPokemonTypes(),
              Padding(
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
                  onTap: (value) => setState(() {}),
                ),
              ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: _getTabPage(_tabController?.index ?? 0),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _getTabPage(int index) {
    switch (index) {
      case 0:
        return PokemonAboutWidget(
          pokemonId: widget.pokemon.id,
          baseColor: widget.baseColor,
        );
      case 1:
        return PokemonStatsWidget(
          pokemonId: widget.pokemon.id,
          baseColor: widget.baseColor,
        );
      case 2:
        return PokemonAbilitiesWidget(
          pokemonId: widget.pokemon.id,
          baseColor: widget.baseColor,
        );
      case 3:
        return Container();
      case 4:
        return Container();
      default:
        return Container();
    }
  }

  Widget _buildAppBar() {
    final pokemonNumber = Text(
      '#${widget.pokemon.id.toString().padLeft(4, '0')}',
      style: GoogleFonts.outfit().copyWith(
        fontSize: 18,
        color: Colors.black,
      ),
    );

    return SliverAppBar(
      title: pokemonNumber,
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () => context.router.maybePop(),
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.favorite_border,
            color: Colors.black,
          ),
          onPressed: () => context.router.maybePop(),
        ),
      ],
      backgroundColor: widget.baseColor,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
    );
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
          height: 175,
          width: 190,
          child: Hero(
            tag: widget.pokemon,
            child: PokemonSprite(widget.pokemon.id),
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
        children:
            widget.pokemon.types.map<Widget>(PokemonTypeChip.new).toList(),
      ),
    );
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }
}
