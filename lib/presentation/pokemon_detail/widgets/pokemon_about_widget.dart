import 'package:flutter/material.dart';
import 'package:flutterdex/domain/entities/pokemon_detail_info.dart';
import 'package:flutterdex/utilities/color_utility.dart';

class PokemonAboutWidget extends StatelessWidget {
  const PokemonAboutWidget({
    required this.pokemonDetailInfo,
    required this.baseColor,
    super.key,
  });

  final PokemonDetailInfo pokemonDetailInfo;
  final Color baseColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'About',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w800,
                color: darken(baseColor),
              ),
        ),
        const SizedBox(height: 8),
        _buildInfoRow(context),
        _buildDescription(context),
      ],
    );
  }

  Widget _buildInfoRow(BuildContext context) {
    Widget aboutItem({
      required String title,
      required String value,
      required String unit,
    }) {
      return SizedBox(
        width: 120,
        height: 80,
        child: Stack(
          children: [
            Positioned(
              top: 8,
              left: 8,
              right: 8,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Theme.of(context).disabledColor,
                    ),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(
                value,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
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

    final divider = Container(
      width: 0.5,
      height: 50,
      color: darken(baseColor, 20),
    );

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            aboutItem(
              title: 'Height',
              value: pokemonDetailInfo.heightInMeter.toString(),
              unit: 'm',
            ),
            divider,
            aboutItem(
              title: 'Weight',
              value: pokemonDetailInfo.weightInKg.toString(),
              unit: 'kg',
            ),
            divider,
            aboutItem(
              title: 'Capture Rate',
              value: pokemonDetailInfo.capturePercentage.toStringAsFixed(1),
              unit: '%',
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDescription(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      child: Text(
        pokemonDetailInfo.description.replaceAll(RegExp(r'\s+'), ' ').trim(),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
