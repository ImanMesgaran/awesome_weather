part of 'weather_cubit.dart';

class WeatherState extends Equatable {
  final ServerFailure? failure;
  final bool isFailure;
  final bool isLoading;
  // places
  final bool arePlacesLoading;
  final bool arePlacesLoaded;
  final bool arePlacesVisible;
  final List<LocationEntity> places;
  final bool isPlacesFailure;
  // current weather
  final bool isCurrentWeatherLoading;
  final bool isCurrentWeatherLoaded;
  final WeatherEntity? currentWeather;
  final bool isCurrentWeatherFailure;
  // weather forecast
  final bool isForcastDetailLoading;
  final bool isForcastDetailLoaded;
  final OpenWeatherModel? weatherForecastDetails;
  final bool isForecastFailure;
  final bool isInitialWeatherState;
  final String query;

  WeatherState({
    required this.failure,
    required this.isLoading,
    required this.isFailure,
    // places
    required this.arePlacesLoading,
    required this.arePlacesLoaded,
    required this.places,
    required this.arePlacesVisible,
    required this.isPlacesFailure,
    // current weather
    required this.isCurrentWeatherLoading,
    required this.isCurrentWeatherLoaded,
    required this.currentWeather,
    required this.isCurrentWeatherFailure,
    // forecast
    required this.isForcastDetailLoading,
    required this.isForcastDetailLoaded,
    required this.weatherForecastDetails,
    required this.isForecastFailure,
    required this.isInitialWeatherState,
    required this.query,
  });

  factory WeatherState.initial() => WeatherState(
        failure: null,
        isFailure: false,
        isLoading: false,
        // places
        arePlacesLoading: false,
        arePlacesLoaded: false,
        places: <LocationEntity>[],
        arePlacesVisible: false,
        isPlacesFailure: false,
        // current weather
        isCurrentWeatherLoading: false,
        isCurrentWeatherLoaded: false,
        currentWeather: null,
        isCurrentWeatherFailure: false,
        // forecast
        weatherForecastDetails: null,
        isForcastDetailLoaded: false,
        isForcastDetailLoading: false,
        isForecastFailure: false,
        isInitialWeatherState: true,
        query: "",
      );

  factory WeatherState.loading({
    required WeatherState prevState,
  }) {
    return WeatherState(
      failure: null,
      isFailure: false,
      isLoading: true,
      // places
      arePlacesLoading: prevState.arePlacesLoading,
      arePlacesLoaded: prevState.arePlacesLoaded,
      places: prevState.places,
      arePlacesVisible: prevState.arePlacesVisible,
      isPlacesFailure: prevState.isPlacesFailure,
      // current weather
      isCurrentWeatherLoading: prevState.isCurrentWeatherLoading,
      isCurrentWeatherLoaded: prevState.isCurrentWeatherLoaded,
      currentWeather: prevState.currentWeather,
      isCurrentWeatherFailure: prevState.isCurrentWeatherFailure,
      // forecast
      isForcastDetailLoading: prevState.isForcastDetailLoading,
      isForcastDetailLoaded: prevState.isForcastDetailLoaded,
      weatherForecastDetails: prevState.weatherForecastDetails,
      isForecastFailure: prevState.isForecastFailure,
      isInitialWeatherState: prevState.isInitialWeatherState,
      query: prevState.query,
    );
  }

  factory WeatherState.loadedPlaces({
    required WeatherState prevState,
    required List<LocationEntity> places,
    required String query,
  }) {
    return WeatherState(
      failure: null,
      isFailure: false,
      isLoading: false,
      // places
      arePlacesLoading: false,
      arePlacesLoaded: true,
      places: places,
      arePlacesVisible: places.isNotEmpty,
      isPlacesFailure: false,
      // current weather
      isCurrentWeatherLoading: prevState.isCurrentWeatherLoading,
      isCurrentWeatherLoaded: prevState.isCurrentWeatherLoaded,
      currentWeather: prevState.currentWeather,
      isCurrentWeatherFailure: prevState.isCurrentWeatherFailure,
      // forecast
      isForcastDetailLoading: false,
      isForcastDetailLoaded: false,
      weatherForecastDetails: prevState.weatherForecastDetails,
      isForecastFailure: prevState.isForecastFailure,
      isInitialWeatherState: prevState.isInitialWeatherState,
      query: query,
    );
  }

  factory WeatherState.loadedCurrentWeather({
    required WeatherState prevState,
    required WeatherEntity? currentWeatherDetails,
  }) {
    return WeatherState(
      failure: null,
      isFailure: false,
      isLoading: false,
      // places
      arePlacesLoading: false,
      arePlacesLoaded: true,
      places: prevState.places,
      arePlacesVisible: false,
      isPlacesFailure: false,
      // current weather
      isCurrentWeatherLoading: false,
      isCurrentWeatherLoaded: true,
      currentWeather: currentWeatherDetails,
      isCurrentWeatherFailure: false,
      // forecast
      isForcastDetailLoading: true,
      isForcastDetailLoaded: false,
      weatherForecastDetails: null,
      isForecastFailure: false,
      isInitialWeatherState: false,
      query: prevState.query,
    );
  }

