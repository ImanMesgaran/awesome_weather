import 'package:awesome_weather/core/services/weather_service_data_source.dart';
import 'package:awesome_weather/features/weather_viewer/domain/entities/weather_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:latlong2/latlong.dart';

import '../../../../core/error/failures.dart';
import '../repositories/weather_repository.dart';

class GetCurrentWeatherDetails {
  final WeatherRepository repository;

  GetCurrentWeatherDetails(this.repository);
  Future<Either<Failure, WeatherEntity?>> call({
    required LatLng latLng,
    required WeatherAPIProviders provider,
  }) async {
    var result = await repository.getCurrentWeatherDetails(
      latLng: latLng,
      provider: provider,
    );
    return result;
  }
}
