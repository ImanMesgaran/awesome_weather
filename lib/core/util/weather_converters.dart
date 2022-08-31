import 'package:awesome_weather/core/models/weather_icon_mapper.dart';
import 'package:flutter/material.dart';

intToDouble(dynamic val) {
  if (val.runtimeType == double) {
    return val;
  } else if (val.runtimeType == int) {
    return val.toDouble();
  } else {
    throw new Exception("value is not of type 'int' or 'double' got type '" +
        val.runtimeType.toString() +
        "'");
  }
}

enum TemperatureUnit { kelvin, celsius, fahrenheit }

class Temperature {
  final double? _kelvin;

  Temperature(this._kelvin);

  double? get kelvin => _kelvin;

  double? get celsius => _kelvin != null ? _kelvin! - 273.15 : null;

  double? get fahrenheit =>
      _kelvin != null ? _kelvin! * (9 / 5) - 459.67 : null;

  double? as(TemperatureUnit unit) {
    switch (unit) {
      case TemperatureUnit.kelvin:
        return this.kelvin;
      case TemperatureUnit.celsius:
        return this.celsius;
      case TemperatureUnit.fahrenheit:
        return this.fahrenheit;
    }
  }

  IconData getIconData(String iconCode) {
    switch (iconCode) {
      case '01d':
        return WeatherIcons.clear_day;
      case '01n':
        return WeatherIcons.clear_night;
      case '02d':
        return WeatherIcons.few_clouds_day;
      case '02n':
        return WeatherIcons.few_clouds_day;
      case '03d':
      case '04d':
        return WeatherIcons.clouds_day;
      case '03n':
      case '04n':
        return WeatherIcons.clear_night;
      case '09d':
        return WeatherIcons.shower_rain_day;
      case '09n':
        return WeatherIcons.shower_rain_night;
      case '10d':
        return WeatherIcons.rain_day;
      case '10n':
        return WeatherIcons.rain_night;
      case '11d':
        return WeatherIcons.thunder_storm_day;
      case '11n':
        return WeatherIcons.thunder_storm_night;
      case '13d':
        return WeatherIcons.snow_day;
      case '13n':
        return WeatherIcons.snow_night;
      case '50d':
        return WeatherIcons.mist_day;
      case '50n':
        return WeatherIcons.mist_night;
      default:
        return WeatherIcons.clear_day;
    }
  }
}
