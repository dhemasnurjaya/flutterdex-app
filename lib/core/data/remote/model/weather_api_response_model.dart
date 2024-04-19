import 'package:json_annotation/json_annotation.dart';

part 'weather_api_response_model.g.dart';

@JsonSerializable()
class WeatherApiResponseModel {
  final WeatherApiLocationModel? location;
  final WeatherApiErrorModel? error;

  WeatherApiResponseModel({
    required this.location,
    required this.error,
  });

  factory WeatherApiResponseModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherApiResponseModelFromJson(json);
}

@JsonSerializable()
class WeatherApiLocationModel {
  final String name;
  final String region;
  final String country;

  const WeatherApiLocationModel({
    required this.name,
    required this.region,
    required this.country,
  });

  factory WeatherApiLocationModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherApiLocationModelFromJson(json);
}

@JsonSerializable()
class WeatherApiErrorModel {
  final int code;
  final String message;

  const WeatherApiErrorModel({
    required this.code,
    required this.message,
  });

  factory WeatherApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherApiErrorModelFromJson(json);
}
