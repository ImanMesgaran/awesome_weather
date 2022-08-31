import 'package:awesome_weather/core/services/map_box_service.dart';
import 'package:awesome_weather/core/services/weather_service_data_source.dart';
import 'package:awesome_weather/core/services/weather_service_data_source_impl.dart';
import 'package:awesome_weather/features/weather_viewer/data/datasources/weather_local_data_source.dart';
import 'package:awesome_weather/features/weather_viewer/data/datasources/weather_local_data_source_impl.dart';
import 'package:awesome_weather/features/weather_viewer/data/datasources/weather_remote_data_source.dart';
import 'package:awesome_weather/features/weather_viewer/data/datasources/weather_remote_data_source_impl.dart';
import 'package:awesome_weather/features/weather_viewer/data/repositories/weather_repository_impl.dart';
import 'package:awesome_weather/features/weather_viewer/domain/repositories/weather_repository.dart';
import 'package:awesome_weather/features/weather_viewer/domain/usecases/get_current_weather_details.dart';
import 'package:awesome_weather/features/weather_viewer/domain/usecases/get_places.dart';
import 'package:awesome_weather/features/weather_viewer/domain/usecases/get_forecast_weather_details.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/cubit/bottom_navigation_bar_cubit/navigation_bar_cubit.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/cubit/mapbox_cubit/mapbox_cubit.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/cubit/weather_cubit/weather_cubit.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/cubit/global_setting_cubit/global_setting_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/network/dio_client/dio_client_service.dart';
import 'core/network/network_info.dart';

GetIt getIt = GetIt.instance;

Future<void> init() async {
  // * Bloc's
  getIt.registerFactory(
    () => WeatherCubit(
      getPlaces: getIt(),
      getCurrentWeatherDetails: getIt(),
      getForecastWeatherDetails: getIt(),
    ),
  );

  getIt.registerFactory(() => NavigationBarCubit());
  getIt.registerFactory(() => MapBoxCubit());
  getIt.registerFactory(() => GlobalSettingCubit(sharedPreferences: getIt()));

  // * Use Cases
  // ! Weather Cubit UseCases
  getIt.registerLazySingleton(() => GetPlaces(getIt()));
  getIt.registerLazySingleton(() => GetCurrentWeatherDetails(getIt()));
  getIt.registerLazySingleton(() => GetForecastWeatherDetails(getIt()));

  // * Repository
  // ! Weather repository
  getIt.registerLazySingleton<WeatherRepository>(() => WeatherRepositoryImpl(
        localDataSource: getIt(),
        remoteDataSource: getIt(),
        networkInfo: getIt(),
      ));

  // * Data Sources
  // ! Weather DataSources
  getIt.registerLazySingleton<WeatherRemoteDataSource>(
    () => WeatherRemoteDataSourceImpl(
      client: getIt(),
      mapBoxService: getIt(),
    ),
  );

  getIt.registerLazySingleton<WeatherLocalDataSource>(
      () => WeatherLocalDataSourceImpl(sharedPreferences: getIt()));

  //! Core
  getIt.registerLazySingleton<NetworkConnection>(() => NetworkConnection());
  getIt.registerLazySingleton<WeatherServiceDataSource>(
      () => WeatherServiceDataSourceImpl());
  // registering mapbox service to use it's features when targeted api
  // doesn't have place lookup, etc features
  getIt.registerLazySingleton<MapBoxService>(() => MapBoxService());

  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => sharedPreferences);
  getIt.registerFactory(() => Dio());
  getIt.registerLazySingleton(() => RestClient(getIt()));
}
