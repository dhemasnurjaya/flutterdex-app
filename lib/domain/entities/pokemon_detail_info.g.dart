// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonDetailInfoImpl _$$PokemonDetailInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonDetailInfoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      heightInMeter: (json['heightInMeter'] as num).toDouble(),
      weightInKg: (json['weightInKg'] as num).toDouble(),
      malePercentage: (json['malePercentage'] as num?)?.toDouble(),
      femalePercentage: (json['femalePercentage'] as num?)?.toDouble(),
      capturePercentage: (json['capturePercentage'] as num).toDouble(),
      baseFriendship: (json['baseFriendship'] as num?)?.toInt(),
      isBaby: json['isBaby'] as bool,
      hatchCounter: (json['hatchCounter'] as num?)?.toInt(),
      description: json['description'] as String,
      growthRate: json['growthRate'] as String,
      eggGroups:
          (json['eggGroups'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PokemonDetailInfoImplToJson(
        _$PokemonDetailInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'heightInMeter': instance.heightInMeter,
      'weightInKg': instance.weightInKg,
      'malePercentage': instance.malePercentage,
      'femalePercentage': instance.femalePercentage,
      'capturePercentage': instance.capturePercentage,
      'baseFriendship': instance.baseFriendship,
      'isBaby': instance.isBaby,
      'hatchCounter': instance.hatchCounter,
      'description': instance.description,
      'growthRate': instance.growthRate,
      'eggGroups': instance.eggGroups,
    };
