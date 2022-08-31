import 'package:awesome_weather/features/weather_viewer/data/models/open_weather/open_coordination_model.dart';
import 'package:awesome_weather/features/weather_viewer/data/models/open_weather/open_forecast_main_model.dart';
import 'package:awesome_weather/features/weather_viewer/data/models/open_weather/open_forecast_weather_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// @JsonKey(name: '     ') @JsonKey(name: 'name') required :
part 'open_forecast_model.freezed.dart';
// optional:
part 'open_forecast_model.g.dart';

@freezed
abstract class OpenForecastModel with _$OpenForecastModel {
  const factory OpenForecastModel({
    @JsonKey(name: 'dt') required int dt,
    @JsonKey(name: 'main') required OpenForecastMainModel? forecastMainModel,
    @JsonKey(name: 'weather') required List<OpenForecastWeatherModel>? weather,
    @JsonKey(name: 'clouds') required OpenForecastCloudsModel? clouds,
    @JsonKey(name: 'wind') required OpenForecastWindModel? wind,
    @JsonKey(name: 'visibility') required int? visibility,
    @JsonKey(name: 'pop') required double? pop,
    @JsonKey(name: 'sys') required OpenForecastSysModel? sys,
    @JsonKey(name: 'dt_txt') required DateTime? dtTxt,
    @JsonKey(name: 'rain') required OpenForecastRainModel? rain,
    // specific to current weather model
    @JsonKey(name: 'coord') required OpenCoordinationModel? coord,
    @JsonKey(name: 'base') required String? base,
    @JsonKey(name: 'timezone') required int? timezone,
    @JsonKey(name: 'id') required int? id,
    @JsonKey(name: 'name') required String? name,
    @JsonKey(name: 'cod') required int? cod,
  }) = _OpenForecastModel;

  factory OpenForecastModel.fromJson(Map<String, Object?> json) =>
      _$OpenForecastModelFromJson(json);
}

@freezed
abstract class OpenForecastCloudsModel with _$OpenForecastCloudsModel {
  const factory OpenForecastCloudsModel({
    @JsonKey(name: 'all') required int? all,
  }) = _OpenForecastCloudsModel;

  factory OpenForecastCloudsModel.fromJson(Map<String, Object?> json) =>
      _$OpenForecastCloudsModelFromJson(json);
}

@freezed
abstract class OpenForecastRainModel with _$OpenForecastRainModel {
  const factory OpenForecastRainModel({
    @JsonKey(name: '3h') required double? the3H,
  }) = _OpenForecastRainModel;

  factory OpenForecastRainModel.fromJson(Map<String, Object?> json) =>
      _$OpenForecastRainModelFromJson(json);
}

@freezed
abstract class OpenForecastSysModel with _$OpenForecastSysModel {
  const factory OpenForecastSysModel({
    @JsonKey(name: 'pod') required String? pod,
    @JsonKey(name: 'type') required int? type,
    @JsonKey(name: 'id') required int? id,
    @JsonKey(name: 'country') required String? country,
    @JsonKey(name: 'sunrise') required int? sunrise,
    @JsonKey(name: 'sunset') required int? sunset,
  }) = _OpenForecastSysModel;

  factory OpenForecastSysModel.fromJson(Map<String, Object?> json) =>
      _$OpenForecastSysModelFromJson(json);
}

@freezed
abstract class OpenForecastWindModel with _$OpenForecastWindModel {
  const factory OpenForecastWindModel({
    @JsonKey(name: 'speed') required double? speed,
    @JsonKey(name: 'deg') required int? deg,
    @JsonKey(name: 'gust') required double? gust,
  }) = _OpenForecastWindModel;

  factory OpenForecastWindModel.fromJson(Map<String, Object?> json) =>
      _$OpenForecastWindModelFromJson(json);
}
