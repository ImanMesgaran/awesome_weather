import 'dart:async';
import 'package:awesome_weather/core/services/weather_service_data_source.dart';
import 'package:awesome_weather/features/weather_viewer/data/models/open_weather/geo_coding_model.dart';
import 'package:awesome_weather/features/weather_viewer/data/models/open_weather/open_weather_model.dart';
import 'package:awesome_weather/features/weather_viewer/domain/entities/location_entity.dart';
import 'package:awesome_weather/features/weather_viewer/domain/entities/weather_entity.dart';
import 'package:awesome_weather/features/weather_viewer/domain/usecases/get_current_weather_details.dart';
import 'package:awesome_weather/features/weather_viewer/domain/usecases/get_places.dart';
import 'package:awesome_weather/features/weather_viewer/domain/usecases/get_forecast_weather_details.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:latlong2/latlong.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../core/error/failures.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final GetPlaces getPlaces;
  final GetCurrentWeatherDetails getCurrentWeatherDetails;
  final GetForecastWeatherDetails getForecastWeatherDetails;

  StreamSubscription<List<OpenWeatherGeocodeModel>?>? _results;
  BehaviorSubject<String> _searchQueryController =
      BehaviorSubject<String>.seeded("");

  WeatherCubit({
    required this.getPlaces,
    required this.getCurrentWeatherDetails,
    required this.getForecastWeatherDetails,
  }) : super(WeatherState.initial());

  void emitState(WeatherState weatherState) {
    emit(weatherState);
  }

  void loadPlaces({
    required String query,
    required WeatherAPIProviders apiProvider,
  }) async {
    emit(
      WeatherState.loading(prevState: state).copyWith(
        arePlacesLoading: true,
        arePlacesLoaded: false,
        isForcastDetailLoading: false,
        isCurrentWeatherLoading: false,
      ),
    );

    //_results =
    _searchQueryController
        .distinct()
        .debounceTime(Duration(milliseconds: 500))
        .switchMap((value) async* {
      yield await getPlaces.call(query: query, provider: apiProvider);
    }).doOnError((error, stacktrace) {
      print('doOnError: $error');
      print(stacktrace);
      emit(state.copyWith(isPlacesFailure: true, query: query));
    }).listen((event) {
      event.fold(
        (failure) {
          emit(
            WeatherState.failure(
                prevState: state, serverFailure: failure as ServerFailure),
          );
        },
        (placesData) {
          emit(
            WeatherState.loadedPlaces(
              prevState: state,
              query: query,
              places: placesData ?? <LocationEntity>[],
            ),
          );
        },
      );
    });
  }

  void hidePlacesListView() {
    emit(state.copyWith(arePlacesVisible: false));
  }

  void loadCurrentWeather({
    required LatLng coordinates,
    required WeatherAPIProviders apiProvider,
  }) async {
    emit(WeatherState.loading(prevState: state).copyWith(
      isCurrentWeatherLoaded: false,
      isForcastDetailLoaded: false,
      isCurrentWeatherLoading: true,
      isForcastDetailLoading: true,
    ));

    var _failureOrWeatherDetails = await getCurrentWeatherDetails(
      latLng: coordinates,
      provider: apiProvider,
    );

    if (_failureOrWeatherDetails.runtimeType ==
        Right<Failure, WeatherEntity?>) {
      emit(
        state.copyWith(
          isCurrentWeatherLoading: false,
          isCurrentWeatherFailure: true,
          isForcastDetailLoading: false,
          isForecastFailure: true,
        ),
      );
    }

    _failureOrWeatherDetails.fold(
      (failure) {
        emit(
          WeatherState.failure(
                  prevState: state, serverFailure: failure as ServerFailure)
              .copyWith(
            isCurrentWeatherLoading: false,
          ),
        );
      },
      (weatherDetails) {
        emit(
          WeatherState.loadedCurrentWeather(
            prevState: state,
            currentWeatherDetails: weatherDetails,
          ),
        );

        if (apiProvider == WeatherAPIProviders.OpenWeatherMap)
          // after loading current weather, load weather forecast
          loadWeatherForecast(
            coordinates: coordinates,
            apiProvider: apiProvider,
          );
        else if (apiProvider == WeatherAPIProviders.WeatherStack)
          emit(
            state.copyWith(
              isForcastDetailLoading: false,
              isForcastDetailLoaded: true,
            ),
          );
      },
    );
  }

  void loadWeatherForecast({
    required LatLng coordinates,
    required WeatherAPIProviders apiProvider,
  }) async {
    emit(WeatherState.loading(prevState: state).copyWith(
      isForcastDetailLoaded: false,
      isForcastDetailLoading: true,
    ));

    var _failureOrWeatherDetails = await getForecastWeatherDetails(
      latLng: coordinates,
      provider: apiProvider,
    );

    _failureOrWeatherDetails.fold(
      (failure) {
        emit(
          WeatherState.failure(
                  prevState: state, serverFailure: failure as ServerFailure)
              .copyWith(
            isForcastDetailLoading: false,
          ),
        );
      },
      (weatherDetails) {
        emit(
          WeatherState.loadedWeatherForecast(
            prevState: state,
            weatherForecastDetails: weatherDetails,
          ),
        );
      },
    );
  }
}
