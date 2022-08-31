// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'current_weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentWeatherModel _$CurrentWeatherModelFromJson(Map<String, dynamic> json) {
  return _CurrentWeatherModel.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeatherModel {
  @JsonKey(name: 'observation_time')
  String? get observationTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature')
  int? get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_code')
  int? get weatherCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_icons')
  List<String>? get weatherIcons => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_descriptions')
  List<String>? get weatherDescriptions => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed')
  int? get windSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_degree')
  int? get windDegree => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_dir')
  String? get windDir => throw _privateConstructorUsedError;
  @JsonKey(name: 'pressure')
  int? get pressure =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'precip') required int? precip,
  @JsonKey(name: 'humidity')
  int? get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'cloudcover')
  int? get cloudcover => throw _privateConstructorUsedError;
  @JsonKey(name: 'feelslike')
  int? get feelslike => throw _privateConstructorUsedError;
  @JsonKey(name: 'uv_index')
  int? get uvIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'visibility')
  int? get visibility => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_day')
  String? get isDay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeatherModelCopyWith<CurrentWeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherModelCopyWith<$Res> {
  factory $CurrentWeatherModelCopyWith(
          CurrentWeatherModel value, $Res Function(CurrentWeatherModel) then) =
      _$CurrentWeatherModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'observation_time') String? observationTime,
      @JsonKey(name: 'temperature') int? temperature,
      @JsonKey(name: 'weather_code') int? weatherCode,
      @JsonKey(name: 'weather_icons') List<String>? weatherIcons,
      @JsonKey(name: 'weather_descriptions') List<String>? weatherDescriptions,
      @JsonKey(name: 'wind_speed') int? windSpeed,
      @JsonKey(name: 'wind_degree') int? windDegree,
      @JsonKey(name: 'wind_dir') String? windDir,
      @JsonKey(name: 'pressure') int? pressure,
      @JsonKey(name: 'humidity') int? humidity,
      @JsonKey(name: 'cloudcover') int? cloudcover,
      @JsonKey(name: 'feelslike') int? feelslike,
      @JsonKey(name: 'uv_index') int? uvIndex,
      @JsonKey(name: 'visibility') int? visibility,
      @JsonKey(name: 'is_day') String? isDay});
}

