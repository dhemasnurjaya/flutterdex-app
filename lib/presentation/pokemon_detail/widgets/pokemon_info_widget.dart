import 'package:flutter/material.dart';
import 'package:flutterdex/domain/entities/pokemon_detail_info.dart';
import 'package:flutterdex/utilities/color_utility.dart';

class PokemonInfoWidget extends StatelessWidget {
  final PokemonDetailInfo pokemonDetailInfo;
  final Color baseColor;

  const PokemonInfoWidget({
    required this.pokemonDetailInfo,
    required this.baseColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      children: [
        _buildInfoGridItem(
          context,
          'Height',
          '${pokemonDetailInfo.heightInMeter}',
          'm',
        ),
        _buildInfoGridItem(
          context,
          'Weight',
          '${pokemonDetailInfo.weightInKg}',
          'kg',
        ),
        _buildInfoGridItem(
          context,
          'Happiness',
          pokemonDetailInfo.baseHappinessPercentage.toStringAsFixed(1),
          '%',
        ),
        _buildInfoGridItem(
          context,
          'Capture Rate',
          pokemonDetailInfo.capturePercentage.toStringAsFixed(1),
          '%',
        ),
        _buildInfoGridItem(
          context,
          'Male Rate',
          pokemonDetailInfo.malePercentage?.toStringAsFixed(1) ?? '-',
          '%',
        ),
        _buildInfoGridItem(
          context,
          'Female Rate',
          pokemonDetailInfo.femalePercentage?.toStringAsFixed(1) ?? '-',
          '%',
        ),
      ],
    );
  }

  Widget _buildInfoGridItem(
    BuildContext context,
    String title,
    String value,
    String unit,
  ) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(
        color: lighten(baseColor, 10),
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
}
