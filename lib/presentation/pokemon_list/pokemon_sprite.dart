import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterdex/injection_container.dart';

class PokemonSprite extends StatelessWidget {
  final int pokemonId;

  const PokemonSprite(
    this.pokemonId, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const placeholderSpritePath = 'assets/sprites/pokemon/0.png';
    final spritesPath = 'assets/sprites/pokemon/$pokemonId.png';
    final isSpriteAvailable =
        getIt<AssetManifest>().listAssets().contains(spritesPath);

    return FadeInImage(
      placeholder: Image.asset(placeholderSpritePath).image,
      fit: BoxFit.cover,
      image: Image.asset(
        isSpriteAvailable ? spritesPath : placeholderSpritePath,
      ).image,
    );
  }
}
