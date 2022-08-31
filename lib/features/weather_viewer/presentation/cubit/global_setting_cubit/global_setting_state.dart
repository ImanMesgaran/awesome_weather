part of 'global_setting_cubit.dart';

class GlobalSettingState extends Equatable {
  final ServerFailure? failure;
  final bool isFailure;
  final bool isLoading;
  final TemperatureUnit temperatureUnit;
  final WeatherAPIProviders apiProvider;

  GlobalSettingState({
    required this.failure,
    required this.isLoading,
    required this.isFailure,
    required this.temperatureUnit,
    required this.apiProvider,
  });

  factory GlobalSettingState.initial() => GlobalSettingState(
        failure: null,
        isFailure: false,
        isLoading: false,
        temperatureUnit: TemperatureUnit.celsius,
        apiProvider: WeatherAPIProviders.OpenWeatherMap,
      );

  factory GlobalSettingState.loading({
    required GlobalSettingState prevState,
  }) {
    return GlobalSettingState(
      failure: null,
      isFailure: false,
      isLoading: true,
      temperatureUnit: prevState.temperatureUnit,
      apiProvider: prevState.apiProvider,
    );
  }

  factory GlobalSettingState.loadedTempratureUnit({
    required GlobalSettingState prevState,
    required TemperatureUnit temperatureUnit,
  }) {
    return GlobalSettingState(
      failure: null,
      isFailure: false,
      isLoading: false,
      temperatureUnit: temperatureUnit,
      apiProvider: prevState.apiProvider,
    );
  }

  factory GlobalSettingState.loadedApiProvider({
    required GlobalSettingState prevState,
    required WeatherAPIProviders apiProvider,
  }) {
    return GlobalSettingState(
      failure: null,
      isFailure: false,
      isLoading: false,
      temperatureUnit: prevState.temperatureUnit,
      apiProvider: apiProvider,
    );
  }

  factory GlobalSettingState.failure({
    required GlobalSettingState prevState,
    required ServerFailure serverFailure,
  }) {
    final _state = GlobalSettingState(
      isLoading: false,
      isFailure: true,
      failure: serverFailure,
      temperatureUnit: prevState.temperatureUnit,
      apiProvider: prevState.apiProvider,
    );

    return _state;
  }

  GlobalSettingState copyWith({
    ServerFailure? failure,
    bool? isLoading,
    TemperatureUnit? unit,
    WeatherAPIProviders? provider,
  }) {
    return GlobalSettingState(
      isFailure: false,
      failure: failure ?? this.failure,
      isLoading: isLoading ?? this.isLoading,
      temperatureUnit: unit ?? this.temperatureUnit,
      apiProvider: provider ?? this.apiProvider,
    );
  }

  @override
  List<Object?> get props => [
        failure,
        isLoading,
        isFailure,
        temperatureUnit,
        apiProvider,
      ];
}
