import 'package:flutterdex/data/models/current_weather_model.dart';

class CurrentWeather {
  final DateTime? lastUpdated;
  final double? tempC;
  final double? feelslikeC;
  final double? windKph;
  final String? windDir;
  final double? precipMm;
  final int? humidity;
  final int? cloud;
  final double? visKm;
  final double? uv;
  final String? conditionText;
  final String? conditionIcon;
  final String? locationName;
  final String? locationRegion;
  final String? locationCountry;

  const CurrentWeather({
    this.lastUpdated,
    this.tempC,
    this.feelslikeC,
    this.windKph,
    this.windDir,
    this.precipMm,
    this.humidity,
    this.cloud,
    this.visKm,
    this.uv,
    this.conditionText,
    this.conditionIcon,
    this.locationName,
    this.locationRegion,
    this.locationCountry,
  });

  factory CurrentWeather.fromModel(CurrentWeatherModel model) => CurrentWeather(
        lastUpdated: model.data?.lastUpdated,
        tempC: model.data?.tempC,
        feelslikeC: model.data?.feelslikeC,
        windKph: model.data?.windKph,
        windDir: model.data?.windDir,
        precipMm: model.data?.precipMm,
        humidity: model.data?.humidity,
        cloud: model.data?.cloud,
        visKm: model.data?.visKm,
        uv: model.data?.uv,
        conditionText: model.data?.condition.text,
        conditionIcon: model.data?.condition.icon,
        locationName: model.location?.name,
        locationRegion: model.location?.region,
        locationCountry: model.location?.country,
      );
}
