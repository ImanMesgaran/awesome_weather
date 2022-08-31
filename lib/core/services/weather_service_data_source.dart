enum WeatherAPIProviders { WeatherStack, OpenWeatherMap }

abstract class WeatherServiceDataSource {
  List<dynamic> getGeocodingInfo({required String cityName});
  dynamic getForecastWeather();
  void getCurrentWeather({required String city});
}
