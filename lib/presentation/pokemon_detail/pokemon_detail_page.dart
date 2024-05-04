import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/domain/entities/pokemon_basic_info.dart';
import 'package:flutterdex/presentation/pokemon_detail/bloc/pokemon_detail_bloc.dart';
import 'package:flutterdex/presentation/pokemon_detail/widgets/pokemon_stats_info.dart';
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
          .map<Widget>((type) => PokemonTypeChip(type.name))
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
    final header = Container(
      padding: const EdgeInsets.only(top: 8, bottom: 20),
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
          return Column(
            children: [
              header,
              _buildBody(state),
            ],
          );
        },
      ),
    );
  }

  Widget _buildBody(PokemonDetailState state) {
    if (state is PokemonDetailLoadedState) {
      final pokemonDescription = Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
              state.pokemonDetail.species.description
                  .replaceAll(RegExp(r'\s+'), ' ')
                  .trim(),
              style: Theme.of(context).textTheme.bodyLarge),
        ),
      );

      final pokemonInfoGrid = GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        children: [
          _buildInfoCard(
            'Height',
            '${state.pokemonDetail.pokemon.height! / 10}',
            'm',
          ),
          _buildInfoCard(
            'Weight',
            '${state.pokemonDetail.pokemon.weight! / 10}',
            'kg',
          ),
          _buildInfoCard(
            'Happiness',
            state.pokemonDetail.species.baseHappinessPercentage
                .toStringAsFixed(1),
            '%',
          ),
          _buildInfoCard(
            'Capture Rate',
            state.pokemonDetail.species.capturePercentage.toStringAsFixed(1),
            '%',
          ),
          _buildInfoCard(
            'Male Rate',
            state.pokemonDetail.species.malePercentage?.toStringAsFixed(1) ??
                '-',
            '%',
          ),
          _buildInfoCard(
            'Female Rate',
            state.pokemonDetail.species.femalePercentage?.toStringAsFixed(1) ??
                '-',
            '%',
          ),
        ],
      );

      final pokemonStats = Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: PokemonStatsInfo(
            pokemonStats: state.pokemonDetail.stats,
            baseColor: widget.baseColor,
          ),
        ),
      );

      final pokemonAbilities = Card(
        child: Column(
            children: state.pokemonDetail.abilities
                .map<Widget>((e) => ListTile(
                      contentPadding: const EdgeInsets.all(16),
                      title: Text(e.name.toTitleCase(splitter: '-')),
                      subtitle: Text(e.description),
                      trailing: Text(e.generation.name),
                    ))
                .toList()),
      );

      return Expanded(
        child: FadeTransition(
          opacity: Tween(begin: 0.0, end: 1.0).animate(_dataAnimationCtl!),
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              pokemonDescription,
              pokemonInfoGrid,
              pokemonStats,
              pokemonAbilities,
            ],
          ),
        ),
      );
    }

    return const SizedBox();
  }

  Widget _buildInfoCard(String title, String value, String unit) {
    return Card(
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
