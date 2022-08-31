import 'package:awesome_weather/features/weather_viewer/data/models/open_weather/geo_coding_model.dart';
import 'package:awesome_weather/features/weather_viewer/data/models/open_weather/open_forecast_model.dart';
import 'package:awesome_weather/features/weather_viewer/data/models/open_weather/open_weather_model.dart';
import 'package:awesome_weather/features/weather_viewer/data/models/weather_stack/weather_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/api_path.dart';

part 'dio_client_service.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  // Weather Stack end-point clients
  @GET(
      "${AppApiPath.weatherStackBaseUrl}${AppApiPath.WS_currentWeatherByLatLng}&units=s")
  Future<WeatherStackModel> getCurrentWeatherDetails_ws(
    @Query("access_key") String apiKey,
    @Query("query") String query,
  );

  // Open Weather Map end-point clients
  @GET("${AppApiPath.weatherMapBaseUrl}${AppApiPath.WM_geocodingByCityName}")
  Future<List<OpenWeatherGeocodeModel>> getPlaces_wm(
    @Query("appid") String apiKey,
    @Query("q") String query,
    @Query("limit") int limit,
  );

  @GET("${AppApiPath.weatherMapBaseUrl}${AppApiPath.WM_currentWeatherByLatLng}")
  Future<OpenForecastModel> getCurrentWeatherDetails_wm(
    @Query("appid") String apiKey,
    @Query("lat") double latitude,
    @Query("lon") double longitude,
  );

  @GET("${AppApiPath.weatherMapBaseUrl}${AppApiPath.WM_forecastByLatLng}")
  Future<OpenWeatherModel> getWeatherForecastDetails_wm(
    @Query("appid") String apiKey,
    @Query("lat") double latitude,
    @Query("lon") double longitude,
  );
}
