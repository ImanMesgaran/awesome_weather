import 'package:freezed_annotation/freezed_annotation.dart';

// @JsonKey(name: '     ') @JsonKey(name: 'name') required :
part 'open_coordination_model.freezed.dart';
// optional:
part 'open_coordination_model.g.dart';

@freezed
abstract class OpenCoordinationModel with _$OpenCoordinationModel {
  const factory OpenCoordinationModel({
    @JsonKey(name: 'lat') required double lat,
    @JsonKey(name: 'lon') required double lon,
  }) = _OpenCoordinationModel;

  factory OpenCoordinationModel.fromJson(Map<String, Object?> json) =>
      _$OpenCoordinationModelFromJson(json);
}
