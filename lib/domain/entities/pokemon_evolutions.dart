import 'package:flutterdex/data/models/pokemon_evolution_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_evolutions.freezed.dart';
part 'pokemon_evolutions.g.dart';

@freezed
class PokemonEvolutions with _$PokemonEvolutions {
  factory PokemonEvolutions({
    required List<PokemonEvolution> evolutionChains,
  }) = _PokemonEvolutions;

  factory PokemonEvolutions.fromJson(Map<String, dynamic> json) =>
      _$PokemonEvolutionsFromJson(json);
}

@freezed
class PokemonEvolution with _$PokemonEvolution {
  factory PokemonEvolution({
    required int id,
    required bool isBaby,
    required String name,
    required int? evolvesFromSpeciesId,
    required String? evolutionTrigger,
    required int? minLevel,
    required String? timeOfDay,
    required int? minHappiness,
    required int? minAffection,
    required int? minBeauty,
    required int? relativePhysicalStats,
    required bool? needsOverworldRain,
    required bool? turnUpsideDown,
  }) = _PokemonEvolution;

  factory PokemonEvolution.fromModel(PokemonEvolutionModel model) =>
      PokemonEvolution(
        id: model.id,
        isBaby: model.isBaby,
        name: model.name,
        evolvesFromSpeciesId: model.evolvesFromSpeciesId,
        evolutionTrigger: model.evolutionTrigger,
        minLevel: model.minLevel,
        timeOfDay: model.timeOfDay,
        minHappiness: model.minHappiness,
        minAffection: model.minAffection,
        minBeauty: model.minBeauty,
        relativePhysicalStats: model.relativePhysicalStats,
        needsOverworldRain: model.needsOverworldRain,
        turnUpsideDown: model.turnUpsideDown,
      );

  factory PokemonEvolution.fromJson(Map<String, dynamic> json) =>
      _$PokemonEvolutionFromJson(json);
}