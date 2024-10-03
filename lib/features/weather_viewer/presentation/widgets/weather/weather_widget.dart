import 'package:awesome_weather/core/global/colors.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/cubit/weather_cubit/weather_cubit.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/widgets/weather/condition_tile.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/widgets/weather/current_weather_widget.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/widgets/weather/forecast_widget.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/widgets/weather/line_spacer_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeatherWidget extends StatelessWidget {
  final WeatherState weatherState;

  WeatherWidget({required this.weatherState});

  // TODO: fix and improve documentation
  // TODO: implement some unit test
  // TODO: implement some UI test
  // TODO: support Horizontal and Vertical Layout
  // TODO: fix and improve color organization and theming
  // TODO: add dynamic theming base on temprature or weather condition
  // TODO: move date time calculations to extension methods

  @override
  Widget build(BuildContext context) {
    String _sunsetTime = this.weatherState.currentWeather?.sunset != null
        ? DateFormat('h:m a').format(this.weatherState.currentWeather!.sunset!)
        : "N/A";
    String _sunriseTime = this.weatherState.currentWeather?.sunrise != null
        ? DateFormat('h:mm a')
            .format(this.weatherState.currentWeather!.sunrise!)
        : "N/A";

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 18),
        Container(
          width: MediaQuery.of(context).size.width - 30,
          alignment: Alignment.centerLeft,
          child: Text(
            DateFormat('EEEE, MMM d, yyyy').format(DateTime.now()),
            style: TextStyle(
              fontSize: 18,
              letterSpacing: 5,
              color: app_accent_color,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 25),
        Text(
          this.weatherState.currentWeather?.city?.toUpperCase() ?? "",
          style: TextStyle(
            fontSize: 25,
            letterSpacing: 5,
            color: app_accent_color,
            fontWeight: FontWeight.w900,
          ),
        ),
        SizedBox(height: 20),
        Text(
          this.weatherState.currentWeather?.weatherDescription?.toUpperCase() ??
              "",
          style: TextStyle(
            fontSize: 15,
            letterSpacing: 5,
            fontWeight: FontWeight.w100,
            color: app_accent_color,
          ),
        ),
        CurrentConditions(weatherState: weatherState),
        if (weatherState.weatherForecastDetails != null)
          Padding(
            child: Divider(
              color: app_accent_color.withAlpha(50),
            ),
            padding: EdgeInsets.all(10),
          ),
        if (weatherState.weatherForecastDetails != null)
          ForecastHorizontal(
              weathers: weatherState.weatherForecastDetails!.list),
        Padding(
          child: Divider(
            color: app_accent_color.withAlpha(50),
          ),
          padding: EdgeInsets.all(5),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ConditionTile("wind speed",
                      '${this.weatherState.currentWeather?.wind} m/s'),
                  LineSpacerWidget(),
                  ConditionTile(
                    "humidity",
                    '${this.weatherState.currentWeather?.humidity}%',
                  ),
                  LineSpacerWidget(),
                  ConditionTile(
                    "pressure",
                    '${this.weatherState.currentWeather?.pressure}',
                  ),
                  LineSpacerWidget(),
                  ConditionTile("sunrise", _sunriseTime),
                  LineSpacerWidget(),
                  ConditionTile("sunset", _sunsetTime),
                ]),
          ),
        ),
        SizedBox(height: 12),
      ],
    );
  }
}
