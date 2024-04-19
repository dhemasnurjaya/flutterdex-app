import 'package:flutterdex/core/error/failure.dart';
import 'package:flutterdex/domain/entities/current_weather.dart';
import 'package:fpdart/fpdart.dart';

abstract class WeatherApiRepository {
  Future<Either<Failure, CurrentWeather>> getCurrentWeather(String city);
}
