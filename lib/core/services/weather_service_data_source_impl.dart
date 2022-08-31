import 'package:awesome_weather/core/services/weather_service_data_source.dart';
import 'package:awesome_weather/features/weather_viewer/data/models/open_weather/geo_coding_model.dart';
import 'package:awesome_weather/features/weather_viewer/data/models/open_weather/open_weather_model.dart';

class WeatherServiceDataSourceImpl implements WeatherServiceDataSource {
  @override
  List<OpenWeatherGeocodeModel> getGeocodingInfo({
    required String cityName,
  }) {
    // TODO: implement getGeocodingInfo
    throw UnimplementedError();
  }

  @override
  OpenWeatherModel getForecastWeather() {
    // TODO: implement getForecastWeather
    throw UnimplementedError();
  }

  @override
  void getCurrentWeather({required String city}) {
    // TODO: implement getCurrentWeather
    throw UnimplementedError();
  }
}
