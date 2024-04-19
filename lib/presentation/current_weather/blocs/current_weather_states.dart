part of 'current_weather_bloc.dart';

abstract class CurrentWeatherState extends Equatable {
  const CurrentWeatherState();
}

class CurrentWeatherInitialState extends CurrentWeatherState {
  const CurrentWeatherInitialState();

  @override
  List<Object?> get props => [];
}

class CurrentWeatherLoadingState extends CurrentWeatherState {
  const CurrentWeatherLoadingState();

  @override
  List<Object?> get props => [];
}

class CurrentWeatherLoadedState extends CurrentWeatherState {
  final CurrentWeather currentWeather;

  const CurrentWeatherLoadedState({required this.currentWeather});

  @override
  List<Object?> get props => [currentWeather];
}

class CurrentWeatherErrorState extends CurrentWeatherState
    implements ErrorState {
  @override
  final String message;

  @override
  final Exception? cause;

  const CurrentWeatherErrorState({required this.message, this.cause});

  @override
  List<Object?> get props => [message, cause];
}
