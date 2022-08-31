import 'package:freezed_annotation/freezed_annotation.dart';

// @JsonKey(name: '     ') @JsonKey(name: 'name') required :
part 'open_forecast_main_model.freezed.dart';
// optional:
part 'open_forecast_main_model.g.dart';

@freezed
abstract class OpenForecastMainModel with _$OpenForecastMainModel {
  const factory OpenForecastMainModel({
    @JsonKey(name: 'temp') required double? temp,
    @JsonKey(name: 'feels_like') required double? feelsLike,
    @JsonKey(name: 'temp_min') required double? tempMin,
    @JsonKey(name: 'temp_max') required double? tempMax,
    @JsonKey(name: 'pressure') required int? pressure,
    @JsonKey(name: 'sea_level') required int? seaLevel,
    @JsonKey(name: 'grnd_level') required int? grndLevel,
    @JsonKey(name: 'humidity') required int? humidity,
    @JsonKey(name: 'temp_kf') required double? tempKf,
  }) = _OpenForecastMainModel;

  factory OpenForecastMainModel.fromJson(Map<String, Object?> json) =>
      _$OpenForecastMainModelFromJson(json);
}
