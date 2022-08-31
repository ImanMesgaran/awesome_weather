import 'package:freezed_annotation/freezed_annotation.dart';

// @JsonKey(name: '     ') required :
part 'request_model.freezed.dart';
// optional:
part 'request_model.g.dart';

@freezed
abstract class RequestModel with _$RequestModel {
  const factory RequestModel({
    @JsonKey(name: 'type') required String? type,
    @JsonKey(name: 'query') required String? query,
    @JsonKey(name: 'language') required String? language,
    @JsonKey(name: 'unit') required String? unit,
  }) = _RequestModel;

  factory RequestModel.fromJson(Map<String, Object?> json) =>
      _$RequestModelFromJson(json);
}
