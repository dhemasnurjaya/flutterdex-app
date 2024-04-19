import 'package:flutterdex/core/presentation/bloc/error_state.dart';
import 'package:flutterdex/domain/entities/current_weather.dart';
import 'package:flutterdex/domain/use_cases/get_current_weather.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'current_weather_events.dart';
part 'current_weather_states.dart';

class CurrentWeatherBloc
    extends Bloc<CurrentWeatherEvent, CurrentWeatherState> {
  final GetCurrentWeather getCurrentWeather;

  CurrentWeatherBloc({
    required this.getCurrentWeather,
  }) : super(const CurrentWeatherInitialState()) {
    on<GetCurrentWeatherEvent>(_onGetCurrentWeatherEvent);
  }

  Future<void> _onGetCurrentWeatherEvent(
    GetCurrentWeatherEvent event,
    Emitter<CurrentWeatherState> emit,
  ) async {
    emit(const CurrentWeatherLoadingState());

    final result = await getCurrentWeather.execute(
      GetCurrentWeatherParams(city: event.city),
    );

    result.fold(
      (l) => emit(CurrentWeatherErrorState(message: l.message)),
      (r) => emit(CurrentWeatherLoadedState(currentWeather: r)),
    );
  }
}
