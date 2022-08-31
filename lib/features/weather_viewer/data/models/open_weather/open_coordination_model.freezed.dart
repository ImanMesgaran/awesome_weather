// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'open_coordination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpenCoordinationModel _$OpenCoordinationModelFromJson(
    Map<String, dynamic> json) {
  return _OpenCoordinationModel.fromJson(json);
}

/// @nodoc
mixin _$OpenCoordinationModel {
  @JsonKey(name: 'lat')
  double get lat => throw _privateConstructorUsedError;
  @JsonKey(name: 'lon')
  double get lon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenCoordinationModelCopyWith<OpenCoordinationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenCoordinationModelCopyWith<$Res> {
  factory $OpenCoordinationModelCopyWith(OpenCoordinationModel value,
          $Res Function(OpenCoordinationModel) then) =
      _$OpenCoordinationModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'lat') double lat, @JsonKey(name: 'lon') double lon});
}

/// @nodoc
class _$OpenCoordinationModelCopyWithImpl<$Res>
    implements $OpenCoordinationModelCopyWith<$Res> {
  _$OpenCoordinationModelCopyWithImpl(this._value, this._then);

  final OpenCoordinationModel _value;
  // ignore: unused_field
  final $Res Function(OpenCoordinationModel) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_OpenCoordinationModelCopyWith<$Res>
    implements $OpenCoordinationModelCopyWith<$Res> {
  factory _$$_OpenCoordinationModelCopyWith(_$_OpenCoordinationModel value,
          $Res Function(_$_OpenCoordinationModel) then) =
      __$$_OpenCoordinationModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'lat') double lat, @JsonKey(name: 'lon') double lon});
}

/// @nodoc
class __$$_OpenCoordinationModelCopyWithImpl<$Res>
    extends _$OpenCoordinationModelCopyWithImpl<$Res>
    implements _$$_OpenCoordinationModelCopyWith<$Res> {
  __$$_OpenCoordinationModelCopyWithImpl(_$_OpenCoordinationModel _value,
      $Res Function(_$_OpenCoordinationModel) _then)
      : super(_value, (v) => _then(v as _$_OpenCoordinationModel));

  @override
  _$_OpenCoordinationModel get _value =>
      super._value as _$_OpenCoordinationModel;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_$_OpenCoordinationModel(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenCoordinationModel implements _OpenCoordinationModel {
  const _$_OpenCoordinationModel(
      {@JsonKey(name: 'lat') required this.lat,
      @JsonKey(name: 'lon') required this.lon});

  factory _$_OpenCoordinationModel.fromJson(Map<String, dynamic> json) =>
      _$$_OpenCoordinationModelFromJson(json);

  @override
  @JsonKey(name: 'lat')
  final double lat;
  @override
  @JsonKey(name: 'lon')
  final double lon;

  @override
  String toString() {
    return 'OpenCoordinationModel(lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenCoordinationModel &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lon, lon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lon));

  @JsonKey(ignore: true)
  @override
  _$$_OpenCoordinationModelCopyWith<_$_OpenCoordinationModel> get copyWith =>
      __$$_OpenCoordinationModelCopyWithImpl<_$_OpenCoordinationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenCoordinationModelToJson(
      this,
    );
  }
}

abstract class _OpenCoordinationModel implements OpenCoordinationModel {
  const factory _OpenCoordinationModel(
          {@JsonKey(name: 'lat') required final double lat,
          @JsonKey(name: 'lon') required final double lon}) =
      _$_OpenCoordinationModel;

  factory _OpenCoordinationModel.fromJson(Map<String, dynamic> json) =
      _$_OpenCoordinationModel.fromJson;

  @override
  @JsonKey(name: 'lat')
  double get lat;
  @override
  @JsonKey(name: 'lon')
  double get lon;
  @override
  @JsonKey(ignore: true)
  _$$_OpenCoordinationModelCopyWith<_$_OpenCoordinationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
