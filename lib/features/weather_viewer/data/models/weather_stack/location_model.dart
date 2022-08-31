import 'package:freezed_annotation/freezed_annotation.dart';

// @JsonKey(name: '     ') required :
part 'location_model.freezed.dart';
// optional:
part 'location_model.g.dart';

@freezed
abstract class LocationModel with _$LocationModel {
  const factory LocationModel({
    @JsonKey(name: 'name') required String? name,
    @JsonKey(name: 'country') required String? country,
    @JsonKey(name: 'region') required String? region,
    @JsonKey(name: 'lat') required String? lat,
    @JsonKey(name: 'lon') required String? lon,
    @JsonKey(name: 'timezone_id') required String? timezoneId,
    @JsonKey(name: 'localtime') required String? localtime,
    @JsonKey(name: 'localtime_epoch') required int? localtimeEpoch,
    @JsonKey(name: 'utc_offset') required String? utcOffset,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, Object?> json) =>
      _$LocationModelFromJson(json);
}
