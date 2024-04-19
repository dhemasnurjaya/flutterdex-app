import 'package:flutterdex/core/network/network.dart';
import 'package:flutterdex/data/data_sources/remote/weather_api_remote_source.dart';
import 'package:flutterdex/data/models/current_weather_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'weather_api_remote_source_test.mocks.dart';

@GenerateMocks([Network])
void main() {
  late MockNetwork network;
  late WeatherApiRemoteSource weatherApiRemoteSource;

  setUp(() {
    network = MockNetwork();
    weatherApiRemoteSource = WeatherApiRemoteSourceImpl(network: network);
  });

  group('getCurrentWeather', () {
    test('should return CurrentWeatherModel when getCurrentWeather is called',
        () async {
      // Arrange
      const tCity = 'London';
      const tResponse = '''
{
  "location": {
    "name": "London",
    "region": "City of London, Greater London",
    "country": "United Kingdom",
    "lat": 51.52,
    "lon": -0.11,
    "tz_id": "Europe/London",
    "localtime_epoch": 1711175113,
    "localtime": "2024-03-23 6:25"
  },
  "current": {
    "last_updated_epoch": 1711174500,
    "last_updated": "2024-03-23 06:15",
    "temp_c": 4.0,
    "temp_f": 39.2,
    "is_day": 1,
    "condition": {
      "text": "Sunny",
      "icon": "//cdn.weatherapi.com/weather/64x64/day/113.png",
      "code": 1000
    },
    "wind_mph": 9.4,
    "wind_kph": 15.1,
    "wind_degree": 260,
    "wind_dir": "W",
    "pressure_mb": 1013.0,
    "pressure_in": 29.91,
    "precip_mm": 0.0,
    "precip_in": 0.0,
    "humidity": 81,
    "cloud": 0,
    "feelslike_c": -0.0,
    "feelslike_f": 31.9,
    "vis_km": 10.0,
    "vis_miles": 6.0,
    "uv": 2.0,
    "gust_mph": 16.7,
    "gust_kph": 26.9
  }
}
''';

      when(network.get(any)).thenAnswer(
        (_) async => tResponse,
      );

      // Act
      final result = await weatherApiRemoteSource.getCurrentWeather(tCity);

      // Assert
      expect(result, isA<CurrentWeatherModel>());
    });
  });
}
