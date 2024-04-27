import 'package:cached_network_image/cached_network_image.dart';
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
    final localImage = FadeInImage(
      fit: BoxFit.cover,
      placeholder: Image.asset(placeholderSpritePath).image,
      image: Image.asset(
        isSpriteAvailable ? spritesPath : placeholderSpritePath,
      ).image,
    );

    return Padding(
      padding: const EdgeInsets.all(10),
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        placeholder: (_, __) => Image.asset(placeholderSpritePath),
        imageUrl:
            'https://raw.githubusercontent.com/HybridShivam/Pokemon/master/assets/images/${pokemonId.toString().padLeft(3, '0')}.png',
        errorWidget: (_, __, ___) => localImage,
      ),
    );
  }
}
