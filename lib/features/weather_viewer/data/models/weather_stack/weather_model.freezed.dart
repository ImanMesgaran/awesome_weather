// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherStackModel _$WeatherStackModelFromJson(Map<String, dynamic> json) {
  return _WeatherStackModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherStackModel {
  @JsonKey(name: 'request')
  RequestModel? get request => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  LocationModel? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'current')
  CurrentWeatherModel? get current => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherStackModelCopyWith<WeatherStackModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStackModelCopyWith<$Res> {
  factory $WeatherStackModelCopyWith(
          WeatherStackModel value, $Res Function(WeatherStackModel) then) =
      _$WeatherStackModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'request') RequestModel? request,
      @JsonKey(name: 'location') LocationModel? location,
      @JsonKey(name: 'current') CurrentWeatherModel? current});

  $RequestModelCopyWith<$Res>? get request;
  $LocationModelCopyWith<$Res>? get location;
  $CurrentWeatherModelCopyWith<$Res>? get current;
}

/// @nodoc
class _$WeatherStackModelCopyWithImpl<$Res>
    implements $WeatherStackModelCopyWith<$Res> {
  _$WeatherStackModelCopyWithImpl(this._value, this._then);

  final WeatherStackModel _value;
  // ignore: unused_field
  final $Res Function(WeatherStackModel) _then;

  @override
  $Res call({
    Object? request = freezed,
    Object? location = freezed,
    Object? current = freezed,
  }) {
    return _then(_value.copyWith(
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as RequestModel?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeatherModel?,
    ));
  }

  @override
  $RequestModelCopyWith<$Res>? get request {
    if (_value.request == null) {
      return null;
    }

    return $RequestModelCopyWith<$Res>(_value.request!, (value) {
      return _then(_value.copyWith(request: value));
    });
  }

  @override
  $LocationModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value));
    });
  }

  @override
  $CurrentWeatherModelCopyWith<$Res>? get current {
    if (_value.current == null) {
      return null;
    }

    return $CurrentWeatherModelCopyWith<$Res>(_value.current!, (value) {
      return _then(_value.copyWith(current: value));
    });
  }
}

/// @nodoc
abstract class _$$_WeatherStackModelCopyWith<$Res>
    implements $WeatherStackModelCopyWith<$Res> {
  factory _$$_WeatherStackModelCopyWith(_$_WeatherStackModel value,
          $Res Function(_$_WeatherStackModel) then) =
      __$$_WeatherStackModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'request') RequestModel? request,
      @JsonKey(name: 'location') LocationModel? location,
      @JsonKey(name: 'current') CurrentWeatherModel? current});

  @override
  $RequestModelCopyWith<$Res>? get request;
  @override
  $LocationModelCopyWith<$Res>? get location;
  @override
  $CurrentWeatherModelCopyWith<$Res>? get current;
}

/// @nodoc
class __$$_WeatherStackModelCopyWithImpl<$Res>
    extends _$WeatherStackModelCopyWithImpl<$Res>
    implements _$$_WeatherStackModelCopyWith<$Res> {
  __$$_WeatherStackModelCopyWithImpl(
      _$_WeatherStackModel _value, $Res Function(_$_WeatherStackModel) _then)
      : super(_value, (v) => _then(v as _$_WeatherStackModel));

  @override
  _$_WeatherStackModel get _value => super._value as _$_WeatherStackModel;

  @override
  $Res call({
    Object? request = freezed,
    Object? location = freezed,
    Object? current = freezed,
  }) {
    return _then(_$_WeatherStackModel(
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as RequestModel?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeatherModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherStackModel implements _WeatherStackModel {
  const _$_WeatherStackModel(
      {@JsonKey(name: 'request') required this.request,
      @JsonKey(name: 'location') required this.location,
      @JsonKey(name: 'current') required this.current});

  factory _$_WeatherStackModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherStackModelFromJson(json);

  @override
  @JsonKey(name: 'request')
  final RequestModel? request;
  @override
  @JsonKey(name: 'location')
  final LocationModel? location;
  @override
  @JsonKey(name: 'current')
  final CurrentWeatherModel? current;

  @override
  String toString() {
    return 'WeatherStackModel(request: $request, location: $location, current: $current)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherStackModel &&
            const DeepCollectionEquality().equals(other.request, request) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.current, current));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(request),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(current));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherStackModelCopyWith<_$_WeatherStackModel> get copyWith =>
      __$$_WeatherStackModelCopyWithImpl<_$_WeatherStackModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherStackModelToJson(
      this,
    );
  }
}

abstract class _WeatherStackModel implements WeatherStackModel {
  const factory _WeatherStackModel(
      {@JsonKey(name: 'request')
          required final RequestModel? request,
      @JsonKey(name: 'location')
          required final LocationModel? location,
      @JsonKey(name: 'current')
          required final CurrentWeatherModel? current}) = _$_WeatherStackModel;

  factory _WeatherStackModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherStackModel.fromJson;

  @override
  @JsonKey(name: 'request')
  RequestModel? get request;
  @override
  @JsonKey(name: 'location')
  LocationModel? get location;
  @override
  @JsonKey(name: 'current')
  CurrentWeatherModel? get current;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherStackModelCopyWith<_$_WeatherStackModel> get copyWith =>
      throw _privateConstructorUsedError;
}