  factory WeatherState.loadedWeatherForecast({
    required WeatherState prevState,
    required OpenWeatherModel? weatherForecastDetails,
  }) {
    return WeatherState(
      failure: null,
      isFailure: false,
      isLoading: false,
      // places
      arePlacesLoading: false,
      arePlacesLoaded: true,
      places: prevState.places,
      arePlacesVisible: false,
      isPlacesFailure: false,
      // current weather
      isCurrentWeatherLoading: false,
      isCurrentWeatherLoaded: true,
      currentWeather: prevState.currentWeather,
      isCurrentWeatherFailure: false,
      // forecast
      isForcastDetailLoading: false,
      isForcastDetailLoaded: true,
      weatherForecastDetails: weatherForecastDetails,
      isForecastFailure: false,
      isInitialWeatherState: false,
      query: prevState.query,
    );
  }

  factory WeatherState.failure({
    required WeatherState prevState,
    required ServerFailure serverFailure,
  }) {
    final _state = WeatherState(
      isLoading: false,
      isFailure: true,
      failure: serverFailure,
      // places
      arePlacesLoading: prevState.arePlacesLoading,
      arePlacesLoaded: prevState.arePlacesLoaded,
      places: prevState.places,
      arePlacesVisible: prevState.arePlacesVisible,
      isPlacesFailure: prevState.isPlacesFailure,
      // current weather
      isCurrentWeatherLoading: prevState.isCurrentWeatherLoading,
      isCurrentWeatherLoaded: prevState.isCurrentWeatherLoaded,
      currentWeather: prevState.currentWeather,
      isCurrentWeatherFailure: prevState.isCurrentWeatherFailure,
      // forecast
      isForcastDetailLoading: prevState.isForcastDetailLoading,
      isForcastDetailLoaded: prevState.isForcastDetailLoaded,
      weatherForecastDetails: prevState.weatherForecastDetails,
      isForecastFailure: prevState.isForecastFailure,
      isInitialWeatherState: prevState.isInitialWeatherState,
      query: prevState.query,
    );

    return _state;
  }

  WeatherState copyWith({
    ServerFailure? failure,
    bool? isLoading,
    // places
    bool? arePlacesLoading,
    bool? arePlacesLoaded,
    List<LocationEntity>? places,
    bool? arePlacesVisible,
    bool? isPlacesFailure,
    // current weather
    bool? isCurrentWeatherLoading,
    bool? isCurrentWeatherLoaded,
    WeatherEntity? currentWeather,
    bool? isCurrentWeatherFailure,
    // forecast
    bool? isForcastDetailLoading,
    bool? isForcastDetailLoaded,
    OpenWeatherModel? weatherForecastDetails,
    bool? isForecastFailure,
    bool? isInitialWeatherState,
    String? query,
  }) {
    return WeatherState(
      isFailure: false,
      failure: failure ?? this.failure,
      isLoading: isLoading ?? this.isLoading,
      // places
      arePlacesLoading: arePlacesLoading ?? this.arePlacesLoading,
      arePlacesLoaded: arePlacesLoaded ?? this.arePlacesLoaded,
      places: places ?? this.places,
      arePlacesVisible: arePlacesVisible ?? this.arePlacesVisible,
      isPlacesFailure: isPlacesFailure ?? this.isPlacesFailure,
      // current weather
      isCurrentWeatherLoading:
          isCurrentWeatherLoading ?? this.isCurrentWeatherLoading,
      isCurrentWeatherLoaded:
          isCurrentWeatherLoaded ?? this.isCurrentWeatherLoaded,
      currentWeather: currentWeather ?? this.currentWeather,
      isCurrentWeatherFailure:
          isCurrentWeatherFailure ?? this.isCurrentWeatherFailure,
      // forecast
      isForcastDetailLoading:
          isForcastDetailLoading ?? this.isForcastDetailLoading,
      isForcastDetailLoaded:
          isForcastDetailLoaded ?? this.isForcastDetailLoaded,
      weatherForecastDetails:
          weatherForecastDetails ?? this.weatherForecastDetails,
      isForecastFailure: isForecastFailure ?? this.isForecastFailure,
      isInitialWeatherState:
          isInitialWeatherState ?? this.isInitialWeatherState,
      query: query ?? this.query,
    );
  }

  @override
  List<Object?> get props => [
        failure,
        isLoading,
        isFailure,
        // places
        arePlacesLoading,
        arePlacesLoaded,
        places,
        arePlacesVisible,
        isPlacesFailure,
        // current weather
        isCurrentWeatherLoading,
        isCurrentWeatherLoaded,
        currentWeather,
        isCurrentWeatherFailure,
        // weather forecast
        isForcastDetailLoading,
        isForcastDetailLoaded,
        weatherForecastDetails,
        isForecastFailure,
        isInitialWeatherState,
        query,
      ];
}
