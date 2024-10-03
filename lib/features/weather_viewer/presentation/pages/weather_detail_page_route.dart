import 'package:awesome_weather/core/global/colors.dart';
import 'package:awesome_weather/core/global/text_styles.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/cubit/global_setting_cubit/global_setting_cubit.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/cubit/mapbox_cubit/mapbox_cubit.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/cubit/weather_cubit/weather_cubit.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/widgets/skeleton_widgets/skeleton_widgets.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/widgets/weather/weather_initial_widget.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/widgets/weather/weather_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherForecastPageRoute extends StatefulWidget {
  WeatherForecastPageRoute({Key? key}) : super(key: key);

  @override
  State<WeatherForecastPageRoute> createState() =>
      _WeatherForecastPageRouteState();
}

class _WeatherForecastPageRouteState extends State<WeatherForecastPageRoute> {
  int selectedValue = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherCubit, WeatherState>(
      bloc: context.read<WeatherCubit>(),
      listener: (context, weatherState) {
        // TODO: implement listener
      },
      builder: (context, weatherState) {
        return RefreshIndicator(
          onRefresh: () async => await _retryWeatherGet(),
          child: ListView(
            physics: AlwaysScrollableScrollPhysics(),
            children: [
              // current weather widget
              if (weatherState.isCurrentWeatherLoaded)
                WeatherWidget(
                  weatherState: weatherState,
                ),
              if (weatherState.isForcastDetailLoading) SizedBox(height: 60),
              if (weatherState.isForcastDetailLoading)
                WeatherForecastSkeleton(),
              if (weatherState.isCurrentWeatherLoading) SizedBox(height: 60),
              if (weatherState.isCurrentWeatherLoading)
                WeatherDetailsSkeleton(),
              // weather forecast widget
              if (weatherState.isInitialWeatherState &&
                  !weatherState.isCurrentWeatherLoading &&
                  !(weatherState.isCurrentWeatherFailure ||
                      weatherState.isForecastFailure))
                WeatherInitialWidget(),
              if (!weatherState.isCurrentWeatherLoading &&
                  (weatherState.isCurrentWeatherFailure ||
                      weatherState.isForecastFailure))
                _buildRetryWeatherWidget(state: weatherState),
            ],
          ),
        );
      },
    );
  }

  _buildRetryWeatherWidget({required WeatherState state}) {
    return GestureDetector(
      onTap: () => _retryWeatherGet(),
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.fromLTRB(20, 70, 20, 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          color: app_accent_color.withOpacity(0.4),
        ),
        child: Column(
          children: [
            WeatherDetailsSkeleton(),
            SizedBox(height: 12),
            SizedBox(height: 12),
            Text(
              'error occured when fetching, please retry again!',
              style: black_17_700,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 18),
            Icon(
              Icons.replay_outlined,
              size: 30,
              color: Colors.white,
            ),
            WeatherForecastSkeleton(),
            SizedBox(height: 18),
          ],
        ),
      ),
    );
  }

  _retryWeatherGet() async {
    final _currentLocation =
        context.read<MapBoxCubit>().state.currentUserLocation;

    // load weather details for last known user selected location (Lat/Lng)
    // and with the selected api provider. if userDefaultLocation is null,
    // it will get the weather information for the default location
    context.read<WeatherCubit>().loadCurrentWeather(
          apiProvider: context.read<GlobalSettingCubit>().state.apiProvider,
          coordinates: _currentLocation,
        );
  }
}
