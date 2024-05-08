import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/domain/entities/vanilla/pokemon_basic_info.dart';
import 'package:flutterdex/presentation/pokemon_detail/bloc/pokemon_detail_bloc.dart';
import 'package:flutterdex/presentation/pokemon_list/widgets/pokemon_sprite.dart';
import 'package:flutterdex/presentation/pokemon_list/widgets/pokemon_type_chip.dart';
import 'package:flutterdex/utilities/color_utility.dart';
import 'package:flutterdex/utilities/string_extension.dart';

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
    final pokemonName = Text(
      widget.pokemon.name.toTitleCase(),
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: darken(widget.baseColor, 40),
            fontWeight: FontWeight.bold,
          ),
    );
    final pokemonSprite = Stack(
      alignment: Alignment.center,
      children: [
        RotationTransition(
          turns: CurvedAnimation(
            parent: Tween(begin: 0.0, end: 1.0).animate(_pokeballAnimationCtl!),
            curve: Curves.easeInOut,
          ),
          child: Image.asset(
            'assets/images/pokeball-flat.png',
            height: 250,
            width: 250,
            opacity: const AlwaysStoppedAnimation(0.1),
          ),
        ),
        SizedBox(
          height: 175,
          width: 175,
          child: Hero(
            tag: widget.pokemon,
            child: PokemonSprite(widget.pokemon.id),
          ),
        )
      ],
    );
    final pokemonGenus = Text(
      widget.pokemon.genus.toTitleCase(),
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: darken(widget.baseColor, 40),
            fontWeight: FontWeight.bold,
          ),
    );
    final pokemonTypes = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.pokemon.types
          .map<Widget>((type) => PokemonTypeChip(type))
          .toList(),
    );
    final pokemonNumber = Text(
      '#${widget.pokemon.id.toString().padLeft(4, '0')}',
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: darken(widget.baseColor, 25),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
    );
    final background = Container(
      padding: const EdgeInsets.only(top: 8),
      color: widget.baseColor,
      child: Column(
        children: [
          pokemonSprite,
          const SizedBox(height: 16),
          pokemonTypes,
          const SizedBox(height: 4),
          pokemonGenus,
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: pokemonName,
        actions: [pokemonNumber, const SizedBox(width: 16)],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: darken(widget.baseColor, 40),
          ),
          onPressed: () => context.router.maybePop(),
        ),
        backgroundColor: widget.baseColor,
        surfaceTintColor: Colors.transparent,
      ),
      body: BlocConsumer<PokemonDetailBloc, PokemonDetailState>(
        listener: (context, state) {
          if (state is PokemonDetailLoadedState) {
            // start fade in animation
            _dataAnimationCtl?.forward();
          }
        },
        builder: (context, state) {
          return Stack(
            children: [
              background,
              _buildForeground(state),
            ],
          );
        },
      ),
    );
  }

  Widget _buildForeground(PokemonDetailState state) {
    Widget body = Container(height: MediaQuery.of(context).size.height / 1.5);

    if (state is PokemonDetailLoadedState) {
      final pokemonDescription = _buildAboutItem(
        padding: const EdgeInsets.all(8),
        title: 'Description',
        child: Text(
          state.pokemonDetail.description
              .replaceAll(RegExp(r'\s+'), ' ')
              .trim(),
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      );

      final pokemonInfoGrid = _buildAboutItem(
        titlePadding: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.symmetric(vertical: 8),
        title: 'Basic Info',
        child: GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 3,
          children: [
            _buildInfoGridItem(
              'Height',
              '${state.pokemonDetail.heightInMeter}',
              'm',
            ),
            _buildInfoGridItem(
              'Weight',
              '${state.pokemonDetail.weightInKg}',
              'kg',
            ),
            _buildInfoGridItem(
              'Happiness',
              state.pokemonDetail.baseHappinessPercentage.toStringAsFixed(1),
              '%',
            ),
            _buildInfoGridItem(
              'Capture Rate',
              state.pokemonDetail.capturePercentage.toStringAsFixed(1),
              '%',
            ),
            _buildInfoGridItem(
              'Male Rate',
              state.pokemonDetail.malePercentage?.toStringAsFixed(1) ?? '-',
              '%',
            ),
            _buildInfoGridItem(
              'Female Rate',
              state.pokemonDetail.femalePercentage?.toStringAsFixed(1) ?? '-',
              '%',
            ),
          ],
        ),
      );

      // final pokemonStats = _buildAboutItem(
      //   title: 'Base Stats',
      //   child: PokemonStatsWidget(
      //     pokemonStats: state.pokemonDetail.stats,
      //     baseColor: widget.baseColor,
      //   ),
      //   padding: const EdgeInsets.all(8),
      // );

      // final pokemonAbilities = _buildAboutItem(
      //   titlePadding: const EdgeInsets.symmetric(horizontal: 8),
      //   padding: const EdgeInsets.symmetric(vertical: 8),
      //   title: 'Abilities',
      //   child: Column(
      //       children: state.pokemonDetail.abilities
      //           .map<Widget>((e) => ListTile(
      //                 contentPadding: const EdgeInsets.all(8),
      //                 title: Text(e.name.toTitleCase(splitter: '-')),
      //                 subtitle: Text(e.description),
      //                 trailing: Text(e.generation.name),
      //               ))
      //           .toList()),
      // );

      // final pokemonEvolutions = _buildAboutItem(
      //   title: 'Evolutions',
      //   padding: const EdgeInsets.all(8),
      //   child: Column(
      //     children: state.pokemonDetail.evolutions.map<Widget>((e) {
      //       return PokemonEvolutionWidget(
      //         pokemonEvolution: e,
      //         highlighted: e.id == state.pokemonDetail.pokemon.id,
      //         baseColor: widget.baseColor,
      //       );
      //     }).toList(),
      //   ),
      // );

      body = FadeTransition(
        opacity: Tween(begin: 0.0, end: 1.0).animate(_dataAnimationCtl!),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            pokemonDescription,
            pokemonInfoGrid,
            // pokemonStats,
            // pokemonAbilities,
            // pokemonEvolutions,
          ],
        ),
      );
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 350),
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, -8),
              ),
            ]),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: body,
        ),
      ),
    );
  }

  Widget _buildAboutItem({
    required String title,
    required Widget child,
    EdgeInsets padding = EdgeInsets.zero,
    EdgeInsets titlePadding = EdgeInsets.zero,
  }) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: titlePadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: darken(widget.baseColor, 20)),
                ),
                Divider(
                  color: darken(widget.baseColor, 20),
                  thickness: 0.5,
                ),
              ],
            ),
          ),
          child,
        ],
      ),
    );
  }

  Widget _buildInfoGridItem(String title, String value, String unit) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(
        color: lighten(widget.baseColor, 10),
      )),
      child: Stack(
        children: [
          Positioned(
            top: 8,
            left: 8,
            right: 8,
            child: Text(
              title,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 8),
          Center(
            child: Text(
              value,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Positioned(
            bottom: 8,
            left: 8,
            right: 8,
            child: Text(
              unit,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
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
  }

  @override
  void dispose() {
    _pokeballAnimationCtl?.dispose();
    _dataAnimationCtl?.dispose();
    super.dispose();
  }
}
