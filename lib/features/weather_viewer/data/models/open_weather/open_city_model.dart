import 'package:awesome_weather/features/weather_viewer/data/models/open_weather/open_coordination_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// @JsonKey(name: '     ') @JsonKey(name: 'name') required :
part 'open_city_model.freezed.dart';
// optional:
part 'open_city_model.g.dart';

@freezed
abstract class OpenCityModel with _$OpenCityModel {
  const factory OpenCityModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'coord') required OpenCoordinationModel? coord,
    @JsonKey(name: 'country') required String? country,
    @JsonKey(name: 'population') required int? population,
    @JsonKey(name: 'timezone') required int? timezone,
    @JsonKey(name: 'sunrise') required int? sunrise,
    @JsonKey(name: 'sunset') required int? sunset,
  }) = _OpenCityModel;

  factory OpenCityModel.fromJson(Map<String, Object?> json) =>
      _$OpenCityModelFromJson(json);
}
