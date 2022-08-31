import 'package:awesome_weather/features/weather_viewer/data/models/open_weather/open_city_model.dart';
import 'package:awesome_weather/features/weather_viewer/data/models/open_weather/open_forecast_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// @JsonKey(name: '     ') @JsonKey(name: 'name') required :
part 'open_weather_model.freezed.dart';
// optional:
part 'open_weather_model.g.dart';

@freezed
abstract class OpenWeatherModel with _$OpenWeatherModel {
  const factory OpenWeatherModel({
    @JsonKey(name: 'cod') required String? cod,
    @JsonKey(name: 'message') required int? message,
    @JsonKey(name: 'cnt') required int? cnt,
    @JsonKey(name: 'list') required List<OpenForecastModel>? list,
    @JsonKey(name: 'city') required OpenCityModel? city,
  }) = _OpenWeatherModel;

  factory OpenWeatherModel.fromJson(Map<String, Object?> json) =>
      _$OpenWeatherModelFromJson(json);
}
