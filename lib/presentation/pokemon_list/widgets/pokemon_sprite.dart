import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterdex/injection_container.dart';

class PokemonSprite extends StatelessWidget {
  const PokemonSprite(
    this.pokemonId, {
    this.padding = EdgeInsets.zero,
    this.height = 120.0,
    super.key,
  });
  final int pokemonId;
  final EdgeInsets padding;
  final double height;

  @override
  Widget build(BuildContext context) {
    const placeholderSpritePath = 'assets/images/pokeball.webp';
    final spritesPath = 'assets/sprites/pokemon/$pokemonId.webp';
    final isSpriteAvailable =
        getIt<AssetManifest>().listAssets().contains(spritesPath);

    return Padding(
      padding: padding,
      child: FadeInImage(
        fit: BoxFit.cover,
        height: height,
        placeholder: Image.asset(placeholderSpritePath).image,
        image: Image.asset(
          isSpriteAvailable ? spritesPath : placeholderSpritePath,
        ).image,
      ),
    );
  }
}
