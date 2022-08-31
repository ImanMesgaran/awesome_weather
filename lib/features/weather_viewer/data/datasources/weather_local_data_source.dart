import 'package:awesome_weather/core/services/weather_service_data_source.dart';
import 'package:awesome_weather/features/weather_viewer/data/models/open_weather/open_weather_model.dart';
import 'package:awesome_weather/features/weather_viewer/domain/entities/location_entity.dart';
import 'package:awesome_weather/features/weather_viewer/domain/entities/weather_entity.dart';
import 'package:latlong2/latlong.dart';

abstract class WeatherLocalDataSource {
  Future<List<LocationEntity>?> getPlaces({
    required String query,
    required WeatherAPIProviders provider,
  });

  Future<WeatherEntity?> getCurrentWeatherDetails({
    required LatLng latLng,
    required WeatherAPIProviders provider,
  });

  Future<OpenWeatherModel?> getForecastWeatherDetails({
    required LatLng latLng,
    required WeatherAPIProviders provider,
  });
}
