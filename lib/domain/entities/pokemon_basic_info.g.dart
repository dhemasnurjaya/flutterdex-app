// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_basic_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonBasicInfoImpl _$$PokemonBasicInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonBasicInfoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      genus: json['genus'] as String,
      types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PokemonBasicInfoImplToJson(
        _$PokemonBasicInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'genus': instance.genus,
      'types': instance.types,
    };
