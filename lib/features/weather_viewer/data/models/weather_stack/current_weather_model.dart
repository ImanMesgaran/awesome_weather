import 'package:freezed_annotation/freezed_annotation.dart';

// @JsonKey(name: '     ') @JsonKey(name: 'name') required :
part 'current_weather_model.freezed.dart';
// optional:
part 'current_weather_model.g.dart';

@freezed
abstract class CurrentWeatherModel with _$CurrentWeatherModel {
  const factory CurrentWeatherModel({
    @JsonKey(name: 'observation_time') required String? observationTime,
    @JsonKey(name: 'temperature') required int? temperature,
    @JsonKey(name: 'weather_code') required int? weatherCode,
    @JsonKey(name: 'weather_icons') required List<String>? weatherIcons,
    @JsonKey(name: 'weather_descriptions')
        required List<String>? weatherDescriptions,
    @JsonKey(name: 'wind_speed') required int? windSpeed,
    @JsonKey(name: 'wind_degree') required int? windDegree,
    @JsonKey(name: 'wind_dir') required String? windDir,
    @JsonKey(name: 'pressure') required int? pressure,
    // @JsonKey(name: 'precip') required int? precip,
    @JsonKey(name: 'humidity') required int? humidity,
    @JsonKey(name: 'cloudcover') required int? cloudcover,
    @JsonKey(name: 'feelslike') required int? feelslike,
    @JsonKey(name: 'uv_index') required int? uvIndex,
    @JsonKey(name: 'visibility') required int? visibility,
    @JsonKey(name: 'is_day') required String? isDay,
  }) = _CurrentWeatherModel;

  factory CurrentWeatherModel.fromJson(Map<String, Object?> json) =>
      _$CurrentWeatherModelFromJson(json);
}
