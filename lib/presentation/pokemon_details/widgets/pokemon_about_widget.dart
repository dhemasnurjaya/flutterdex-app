import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/domain/entities/pokemon_detail_info.dart';
import 'package:flutterdex/presentation/pokemon_details/bloc/pokemon_details/pokemon_details_bloc.dart';
import 'package:flutterdex/utilities/color_utility.dart';
import 'package:flutterdex/utilities/string_extension.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PokemonAboutWidget extends StatefulWidget {
  const PokemonAboutWidget({
    required this.pokemonId,
    required this.baseColor,
    super.key,
  });

  final int pokemonId;
  final Color baseColor;

  @override
  State<PokemonAboutWidget> createState() => _PokemonAboutWidgetState();
}

class _PokemonAboutWidgetState extends State<PokemonAboutWidget> {
  @override
  void initState() {
    super.initState();

    // get pokemon detail
    BlocProvider.of<PokemonDetailsBloc>(context).add(
      GetPokemonDetailsEvent(pokemonId: widget.pokemonId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonDetailsBloc, PokemonDetailsState>(
      builder: (context, state) {
        if (state is PokemonDetailsLoadedState) {
          return Column(
            children: [
              _buildDescription(context, state.pokemonDetail),
              _buildInfoRow(context, state.pokemonDetail),
            ],
          );
        }

        return const SizedBox();
      },
    );
  }

  Widget _buildInfoRow(
    BuildContext context,
    PokemonDetailInfo pokemonDetailInfo,
  ) {
    Widget aboutItem({
      required String title,
      required String? value,
      required String unit,
      required IconData icon,
    }) =>
        Row(
          children: [
            SizedBox(
              height: 30,
              width: 30,
              child: Center(
                child: FaIcon(
                  icon,
                  color: lighten(widget.baseColor),
                ),
              ),
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: Theme.of(context).disabledColor,
                          height: 1,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    value != null ? value + unit : '-',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          height: 1,
                        ),
                  ),
                ],
              ),
            ),
          ],
        );

    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 3 / 1,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      children: [
        aboutItem(
          title: 'Height',
          value: pokemonDetailInfo.heightInMeter.toString(),
          unit: ' m',
          icon: FontAwesomeIcons.rulerVertical,
        ),
        aboutItem(
          title: 'Weight',
          value: pokemonDetailInfo.weightInKg.toString(),
          unit: ' kg',
          icon: FontAwesomeIcons.weightScale,
        ),
        aboutItem(
          title: 'Male Rate',
          value: pokemonDetailInfo.malePercentage?.toStringAsFixed(1),
          unit: '%',
          icon: FontAwesomeIcons.mars,
        ),
        aboutItem(
          title: 'Female Rate',
          value: pokemonDetailInfo.femalePercentage?.toStringAsFixed(1),
          unit: '%',
          icon: FontAwesomeIcons.venus,
        ),
        aboutItem(
          title: 'Capture Rate',
          value: pokemonDetailInfo.capturePercentage.toStringAsFixed(1),
          unit: '%',
          icon: FontAwesomeIcons.bullseye,
        ),
        aboutItem(
          title: 'Base Friendship',
          value: pokemonDetailInfo.baseFriendship?.toString(),
          unit: '',
          icon: FontAwesomeIcons.faceSmileBeam,
        ),
        aboutItem(
          title: 'Egg Groups',
          value: pokemonDetailInfo.eggGroups.join(', '),
          unit: '',
          icon: FontAwesomeIcons.egg,
        ),
        aboutItem(
          title: 'Hatch Counter',
          value: pokemonDetailInfo.hatchCounter != null
              ? '~${pokemonDetailInfo.hatchCounter! * 255}'
              : null,
          unit: ' steps',
          icon: FontAwesomeIcons.shoePrints,
        ),
        aboutItem(
          title: 'Growth Rate',
          value: pokemonDetailInfo.growthRate.toTitleCase(),
          unit: '',
          icon: FontAwesomeIcons.seedling,
        ),
      ],
    );
  }

  Widget _buildDescription(
    BuildContext context,
    PokemonDetailInfo pokemonDetailInfo,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Text(
        pokemonDetailInfo.description.replaceAll(RegExp(r'\s+'), ' ').trim(),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
