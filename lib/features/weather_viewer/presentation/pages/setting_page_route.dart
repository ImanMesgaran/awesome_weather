import 'package:awesome_weather/core/global/colors.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/cubit/global_setting_cubit/global_setting_cubit.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/widgets/setting/temprature_unit_widget.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/widgets/setting/weather_api_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPageRoute extends StatelessWidget {
  const SettingsPageRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _temperatureUnit =
        context.watch<GlobalSettingCubit>().state.temperatureUnit;
    final _weatherApiProvider =
        context.watch<GlobalSettingCubit>().state.apiProvider;

    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 15),
      child: ListView(
        children: <Widget>[
          TempratureUnitWidget(temperatureUnit: _temperatureUnit),
          WeatherAPIServiceWidget(weatherAPIProvider: _weatherApiProvider),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: app_accent_color.withOpacity(0.1),
            ),
            margin: EdgeInsets.symmetric(vertical: 20),
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Text(
              'Iman Mesgaran, August 2022',
              style: TextStyle(color: app_accent_color),
            ),
          )
        ],
      ),
    );
  }
}
