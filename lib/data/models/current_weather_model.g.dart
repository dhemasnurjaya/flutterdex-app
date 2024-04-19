// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentWeatherModel _$CurrentWeatherModelFromJson(Map<String, dynamic> json) =>
    CurrentWeatherModel(
      data: json['current'] == null
          ? null
          : WeatherApiDataModel.fromJson(
              json['current'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : WeatherApiLocationModel.fromJson(
              json['location'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : WeatherApiErrorModel.fromJson(
              json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CurrentWeatherModelToJson(
        CurrentWeatherModel instance) =>
    <String, dynamic>{
      'location': instance.location,
      'error': instance.error,
      'current': instance.data,
    };

WeatherApiDataModel _$WeatherApiDataModelFromJson(Map<String, dynamic> json) =>
    WeatherApiDataModel(
      lastUpdated: DateTime.parse(json['last_updated'] as String),
      tempC: (json['temp_c'] as num).toDouble(),
      feelslikeC: (json['feelslike_c'] as num).toDouble(),
      condition: WeatherApiConditionModel.fromJson(
          json['condition'] as Map<String, dynamic>),
      windKph: (json['wind_kph'] as num).toDouble(),
      windDir: json['wind_dir'] as String,
      precipMm: (json['precip_mm'] as num).toDouble(),
      humidity: json['humidity'] as int,
      cloud: json['cloud'] as int,
      visKm: (json['vis_km'] as num).toDouble(),
      uv: (json['uv'] as num).toDouble(),
    );

Map<String, dynamic> _$WeatherApiDataModelToJson(
        WeatherApiDataModel instance) =>
    <String, dynamic>{
      'last_updated': instance.lastUpdated.toIso8601String(),
      'temp_c': instance.tempC,
      'feelslike_c': instance.feelslikeC,
      'condition': instance.condition,
      'wind_kph': instance.windKph,
      'wind_dir': instance.windDir,
      'precip_mm': instance.precipMm,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
      'vis_km': instance.visKm,
      'uv': instance.uv,
    };

WeatherApiConditionModel _$WeatherApiConditionModelFromJson(
        Map<String, dynamic> json) =>
    WeatherApiConditionModel(
      text: json['text'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$WeatherApiConditionModelToJson(
        WeatherApiConditionModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'icon': instance.icon,
    };
