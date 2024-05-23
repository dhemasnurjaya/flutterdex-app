// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_evolution_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonEvolutionModelImpl _$$PokemonEvolutionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonEvolutionModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      types: json['types'] as String,
      genus: json['genus'] as String,
      isBaby: json['isBaby'] as bool,
      evolvesFromSpeciesId: (json['evolvesFromSpeciesId'] as num?)?.toInt(),
      evolutionTriggers: json['evolutionTriggers'] as String?,
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

Map<String, dynamic> _$$PokemonEvolutionModelImplToJson(
        _$PokemonEvolutionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'types': instance.types,
      'genus': instance.genus,
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
