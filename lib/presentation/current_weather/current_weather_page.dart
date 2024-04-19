import 'package:auto_route/auto_route.dart';
import 'package:flutterdex/core/router/app_router.dart';
import 'package:flutterdex/presentation/current_weather/blocs/current_weather_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CurrentWeatherPage extends StatefulWidget {
  const CurrentWeatherPage({super.key});

  @override
  State<CurrentWeatherPage> createState() => _CurrentWeatherPageState();
}

class _CurrentWeatherPageState extends State<CurrentWeatherPage> {
  final _cityTextCtl = TextEditingController();
  final _cityTextFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Current Weather'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              context.router.push(const AppSettingsRoute());
            },
          ),
        ],
      ),
      body: BlocBuilder<CurrentWeatherBloc, CurrentWeatherState>(
        builder: (context, state) {
          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              TextField(
                controller: _cityTextCtl,
                focusNode: _cityTextFocus,
                decoration: const InputDecoration(
                  hintText: 'City',
                ),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  context.read<CurrentWeatherBloc>().add(
                        GetCurrentWeatherEvent(
                          city: _cityTextCtl.text,
                        ),
                      );
                },
                child: const Text('Get Weather'),
              ),
              const SizedBox(height: 16),
              _buildWeather(state),
            ],
          );
        },
      ),
    );
  }

  Widget _buildWeather(CurrentWeatherState state) {
    if (state is CurrentWeatherLoadedState) {
      _cityTextFocus.unfocus();

      final weatherIconUrl =
          'https:${state.currentWeather.conditionIcon ?? '//placehold.co/64x64/png'}';

      return Column(
        children: [
          Image.network(weatherIconUrl),
          Text(
            state.currentWeather.conditionText ?? '-',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
              '${state.currentWeather.locationName}, ${state.currentWeather.locationRegion}'),
          Text('${state.currentWeather.locationCountry}'),
          const SizedBox(height: 16),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              _buildDataCard(
                'Temp (C)',
                '${state.currentWeather.tempC ?? '-'}',
              ),
              _buildDataCard(
                'Feels Like (C)',
                '${state.currentWeather.feelslikeC ?? '-'}',
              ),
              _buildDataCard(
                'Wind (km/h)',
                '${state.currentWeather.windKph ?? '-'}',
              ),
              _buildDataCard(
                'Wind Dir',
                state.currentWeather.windDir,
              ),
              _buildDataCard(
                'Precip (mm)',
                '${state.currentWeather.precipMm ?? '-'}',
              ),
              _buildDataCard(
                'Humidity (%)',
                '${state.currentWeather.humidity ?? '-'}',
              ),
              _buildDataCard(
                'Cloud (%)',
                '${state.currentWeather.cloud ?? '-'}',
              ),
              _buildDataCard(
                'Vis (km)',
                '${state.currentWeather.visKm ?? '-'}',
              ),
              _buildDataCard(
                'UV',
                '${state.currentWeather.uv ?? '-'}',
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            'Last Updated: ${state.currentWeather.lastUpdated}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      );
    }

    if (state is CurrentWeatherLoadingState) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state is CurrentWeatherErrorState) {
      return Text(state.message);
    }

    return const SizedBox();
  }

  Widget _buildDataCard(String header, String? content) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(header, textAlign: TextAlign.center),
          Text(
            content ?? '-',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ],
      ),
    );
  }
}
