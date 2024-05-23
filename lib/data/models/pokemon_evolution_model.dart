import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_evolution_model.freezed.dart';
part 'pokemon_evolution_model.g.dart';

@freezed
class PokemonEvolutionModel with _$PokemonEvolutionModel {
  const factory PokemonEvolutionModel({
    required int id,
    required String name,
    required String types,
    required String genus,
    required bool isBaby,
    required int? evolvesFromSpeciesId,
    required String? evolutionTriggers,
    required int? minLevel,
    required String? heldItem,
    required String? evolutionItem,
    required String? timeOfDay,
    required int? minHappiness,
    required int? minAffection,
    required int? minBeauty,
    required int? relativePhysicalStats,
    required bool? needsOverworldRain,
    required bool? turnUpsideDown,
  }) = _PokemonEvolutionModel;

  factory PokemonEvolutionModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonEvolutionModelFromJson(json);
}
