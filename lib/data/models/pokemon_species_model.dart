import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_species_model.freezed.dart';

@freezed
abstract class PokemonSpeciesModel with _$PokemonSpeciesModel {
  const factory PokemonSpeciesModel({
    required int id,
    required String name,
    required int height,
    required int weight,
    required int genderRate,
    required int captureRate,
    required int? baseHappiness,
    required bool isBaby,
    required int? hatchCounter,
    required String description,
    required String growthRate,
  }) = _PokemonSpeciesModel;
}
