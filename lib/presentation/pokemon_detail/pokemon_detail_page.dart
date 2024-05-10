import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/core/presentation/curve_clipper.dart';
import 'package:flutterdex/domain/entities/pokemon_basic_info.dart';
import 'package:flutterdex/presentation/pokemon_detail/bloc/pokemon_detail/pokemon_detail_bloc.dart';
import 'package:flutterdex/presentation/pokemon_detail/bloc/pokemon_stats/pokemon_stats_bloc.dart';
import 'package:flutterdex/presentation/pokemon_detail/widgets/pokemon_about_widget.dart';
import 'package:flutterdex/presentation/pokemon_detail/widgets/pokemon_stats_widget.dart';
import 'package:flutterdex/presentation/pokemon_list/widgets/pokemon_sprite.dart';
import 'package:flutterdex/presentation/pokemon_list/widgets/pokemon_type_chip.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class PokemonDetailPage extends StatefulWidget {
  final PokemonBasicInfo pokemon;
  final Color baseColor;

  const PokemonDetailPage({
    required this.pokemon,
    required this.baseColor,
    super.key,
  });

  @override
  State<PokemonDetailPage> createState() => _PokemonDetailPageState();
}

class _PokemonDetailPageState extends State<PokemonDetailPage>
    with TickerProviderStateMixin {
  AnimationController? _pokeballAnimationCtl;
  AnimationController? _dataAnimationCtl;

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
              _buildPokemonAbout(),
              _buildPokemonStats(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    final pokemonNumber = Text(
      '#${widget.pokemon.id.toString().padLeft(4, '0')}',
      style: GoogleFonts.outfit().copyWith(
        fontSize: 18,
      ),
    );

    return SliverAppBar(
      title: pokemonNumber,
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => context.router.maybePop(),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.favorite_border),
          onPressed: () => context.router.maybePop(),
        ),
      ],
      backgroundColor: widget.baseColor,
      surfaceTintColor: Colors.transparent,
      pinned: false,
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

  Widget _buildPokemonAbout() {
    return BlocConsumer<PokemonDetailBloc, PokemonDetailState>(
      listener: (context, state) {
        if (state is PokemonDetailLoadedState) {
          // start fade in animation
          _dataAnimationCtl?.forward();
        }
      },
      builder: (context, state) {
        if (state is PokemonDetailLoadedState) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: PokemonAboutWidget(
              pokemonDetailInfo: state.pokemonDetail,
              baseColor: widget.baseColor,
            ),
          );
        }

        return const SizedBox();
      },
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
            .map<Widget>((type) => PokemonTypeChip(type))
            .toList(),
      ),
    );
  }

  Widget _buildPokemonStats() {
    return BlocConsumer<PokemonStatsBloc, PokemonStatsState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is PokemonStatsLoadedState) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: PokemonStatsWidget(
              pokemonStats: state.pokemonStats,
              baseColor: widget.baseColor,
            ),
          );
        }

        return const SizedBox();
      },
    );
  }

  @override
  void initState() {
    super.initState();

    _pokeballAnimationCtl = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    Future.delayed(const Duration(milliseconds: 500), () {
      _pokeballAnimationCtl?.repeat();
    });

    _dataAnimationCtl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    // get pokemon detail
    BlocProvider.of<PokemonDetailBloc>(context).add(
      GetPokemonDetailEvent(id: widget.pokemon.id),
    );

    // get pokemon stats
    BlocProvider.of<PokemonStatsBloc>(context).add(
      GetPokemonStatsEvent(id: widget.pokemon.id),
    );
  }

  @override
  void dispose() {
    _pokeballAnimationCtl?.dispose();
    _dataAnimationCtl?.dispose();
    super.dispose();
  }
}
