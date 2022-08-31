import 'package:awesome_weather/core/services/weather_service_data_source.dart';
import 'package:awesome_weather/features/weather_viewer/data/models/open_weather/open_weather_model.dart';
import 'package:dartz/dartz.dart';
import 'package:latlong2/latlong.dart';

import '../../../../core/error/failures.dart';
import '../repositories/weather_repository.dart';

class GetForecastWeatherDetails {
  final WeatherRepository repository;

  GetForecastWeatherDetails(this.repository);
  Future<Either<Failure, OpenWeatherModel?>> call({
    required LatLng latLng,
    required WeatherAPIProviders provider,
  }) async {
    var result = await repository.getForecastWeatherDetails(
      latLng: latLng,
      provider: provider,
    );
    return result;
  }
}
