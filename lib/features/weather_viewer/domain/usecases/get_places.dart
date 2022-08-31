import 'package:awesome_weather/core/services/weather_service_data_source.dart';
import 'package:awesome_weather/features/weather_viewer/domain/entities/location_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../repositories/weather_repository.dart';

class GetPlaces {
  final WeatherRepository repository;

  GetPlaces(this.repository);

  Future<Either<Failure, List<LocationEntity>?>> call({
    required String query,
    required WeatherAPIProviders provider,
  }) async {
    var result = await repository.getPlaces(
      query: query,
      provider: provider,
    );
    return result;
  }
}
