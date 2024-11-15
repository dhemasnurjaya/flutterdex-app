import 'package:flutterdex/data/models/pokemon_evolution_model.dart';
import 'package:flutterdex/domain/entities/pokemon_basic_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_evolutions.freezed.dart';

@freezed
class PokemonEvolutions with _$PokemonEvolutions {
  factory PokemonEvolutions({
    required List<PokemonEvolution> evolutionChains,
  }) = _PokemonEvolutions;
}

@freezed
class PokemonEvolution with _$PokemonEvolution {
  factory PokemonEvolution({
    required PokemonBasicInfo pokemon,
    required bool isBaby,
    required int? evolvesFromSpeciesId,
    required List<String> evolutionTriggers,
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
  }) = _PokemonEvolution;

  factory PokemonEvolution.fromModel(PokemonEvolutionModel model) =>
      PokemonEvolution(
        pokemon: PokemonBasicInfo(
          id: model.id,
          name: model.name,
          genus: model.genus,
          types: model.types.split(','),
        ),
        isBaby: model.isBaby,
        evolvesFromSpeciesId: model.evolvesFromSpeciesId,
        evolutionTriggers: model.evolutionTriggers?.split(',') ?? [],
        minLevel: model.minLevel,
        heldItem: model.heldItem,
        evolutionItem: model.evolutionItem,
        timeOfDay: model.timeOfDay,
        minHappiness: model.minHappiness,
        minAffection: model.minAffection,
        minBeauty: model.minBeauty,
        relativePhysicalStats: model.relativePhysicalStats,
        needsOverworldRain: model.needsOverworldRain,
        turnUpsideDown: model.turnUpsideDown,
      );
}
