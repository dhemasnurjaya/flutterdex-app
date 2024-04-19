part of 'current_weather_bloc.dart';

abstract class CurrentWeatherEvent extends Equatable {
  const CurrentWeatherEvent();
}

class GetCurrentWeatherEvent extends CurrentWeatherEvent {
  final String city;

  const GetCurrentWeatherEvent({required this.city});

  @override
  List<Object?> get props => [city];
}
