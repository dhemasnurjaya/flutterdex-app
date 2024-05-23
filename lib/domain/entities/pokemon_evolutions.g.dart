// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_evolutions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonEvolutionsImpl _$$PokemonEvolutionsImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonEvolutionsImpl(
      evolutionChains: (json['evolutionChains'] as List<dynamic>)
          .map((e) => PokemonEvolution.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonEvolutionsImplToJson(
        _$PokemonEvolutionsImpl instance) =>
    <String, dynamic>{
      'evolutionChains': instance.evolutionChains,
    };

_$PokemonEvolutionImpl _$$PokemonEvolutionImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonEvolutionImpl(
      pokemon:
          PokemonBasicInfo.fromJson(json['pokemon'] as Map<String, dynamic>),
      isBaby: json['isBaby'] as bool,
      evolvesFromSpeciesId: (json['evolvesFromSpeciesId'] as num?)?.toInt(),
      evolutionTriggers: (json['evolutionTriggers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      minLevel: (json['minLevel'] as num?)?.toInt(),
      heldItem: json['heldItem'] as String?,
      evolutionItem: json['evolutionItem'] as String?,
      timeOfDay: json['timeOfDay'] as String?,
      minHappiness: (json['minHappiness'] as num?)?.toInt(),
      minAffection: (json['minAffection'] as num?)?.toInt(),
      minBeauty: (json['minBeauty'] as num?)?.toInt(),
      relativePhysicalStats: (json['relativePhysicalStats'] as num?)?.toInt(),
      needsOverworldRain: json['needsOverworldRain'] as bool?,
      turnUpsideDown: json['turnUpsideDown'] as bool?,
    );

Map<String, dynamic> _$$PokemonEvolutionImplToJson(
        _$PokemonEvolutionImpl instance) =>
    <String, dynamic>{
      'pokemon': instance.pokemon,
      'isBaby': instance.isBaby,
      'evolvesFromSpeciesId': instance.evolvesFromSpeciesId,
      'evolutionTriggers': instance.evolutionTriggers,
      'minLevel': instance.minLevel,
      'heldItem': instance.heldItem,
      'evolutionItem': instance.evolutionItem,
      'timeOfDay': instance.timeOfDay,
      'minHappiness': instance.minHappiness,
      'minAffection': instance.minAffection,
      'minBeauty': instance.minBeauty,
      'relativePhysicalStats': instance.relativePhysicalStats,
      'needsOverworldRain': instance.needsOverworldRain,
      'turnUpsideDown': instance.turnUpsideDown,
    };
