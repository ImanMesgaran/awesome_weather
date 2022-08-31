import 'package:awesome_weather/features/weather_viewer/data/models/weather_stack/current_weather_model.dart';
import 'package:awesome_weather/features/weather_viewer/data/models/weather_stack/location_model.dart';
import 'package:awesome_weather/features/weather_viewer/data/models/weather_stack/request_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// @JsonKey(name: '     ') required :
part 'weather_model.freezed.dart';
// optional:
part 'weather_model.g.dart';

@freezed
abstract class WeatherStackModel with _$WeatherStackModel {
  const factory WeatherStackModel({
    @JsonKey(name: 'request') required RequestModel? request,
    @JsonKey(name: 'location') required LocationModel? location,
    @JsonKey(name: 'current') required CurrentWeatherModel? current,
  }) = _WeatherStackModel;

  factory WeatherStackModel.fromJson(Map<String, Object?> json) =>
      _$WeatherStackModelFromJson(json);
}
