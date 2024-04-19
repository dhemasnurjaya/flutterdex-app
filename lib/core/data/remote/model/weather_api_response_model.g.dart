// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_api_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherApiResponseModel _$WeatherApiResponseModelFromJson(
        Map<String, dynamic> json) =>
    WeatherApiResponseModel(
      location: json['location'] == null
          ? null
          : WeatherApiLocationModel.fromJson(
              json['location'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : WeatherApiErrorModel.fromJson(
              json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherApiResponseModelToJson(
        WeatherApiResponseModel instance) =>
    <String, dynamic>{
      'location': instance.location,
      'error': instance.error,
    };

WeatherApiLocationModel _$WeatherApiLocationModelFromJson(
        Map<String, dynamic> json) =>
    WeatherApiLocationModel(
      name: json['name'] as String,
      region: json['region'] as String,
      country: json['country'] as String,
    );

Map<String, dynamic> _$WeatherApiLocationModelToJson(
        WeatherApiLocationModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'country': instance.country,
    };

WeatherApiErrorModel _$WeatherApiErrorModelFromJson(
        Map<String, dynamic> json) =>
    WeatherApiErrorModel(
      code: json['code'] as int,
      message: json['message'] as String,
    );

Map<String, dynamic> _$WeatherApiErrorModelToJson(
        WeatherApiErrorModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
