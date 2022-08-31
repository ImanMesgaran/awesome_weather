import 'package:freezed_annotation/freezed_annotation.dart';

// @JsonKey(name: '     ') @JsonKey(name: 'name') required :
part 'geo_coding_model.freezed.dart';
// optional:
part 'geo_coding_model.g.dart';

@freezed
abstract class OpenWeatherGeocodeModel with _$OpenWeatherGeocodeModel {
  const factory OpenWeatherGeocodeModel({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'local_names') required Map<String, String>? localNames,
    @JsonKey(name: 'lat') required double lat,
    @JsonKey(name: 'lon') required double lon,
    @JsonKey(name: 'country') required String? country,
    @JsonKey(name: 'state') required String? state,
  }) = _OpenWeatherGeocodeModel;

  factory OpenWeatherGeocodeModel.fromJson(Map<String, Object?> json) =>
      _$OpenWeatherGeocodeModelFromJson(json);
}
