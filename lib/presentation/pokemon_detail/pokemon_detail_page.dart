import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/domain/entities/pokemon.dart';
import 'package:flutterdex/presentation/pokemon_detail/bloc/pokemon_detail_bloc.dart';
import 'package:flutterdex/presentation/pokemon_list/widgets/pokemon_sprite.dart';
import 'package:flutterdex/presentation/pokemon_list/widgets/pokemon_type_chip.dart';
import 'package:flutterdex/utilities/color_utility.dart';
import 'package:flutterdex/utilities/string_extension.dart';

@RoutePage()
class PokemonDetailPage extends StatefulWidget {
  final Pokemon pokemon;
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
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  Widget build(BuildContext context) {
    // final oldColumn = Column(
    //   children: [
    //     const Text(
    //       'Species',
    //       textAlign: TextAlign.center,
    //     ),
    //     ListTile(
    //       title: Text(state.pokemon.species.name),
    //       subtitle: Text(state.pokemon.species.description),
    //     ),
    //     const Text(
    //       'Abilities',
    //       textAlign: TextAlign.center,
    //     ),
    //     ...state.pokemon.abilities.map<Widget>(
    //       (e) => ListTile(
    //         title: Text(e.name),
    //         subtitle: Text(e.description),
    //         leading: Text(e.generation.name.split('-').last.toUpperCase()),
    //       ),
    //     ),
    //     const Text(
    //       'Stats',
    //       textAlign: TextAlign.center,
    //     ),
    //     ...state.pokemon.stats.map<Widget>(
    //       (e) => ListTile(
    //         title: Text(e.name),
    //         subtitle: Text('${e.baseStat}'),
    //         leading: Text('+${e.effort}'),
    //       ),
    //     ),
    //   ],
    // );

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
          turns: Tween(begin: 0.0, end: 1.0).animate(_animationController!),
          child: Image.asset(
            'assets/images/pokeball.png',
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
      padding: const EdgeInsets.only(top: 8, bottom: 24),
      color: widget.baseColor,
      child: Column(
        children: [
          pokemonSprite,
          const SizedBox(height: 16),
          pokemonTypes,
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
      body: BlocBuilder<PokemonDetailBloc, PokemonDetailState>(
        builder: (context, state) {
          return Column(
            children: [
              header,
              Expanded(
                child: ListView(
                  children: const [
                    SizedBox(height: 1000),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    Future.delayed(const Duration(milliseconds: 250), () {
      _animationController?.repeat();
    });

    // get pokemon detail
    BlocProvider.of<PokemonDetailBloc>(context).add(
      GetPokemonDetailEvent(id: widget.pokemon.id),
    );
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }
}
