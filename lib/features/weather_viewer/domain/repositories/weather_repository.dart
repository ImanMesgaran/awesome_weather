import 'package:awesome_weather/core/services/weather_service_data_source.dart';
import 'package:awesome_weather/features/weather_viewer/data/models/open_weather/open_weather_model.dart';
import 'package:awesome_weather/features/weather_viewer/domain/entities/location_entity.dart';
import 'package:awesome_weather/features/weather_viewer/domain/entities/weather_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:latlong2/latlong.dart';

import '../../../../core/error/failures.dart';

abstract class WeatherRepository {
  Future<Either<Failure, List<LocationEntity>?>> getPlaces({
    required String query,
    required WeatherAPIProviders provider,
  });

  Future<Either<Failure, WeatherEntity?>> getCurrentWeatherDetails({
    required LatLng latLng,
    required WeatherAPIProviders provider,
  });

  Future<Either<Failure, OpenWeatherModel?>> getForecastWeatherDetails({
    required LatLng latLng,
    required WeatherAPIProviders provider,
  });
}
