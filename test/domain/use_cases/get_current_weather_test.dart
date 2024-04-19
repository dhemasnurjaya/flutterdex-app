import 'package:flutterdex/core/error/failure.dart';
import 'package:flutterdex/domain/entities/current_weather.dart';
import 'package:flutterdex/domain/repositories/weather_api_repository.dart';
import 'package:flutterdex/domain/use_cases/get_current_weather.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_current_weather_test.mocks.dart';

@GenerateMocks([WeatherApiRepository])
void main() {
  late GetCurrentWeather useCase;
  late MockWeatherApiRepository weatherApiRepository;

  setUp(() {
    weatherApiRepository = MockWeatherApiRepository();
    useCase = GetCurrentWeather(weatherApiRepository: weatherApiRepository);
  });

  test('should call getCurrentWeather from WeatherApiRepository', () async {
    // Arrange
    const tCity = 'London';
    const tParams = GetCurrentWeatherParams(city: tCity);
    final tCurrentWeather = CurrentWeather(
      lastUpdated: DateTime.now(),
      tempC: 0.0,
      windKph: 0.0,
      windDir: '',
      precipMm: 0.0,
      humidity: 0,
      cloud: 0,
      conditionText: '',
      conditionIcon: '',
      locationName: '',
      locationRegion: '',
      locationCountry: '',
    );

    provideDummy<Either<Failure, CurrentWeather>>(right(tCurrentWeather));
    when(weatherApiRepository.getCurrentWeather(tCity))
        .thenAnswer((_) async => right(tCurrentWeather));

    // Act
    final result = await useCase.execute(tParams);

    // Assert
    expect(result, isA<Right<Failure, CurrentWeather>>());
    expect(result.isRight(), true);
    verify(weatherApiRepository.getCurrentWeather(tCity));
    verifyNoMoreInteractions(weatherApiRepository);
  });
}
