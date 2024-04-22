import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterdex/domain/entities/pokemon.dart';
import 'package:flutterdex/injection_container.dart';
import 'package:flutterdex/presentation/pokemon_colors.dart';
import 'package:flutterdex/utilities/color_utility.dart';
import 'package:flutterdex/utilities/string_extension.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonCard({
    required this.pokemon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: pokemonColors[pokemon.types.first.name],
      ),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const SizedBox(width: 4),
              _pokemonImage(pokemon.id),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    pokemon.name.toTitleCase(),
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: pokemon.types
                        .map<Widget>((type) => _pokemonTypeChip(type.name))
                        .toList(),
                  ),
                ],
              ),
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/images/pokeball.png',
                opacity: const AlwaysStoppedAnimation(0.05),
              ),
              Text(
                '#${pokemon.id.toString().padLeft(4, '0')}',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color:
                          darken(pokemonColors[pokemon.types.first.name]!, 25),
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _pokemonImage(int id) {
    const placeholderSpritePath = 'assets/sprites/pokemon/0.png';
    final spritesPath = 'assets/sprites/pokemon/$id.png';
    final isSpriteAvailable =
        getIt<AssetManifest>().listAssets().contains(spritesPath);

    return FadeInImage(
      placeholder: Image.asset(placeholderSpritePath).image,
      image: Image.asset(
        isSpriteAvailable ? spritesPath : placeholderSpritePath,
      ).image,
    );
  }

  Widget _pokemonTypeChip(String type) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white30,
      ),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      margin: const EdgeInsets.only(right: 4),
      child: Text(type.toTitleCase()),
    );
  }
}
