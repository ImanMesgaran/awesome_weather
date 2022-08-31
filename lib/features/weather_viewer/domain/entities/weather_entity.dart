import 'package:awesome_weather/core/util/weather_converters.dart';
import 'package:awesome_weather/features/weather_viewer/data/models/open_weather/open_forecast_model.dart';
import 'package:awesome_weather/features/weather_viewer/data/models/weather_stack/weather_model.dart';
import 'package:equatable/equatable.dart';

class WeatherEntity extends Equatable {
  final double? temprature;
  final String? weatherIcon;
  final int timezone;
  final DateTime localTime;
  final String? city;
  final String? weatherDescription;
  final double? wind;
  final double? humidity;
  final double? pressure;
  // this params are only available in OpenWeather API
  final double? minTemprature;
  final double? maxTemprature;
  final DateTime? sunrise;
  final DateTime? sunset;

  WeatherEntity({
    required this.temprature,
    this.minTemprature,
    this.maxTemprature,
    required this.weatherIcon,
    this.sunrise,
    this.sunset,
    required this.timezone,
    required this.localTime,
    required this.city,
    required this.weatherDescription,
    required this.wind,
    required this.humidity,
    required this.pressure,
  });

  @override
  List<Object?> get props => [
        temprature,
        minTemprature,
        maxTemprature,
        weatherIcon,
        sunrise,
        sunset,
        timezone,
        localTime,
        city,
        weatherDescription,
        wind,
        humidity,
        pressure,
      ];

  static WeatherEntity? fromOpenForecastModel(OpenForecastModel response) {
    final _sunsetValue = DateTime.fromMillisecondsSinceEpoch(
        (response.sys?.sunset ?? 1) * 1000,
        isUtc: true);
    DateTime _calculatedSunsetValue =
        _sunsetValue.add(Duration(seconds: response.timezone ?? 0));

    final _sunriseValue = DateTime.fromMillisecondsSinceEpoch(
        (response.sys?.sunrise ?? 1) * 1000,
        isUtc: true);
    DateTime _calculatedSunriseValue =
        _sunriseValue.add(Duration(seconds: response.timezone ?? 0));

    return WeatherEntity(
      city: response.name,
      temprature: response.forecastMainModel?.temp,
      weatherIcon: response.weather?[0].icon,
      weatherDescription: response.weather?[0].description,
      sunset: _calculatedSunsetValue,
      sunrise: _calculatedSunriseValue,
      timezone: response.timezone!,
      localTime: DateTime.now(),
      minTemprature: response.forecastMainModel?.tempMin,
      maxTemprature: response.forecastMainModel?.tempMax,
      wind: response.wind?.speed,
      pressure: double.tryParse(
        response.forecastMainModel?.pressure.toString() ?? "",
      ),
      humidity: double.tryParse(
          response.forecastMainModel?.humidity.toString() ?? ""),
    );
  }

  static WeatherEntity? fromWeatherStackModel(WeatherStackModel response) {
    final _temprature = Temperature(
            (double.tryParse(response.current?.temperature.toString() ?? "")) ??
                0)
        .as(TemperatureUnit.kelvin)
        ?.round();

    return WeatherEntity(
        city: response.location?.name,
        temprature: double.tryParse(_temprature.toString()),
        weatherIcon: response.current?.weatherIcons?[0],
        weatherDescription: response.current?.weatherDescriptions?[0],
        sunset: null,
        sunrise: null,
        timezone:
            (int.tryParse(response.location?.utcOffset.toString() ?? "") ?? 0) *
                3600,
        localTime:
            DateTime.tryParse(response.location?.localtime.toString() ?? "") ??
                DateTime.now(),
        minTemprature: null,
        maxTemprature: null,
        wind: double.tryParse(response.current?.windSpeed.toString() ?? ""),
        pressure: double.tryParse(response.current?.pressure.toString() ?? ""),
        humidity: double.tryParse(response.current?.humidity.toString() ?? ""));
  }
}
