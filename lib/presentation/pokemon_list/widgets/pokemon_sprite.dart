import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterdex/injection_container.dart';

class PokemonSprite extends StatelessWidget {
  final int pokemonId;
  final EdgeInsets padding;

  const PokemonSprite(
    this.pokemonId, {
    this.padding = EdgeInsets.zero,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const placeholderSpritePath = 'assets/images/pokeball.png';
    final spritesPath = 'assets/sprites/pokemon/$pokemonId.webp';
    final isSpriteAvailable =
        getIt<AssetManifest>().listAssets().contains(spritesPath);

    return Padding(
      padding: padding,
      child: FadeInImage(
        fit: BoxFit.cover,
        placeholder: Image.asset(placeholderSpritePath).image,
        image: Image.asset(
          isSpriteAvailable ? spritesPath : placeholderSpritePath,
        ).image,
      ),
    );
  }
}