/// @nodoc
class _$CurrentWeatherModelCopyWithImpl<$Res>
    implements $CurrentWeatherModelCopyWith<$Res> {
  _$CurrentWeatherModelCopyWithImpl(this._value, this._then);

  final CurrentWeatherModel _value;
  // ignore: unused_field
  final $Res Function(CurrentWeatherModel) _then;

  @override
  $Res call({
    Object? observationTime = freezed,
    Object? temperature = freezed,
    Object? weatherCode = freezed,
    Object? weatherIcons = freezed,
    Object? weatherDescriptions = freezed,
    Object? windSpeed = freezed,
    Object? windDegree = freezed,
    Object? windDir = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? cloudcover = freezed,
    Object? feelslike = freezed,
    Object? uvIndex = freezed,
    Object? visibility = freezed,
    Object? isDay = freezed,
  }) {
    return _then(_value.copyWith(
      observationTime: observationTime == freezed
          ? _value.observationTime
          : observationTime // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as int?,
      weatherCode: weatherCode == freezed
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as int?,
      weatherIcons: weatherIcons == freezed
          ? _value.weatherIcons
          : weatherIcons // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      weatherDescriptions: weatherDescriptions == freezed
          ? _value.weatherDescriptions
          : weatherDescriptions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as int?,
      windDegree: windDegree == freezed
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int?,
      windDir: windDir == freezed
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String?,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      cloudcover: cloudcover == freezed
          ? _value.cloudcover
          : cloudcover // ignore: cast_nullable_to_non_nullable
              as int?,
      feelslike: feelslike == freezed
          ? _value.feelslike
          : feelslike // ignore: cast_nullable_to_non_nullable
              as int?,
      uvIndex: uvIndex == freezed
          ? _value.uvIndex
          : uvIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      isDay: isDay == freezed
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CurrentWeatherModelCopyWith<$Res>
    implements $CurrentWeatherModelCopyWith<$Res> {
  factory _$$_CurrentWeatherModelCopyWith(_$_CurrentWeatherModel value,
          $Res Function(_$_CurrentWeatherModel) then) =
      __$$_CurrentWeatherModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'observation_time') String? observationTime,
      @JsonKey(name: 'temperature') int? temperature,
      @JsonKey(name: 'weather_code') int? weatherCode,
      @JsonKey(name: 'weather_icons') List<String>? weatherIcons,
      @JsonKey(name: 'weather_descriptions') List<String>? weatherDescriptions,
      @JsonKey(name: 'wind_speed') int? windSpeed,
      @JsonKey(name: 'wind_degree') int? windDegree,
      @JsonKey(name: 'wind_dir') String? windDir,
      @JsonKey(name: 'pressure') int? pressure,
      @JsonKey(name: 'humidity') int? humidity,
      @JsonKey(name: 'cloudcover') int? cloudcover,
      @JsonKey(name: 'feelslike') int? feelslike,
      @JsonKey(name: 'uv_index') int? uvIndex,
      @JsonKey(name: 'visibility') int? visibility,
      @JsonKey(name: 'is_day') String? isDay});
}

/// @nodoc
class __$$_CurrentWeatherModelCopyWithImpl<$Res>
    extends _$CurrentWeatherModelCopyWithImpl<$Res>
    implements _$$_CurrentWeatherModelCopyWith<$Res> {
  __$$_CurrentWeatherModelCopyWithImpl(_$_CurrentWeatherModel _value,
      $Res Function(_$_CurrentWeatherModel) _then)
      : super(_value, (v) => _then(v as _$_CurrentWeatherModel));

  @override
  _$_CurrentWeatherModel get _value => super._value as _$_CurrentWeatherModel;

  @override
  $Res call({
    Object? observationTime = freezed,
    Object? temperature = freezed,
    Object? weatherCode = freezed,
    Object? weatherIcons = freezed,
    Object? weatherDescriptions = freezed,
    Object? windSpeed = freezed,
    Object? windDegree = freezed,
    Object? windDir = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? cloudcover = freezed,
    Object? feelslike = freezed,
    Object? uvIndex = freezed,
    Object? visibility = freezed,
    Object? isDay = freezed,
  }) {
    return _then(_$_CurrentWeatherModel(
      observationTime: observationTime == freezed
          ? _value.observationTime
          : observationTime // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature: temperature == freezed
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as int?,
      weatherCode: weatherCode == freezed
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as int?,
      weatherIcons: weatherIcons == freezed
          ? _value._weatherIcons
          : weatherIcons // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      weatherDescriptions: weatherDescriptions == freezed
          ? _value._weatherDescriptions
          : weatherDescriptions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as int?,
      windDegree: windDegree == freezed
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int?,
      windDir: windDir == freezed
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String?,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      cloudcover: cloudcover == freezed
          ? _value.cloudcover
          : cloudcover // ignore: cast_nullable_to_non_nullable
              as int?,
      feelslike: feelslike == freezed
          ? _value.feelslike
          : feelslike // ignore: cast_nullable_to_non_nullable
              as int?,
      uvIndex: uvIndex == freezed
          ? _value.uvIndex
          : uvIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      isDay: isDay == freezed
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrentWeatherModel implements _CurrentWeatherModel {
  const _$_CurrentWeatherModel(
      {@JsonKey(name: 'observation_time')
          required this.observationTime,
      @JsonKey(name: 'temperature')
          required this.temperature,
      @JsonKey(name: 'weather_code')
          required this.weatherCode,
      @JsonKey(name: 'weather_icons')
          required final List<String>? weatherIcons,
      @JsonKey(name: 'weather_descriptions')
          required final List<String>? weatherDescriptions,
      @JsonKey(name: 'wind_speed')
          required this.windSpeed,
      @JsonKey(name: 'wind_degree')
          required this.windDegree,
      @JsonKey(name: 'wind_dir')
          required this.windDir,
      @JsonKey(name: 'pressure')
          required this.pressure,
      @JsonKey(name: 'humidity')
          required this.humidity,
      @JsonKey(name: 'cloudcover')
          required this.cloudcover,
      @JsonKey(name: 'feelslike')
          required this.feelslike,
      @JsonKey(name: 'uv_index')
          required this.uvIndex,
      @JsonKey(name: 'visibility')
          required this.visibility,
      @JsonKey(name: 'is_day')
          required this.isDay})
      : _weatherIcons = weatherIcons,
        _weatherDescriptions = weatherDescriptions;

  factory _$_CurrentWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentWeatherModelFromJson(json);

  @override
  @JsonKey(name: 'observation_time')
  final String? observationTime;
  @override
  @JsonKey(name: 'temperature')
  final int? temperature;
  @override
  @JsonKey(name: 'weather_code')
  final int? weatherCode;
  final List<String>? _weatherIcons;
  @override
  @JsonKey(name: 'weather_icons')
  List<String>? get weatherIcons {
    final value = _weatherIcons;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _weatherDescriptions;
  @override
  @JsonKey(name: 'weather_descriptions')
  List<String>? get weatherDescriptions {
    final value = _weatherDescriptions;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'wind_speed')
  final int? windSpeed;
  @override
  @JsonKey(name: 'wind_degree')
  final int? windDegree;
  @override
  @JsonKey(name: 'wind_dir')
  final String? windDir;
  @override
  @JsonKey(name: 'pressure')
  final int? pressure;
// @JsonKey(name: 'precip') required int? precip,
  @override
  @JsonKey(name: 'humidity')
  final int? humidity;
  @override
  @JsonKey(name: 'cloudcover')
  final int? cloudcover;
  @override
  @JsonKey(name: 'feelslike')
  final int? feelslike;
  @override
  @JsonKey(name: 'uv_index')
  final int? uvIndex;
  @override
  @JsonKey(name: 'visibility')
  final int? visibility;
  @override
  @JsonKey(name: 'is_day')
  final String? isDay;

  @override
  String toString() {
    return 'CurrentWeatherModel(observationTime: $observationTime, temperature: $temperature, weatherCode: $weatherCode, weatherIcons: $weatherIcons, weatherDescriptions: $weatherDescriptions, windSpeed: $windSpeed, windDegree: $windDegree, windDir: $windDir, pressure: $pressure, humidity: $humidity, cloudcover: $cloudcover, feelslike: $feelslike, uvIndex: $uvIndex, visibility: $visibility, isDay: $isDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentWeatherModel &&
            const DeepCollectionEquality()
                .equals(other.observationTime, observationTime) &&
            const DeepCollectionEquality()
                .equals(other.temperature, temperature) &&
            const DeepCollectionEquality()
                .equals(other.weatherCode, weatherCode) &&
            const DeepCollectionEquality()
                .equals(other._weatherIcons, _weatherIcons) &&
            const DeepCollectionEquality()
                .equals(other._weatherDescriptions, _weatherDescriptions) &&
            const DeepCollectionEquality().equals(other.windSpeed, windSpeed) &&
            const DeepCollectionEquality()
                .equals(other.windDegree, windDegree) &&
            const DeepCollectionEquality().equals(other.windDir, windDir) &&
            const DeepCollectionEquality().equals(other.pressure, pressure) &&
            const DeepCollectionEquality().equals(other.humidity, humidity) &&
            const DeepCollectionEquality()
                .equals(other.cloudcover, cloudcover) &&
            const DeepCollectionEquality().equals(other.feelslike, feelslike) &&
            const DeepCollectionEquality().equals(other.uvIndex, uvIndex) &&
            const DeepCollectionEquality()
                .equals(other.visibility, visibility) &&
            const DeepCollectionEquality().equals(other.isDay, isDay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(observationTime),
      const DeepCollectionEquality().hash(temperature),
      const DeepCollectionEquality().hash(weatherCode),
      const DeepCollectionEquality().hash(_weatherIcons),
      const DeepCollectionEquality().hash(_weatherDescriptions),
      const DeepCollectionEquality().hash(windSpeed),
      const DeepCollectionEquality().hash(windDegree),
      const DeepCollectionEquality().hash(windDir),
      const DeepCollectionEquality().hash(pressure),
      const DeepCollectionEquality().hash(humidity),
      const DeepCollectionEquality().hash(cloudcover),
      const DeepCollectionEquality().hash(feelslike),
      const DeepCollectionEquality().hash(uvIndex),
      const DeepCollectionEquality().hash(visibility),
      const DeepCollectionEquality().hash(isDay));

  @JsonKey(ignore: true)
  @override
  _$$_CurrentWeatherModelCopyWith<_$_CurrentWeatherModel> get copyWith =>
      __$$_CurrentWeatherModelCopyWithImpl<_$_CurrentWeatherModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentWeatherModelToJson(
      this,
    );
  }
}

abstract class _CurrentWeatherModel implements CurrentWeatherModel {
  const factory _CurrentWeatherModel(
      {@JsonKey(name: 'observation_time')
          required final String? observationTime,
      @JsonKey(name: 'temperature')
          required final int? temperature,
      @JsonKey(name: 'weather_code')
          required final int? weatherCode,
      @JsonKey(name: 'weather_icons')
          required final List<String>? weatherIcons,
      @JsonKey(name: 'weather_descriptions')
          required final List<String>? weatherDescriptions,
      @JsonKey(name: 'wind_speed')
          required final int? windSpeed,
      @JsonKey(name: 'wind_degree')
          required final int? windDegree,
      @JsonKey(name: 'wind_dir')
          required final String? windDir,
      @JsonKey(name: 'pressure')
          required final int? pressure,
      @JsonKey(name: 'humidity')
          required final int? humidity,
      @JsonKey(name: 'cloudcover')
          required final int? cloudcover,
      @JsonKey(name: 'feelslike')
          required final int? feelslike,
      @JsonKey(name: 'uv_index')
          required final int? uvIndex,
      @JsonKey(name: 'visibility')
          required final int? visibility,
      @JsonKey(name: 'is_day')
          required final String? isDay}) = _$_CurrentWeatherModel;

  factory _CurrentWeatherModel.fromJson(Map<String, dynamic> json) =
      _$_CurrentWeatherModel.fromJson;

  @override
  @JsonKey(name: 'observation_time')
  String? get observationTime;
  @override
  @JsonKey(name: 'temperature')
  int? get temperature;
  @override
  @JsonKey(name: 'weather_code')
  int? get weatherCode;
  @override
  @JsonKey(name: 'weather_icons')
  List<String>? get weatherIcons;
  @override
  @JsonKey(name: 'weather_descriptions')
  List<String>? get weatherDescriptions;
  @override
  @JsonKey(name: 'wind_speed')
  int? get windSpeed;
  @override
  @JsonKey(name: 'wind_degree')
  int? get windDegree;
  @override
  @JsonKey(name: 'wind_dir')
  String? get windDir;
  @override
  @JsonKey(name: 'pressure')
  int? get pressure;
  @override // @JsonKey(name: 'precip') required int? precip,
  @JsonKey(name: 'humidity')
  int? get humidity;
  @override
  @JsonKey(name: 'cloudcover')
  int? get cloudcover;
  @override
  @JsonKey(name: 'feelslike')
  int? get feelslike;
  @override
  @JsonKey(name: 'uv_index')
  int? get uvIndex;
  @override
  @JsonKey(name: 'visibility')
  int? get visibility;
  @override
  @JsonKey(name: 'is_day')
  String? get isDay;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentWeatherModelCopyWith<_$_CurrentWeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}
