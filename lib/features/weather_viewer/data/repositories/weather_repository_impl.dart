import 'package:awesome_weather/core/network/network_info.dart';
import 'package:awesome_weather/core/services/weather_service_data_source.dart';
import 'package:awesome_weather/features/weather_viewer/data/models/open_weather/open_weather_model.dart';
import 'package:awesome_weather/features/weather_viewer/domain/entities/location_entity.dart';
import 'package:awesome_weather/features/weather_viewer/domain/entities/weather_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:latlong2/latlong.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/repositories/weather_repository.dart';
import '../datasources/weather_local_data_source.dart';
import '../datasources/weather_remote_data_source.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherRemoteDataSource remoteDataSource;
  final WeatherLocalDataSource localDataSource;
  final NetworkConnection networkInfo;

  WeatherRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<LocationEntity>?>> getPlaces({
    required String query,
    required WeatherAPIProviders provider,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getPlaces(
          query: query,
          provider: provider,
        );

        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(serverException: e));
      }
    } else {
      try {
        final localResult = await localDataSource.getPlaces(
          query: query,
          provider: provider,
        );
        return Right(localResult);
      } on CacheException {
        return Left(CacheFailure(message: 'getPlaces cache failure'));
      }
    }
  }

  @override
  Future<Either<Failure, WeatherEntity?>> getCurrentWeatherDetails({
    required LatLng latLng,
    required WeatherAPIProviders provider,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getCurrentWeatherDetails(
          latLng: latLng,
          provider: provider,
        );

        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(serverException: e));
      }
    } else {
      try {
        final localResult = await localDataSource.getCurrentWeatherDetails(
          latLng: latLng,
          provider: provider,
        );
        return Right(localResult);
      } on CacheException {
        return Left(CacheFailure(message: 'getWeatherDetails cache failure'));
      }
    }
  }

  @override
  Future<Either<Failure, OpenWeatherModel?>> getForecastWeatherDetails({
    required LatLng latLng,
    required WeatherAPIProviders provider,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getForecastWeatherDetails(
          latLng: latLng,
          provider: provider,
        );

        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure(serverException: e));
      }
    } else {
      try {
        final localResult = await localDataSource.getForecastWeatherDetails(
          latLng: latLng,
          provider: provider,
        );
        return Right(localResult);
      } on CacheException {
        return Left(CacheFailure(message: 'getWeatherDetails cache failure'));
      }
    }
  }
}
