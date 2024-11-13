import 'package:flutterdex/data/models/pokemon_egg_group_model.dart';
import 'package:flutterdex/data/models/pokemon_species_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_detail_info.freezed.dart';

@freezed
class PokemonDetailInfo with _$PokemonDetailInfo {
  factory PokemonDetailInfo({
    required int id,
    required String name,
    required double heightInMeter,
    required double weightInKg,
    required double? malePercentage,
    required double? femalePercentage,
    required double capturePercentage,
    required int? baseFriendship,
    required bool isBaby,
    required int? hatchCounter,
    required String description,
    required String growthRate,
    required List<String> eggGroups,
  }) = _PokemonDetailInfo;

  factory PokemonDetailInfo.fromModels(
    PokemonSpeciesModel species,
    List<PokemonEggGroupModel> eggGroups,
  ) {
    final heightInMeter = species.height / 10;
    final weightInKg = species.weight / 10;
    final isGenderless = species.genderRate == -1;
    final femalePercentage =
        isGenderless ? null : (species.genderRate / 8.0) * 100;
    final malePercentage = isGenderless ? null : 100 - femalePercentage!;
    final capturePercentage = (species.captureRate / 255.0) * 100;

    return PokemonDetailInfo(
      id: species.id,
      name: species.name,
      heightInMeter: heightInMeter,
      weightInKg: weightInKg,
      malePercentage: malePercentage,
      femalePercentage: femalePercentage,
      capturePercentage: capturePercentage,
      baseFriendship: species.baseHappiness,
      isBaby: species.isBaby,
      hatchCounter: species.hatchCounter,
      description: species.description,
      growthRate: species.growthRate,
      eggGroups: eggGroups.map((e) => e.name).toList(),
    );
  }
}
