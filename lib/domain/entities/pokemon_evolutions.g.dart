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
      id: (json['id'] as num).toInt(),
      isBaby: json['isBaby'] as bool,
      name: json['name'] as String,
      evolvesFromSpeciesId: (json['evolvesFromSpeciesId'] as num?)?.toInt(),
      evolutionTrigger: json['evolutionTrigger'] as String?,
      minLevel: (json['minLevel'] as num?)?.toInt(),
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
      'id': instance.id,
      'isBaby': instance.isBaby,
      'name': instance.name,
      'evolvesFromSpeciesId': instance.evolvesFromSpeciesId,
      'evolutionTrigger': instance.evolutionTrigger,
      'minLevel': instance.minLevel,
      'timeOfDay': instance.timeOfDay,
      'minHappiness': instance.minHappiness,
      'minAffection': instance.minAffection,
      'minBeauty': instance.minBeauty,
      'relativePhysicalStats': instance.relativePhysicalStats,
      'needsOverworldRain': instance.needsOverworldRain,
      'turnUpsideDown': instance.turnUpsideDown,
    };
