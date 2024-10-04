import 'package:awesome_weather/core/global/colors.dart';
import 'package:awesome_weather/core/services/weather_service_data_source.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/cubit/global_setting_cubit/global_setting_cubit.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/cubit/mapbox_cubit/mapbox_cubit.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/cubit/weather_cubit/weather_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherAPIServiceWidget extends StatelessWidget {
  const WeatherAPIServiceWidget({
    Key? key,
    required WeatherAPIProviders weatherAPIProvider,
  })  : _weatherApiProvider = weatherAPIProvider,
        super(key: key);

  final WeatherAPIProviders _weatherApiProvider;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 8, right: 8, bottom: 8),
          child: Text(
            "Weather API Provider:",
            style: TextStyle(
              color: app_accent_color,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        // Weather stack api end-point
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            color: app_accent_color.withOpacity(0.1),
          ),
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8),
                  Text(
                    "Weather Stack API",
                    style: TextStyle(color: app_accent_color),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "www.weatherstack.com",
                    style: TextStyle(color: app_accent_color, fontSize: 12),
                  ),
                  SizedBox(height: 8),
                ],
              ),
              Radio(
                value: WeatherAPIProviders.WeatherStack.index,
                groupValue: _weatherApiProvider.index,
                onChanged: (int? value) {
                  context.read<GlobalSettingCubit>().changeAPIProvider(
                      provider: WeatherAPIProviders.WeatherStack);

                  final _currentLocation =
                      context.read<MapBoxCubit>().state.currentUserLocation;
                  context.read<WeatherCubit>().loadCurrentWeather(
                        coordinates: _currentLocation,
                        apiProvider: WeatherAPIProviders.WeatherStack,
                      );
                },
                activeColor: app_accent_color,
              )
            ],
          ),
        ),
        Divider(height: 1),
        // open weather map api end-point
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8)),
            color: app_accent_color.withOpacity(0.1),
          ),
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8),
                  Text(
                    "Open Weather Map API",
                    style: TextStyle(color: app_accent_color),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "www.openweathermap.com",
                    style: TextStyle(color: app_accent_color, fontSize: 12),
                  ),
                  SizedBox(height: 8),
                ],
              ),
              Radio(
                value: WeatherAPIProviders.OpenWeatherMap.index,
                groupValue: _weatherApiProvider.index,
                onChanged: (int? value) {
                  context.read<GlobalSettingCubit>().changeAPIProvider(
                      provider: WeatherAPIProviders.OpenWeatherMap);

                  final _currentLocation =
                      context.read<MapBoxCubit>().state.currentUserLocation;
                  context.read<WeatherCubit>().loadCurrentWeather(
                        coordinates: _currentLocation,
                        apiProvider: WeatherAPIProviders.OpenWeatherMap,
                      );
                },
                activeColor: app_accent_color,
              )
            ],
          ),
        ),

        Divider(height: 1),
      ],
    );
  }
}
