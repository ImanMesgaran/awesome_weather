import 'package:freezed_annotation/freezed_annotation.dart';

// @JsonKey(name: '     ') @JsonKey(name: 'name') required :
part 'open_forecast_weather_model.freezed.dart';
// optional:
part 'open_forecast_weather_model.g.dart';

@freezed
abstract class OpenForecastWeatherModel with _$OpenForecastWeatherModel {
  const factory OpenForecastWeatherModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'main') required String? main,
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'icon') required String? icon,
  }) = _OpenForecastWeatherModel;

  factory OpenForecastWeatherModel.fromJson(Map<String, Object?> json) =>
      _$OpenForecastWeatherModelFromJson(json);
}
