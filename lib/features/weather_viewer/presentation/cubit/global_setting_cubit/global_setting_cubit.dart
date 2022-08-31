import 'package:awesome_weather/core/models/app_constants.dart';
import 'package:awesome_weather/core/services/weather_service_data_source.dart';
import 'package:awesome_weather/core/util/weather_converters.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/error/failures.dart';

part 'global_setting_state.dart';

class GlobalSettingCubit extends Cubit<GlobalSettingState> {
  GlobalSettingCubit({required this.sharedPreferences})
      : super(GlobalSettingState.initial());

  SharedPreferences sharedPreferences;
  TemperatureUnit temperatureUnit = TemperatureUnit.celsius;
  WeatherAPIProviders apiProvider = WeatherAPIProviders.OpenWeatherMap;

  void emitState(GlobalSettingState GlobalSettingState) {
    emit(GlobalSettingState);
  }

  void changeTempratureUnit({required TemperatureUnit unit}) async {
    this.temperatureUnit = unit;

    SharedPreferences.getInstance().then((sharedPref) {
      sharedPref.setInt(
          AppConstants.SHARED_PREF_KEY_TEMPERATURE_UNIT, unit.index);
    });

    emit(
      GlobalSettingState.loadedTempratureUnit(
        prevState: state,
        temperatureUnit: unit,
      ),
    );
  }

  void changeAPIProvider({required WeatherAPIProviders provider}) async {
    this.apiProvider = provider;

    SharedPreferences.getInstance().then((sharedPref) {
      sharedPref.setInt(
          AppConstants.SHARED_PREF_KEY_API_PROVIDER, provider.index);
    });

    emit(
      GlobalSettingState.loadedApiProvider(
        prevState: state,
        apiProvider: provider,
      ),
    );
  }
}
