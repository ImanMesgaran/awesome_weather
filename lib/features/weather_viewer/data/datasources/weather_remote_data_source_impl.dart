import 'package:awesome_weather/core/models/app_constants.dart';
import 'package:awesome_weather/core/services/map_box_service.dart';
import 'package:awesome_weather/core/services/weather_service_data_source.dart';
import 'package:awesome_weather/features/weather_viewer/data/models/open_weather/open_weather_model.dart';
import 'package:awesome_weather/features/weather_viewer/domain/entities/location_entity.dart';
import 'package:awesome_weather/features/weather_viewer/domain/entities/weather_entity.dart';
import 'package:dio/dio.dart';
import 'package:latlong2/latlong.dart';
import 'package:logger/logger.dart';

import '../../../../core/error/http_error_actions.dart';
import '../../../../core/error/server_response_models/function_errors_enum.dart';
import '../../../../core/network/dio_client/dio_client_service.dart';
import 'weather_remote_data_source.dart';

class WeatherRemoteDataSourceImpl implements WeatherRemoteDataSource {
  final RestClient client;
  final logger = Logger();
  final MapBoxService mapBoxService;

  WeatherRemoteDataSourceImpl({
    required this.client,
    required this.mapBoxService,
  });

  @override
  Future<List<LocationEntity>?> getPlaces({
    required String query,
    required WeatherAPIProviders provider,
  }) async {
    try {
      List<LocationEntity>? _locationEntity;

      // if Weather api provider is openweathermap, use it
      if (provider == WeatherAPIProviders.OpenWeatherMap) {
        final response = await client
            .getPlaces_wm(
          AppConstants.OPEN_WEATHER_MAP_API_KEY,
          query,
          5,
        )
            .then((value) {
          logger.i(value);
          return value;
        });

        _locationEntity = response
            .map((e) => LocationEntity(
                  name: e.name,
                  latitude: e.lat,
                  longitude: e.lon,
                ))
            .toList();
      }
      // if Weather api provider is weatherstack, use mapbox place lookup for city names
      else if (provider == WeatherAPIProviders.WeatherStack) {
        // getPlaces from MapBox api, as this is a paid feature of OpenStack
        final response = await mapBoxService.searchPlaces(query).then((value) {
          logger.i(value);
          return value;
        });

        _locationEntity = response
            ?.map((e) => LocationEntity(
                  name: e.name,
                  latitude: e.latitude,
                  longitude: e.longitude,
                ))
            .toList();
      }

      return _locationEntity;
    } on DioError catch (e, s) {
      OnDioErrorActions(
        exception: e,
        stackTrace: s,
        functionErrorType: FunctionsErrorType.getPlaces,
      );
      return null;
    }
  }

  @override
  Future<WeatherEntity?> getCurrentWeatherDetails({
    required LatLng latLng,
    required WeatherAPIProviders provider,
  }) async {
    try {
      WeatherEntity? _weatherEntity;

      if (provider == WeatherAPIProviders.OpenWeatherMap) {
        final response = await client
            .getCurrentWeatherDetails_wm(
          AppConstants.OPEN_WEATHER_MAP_API_KEY,
          latLng.latitude,
          latLng.longitude,
        )
            .then((value) {
          logger.i(value);
          return value;
        });

        _weatherEntity = WeatherEntity.fromOpenForecastModel(response);
      } else if (provider == WeatherAPIProviders.WeatherStack) {
        final response = await client
            .getCurrentWeatherDetails_ws(
          AppConstants.WEATHER_STACK_MAP_API_KEY,
          "${latLng.latitude}, ${latLng.longitude}",
        )
            .then((value) {
          logger.i(value);
          return value;
        });

        _weatherEntity = WeatherEntity.fromWeatherStackModel(response);
      }

      return _weatherEntity;
    } on DioError catch (e, s) {
      OnDioErrorActions(
        exception: e,
        stackTrace: s,
        functionErrorType: FunctionsErrorType.getCurrentWeatherDetails,
      );
      return null;
    }
  }

  @override
  Future<OpenWeatherModel?> getForecastWeatherDetails({
    required LatLng latLng,
    required WeatherAPIProviders provider,
  }) async {
    try {
      dynamic response;

      if (provider == WeatherAPIProviders.OpenWeatherMap) {
        response = await client
            .getWeatherForecastDetails_wm(
          AppConstants.OPEN_WEATHER_MAP_API_KEY,
          latLng.latitude,
          latLng.longitude,
        )
            .then((value) {
          logger.i(value);
          return value;
        });
      } else if (provider == WeatherAPIProviders.WeatherStack) {
        //  can't use OpenStack for forecast, as this is a paid feature of OpenStack
        throw UnimplementedError();
      }

      return response;
    } on DioError catch (e, s) {
      OnDioErrorActions(
        exception: e,
        stackTrace: s,
        functionErrorType: FunctionsErrorType.getForecastWeatherDetails,
      );
      return null;
    }
  }
}
