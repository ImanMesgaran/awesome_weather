// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpenForecastModel _$$_OpenForecastModelFromJson(Map<String, dynamic> json) =>
    _$_OpenForecastModel(
      dt: json['dt'] as int,
      forecastMainModel: json['main'] == null
          ? null
          : OpenForecastMainModel.fromJson(
              json['main'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) =>
              OpenForecastWeatherModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      clouds: json['clouds'] == null
          ? null
          : OpenForecastCloudsModel.fromJson(
              json['clouds'] as Map<String, dynamic>),
      wind: json['wind'] == null
          ? null
          : OpenForecastWindModel.fromJson(
              json['wind'] as Map<String, dynamic>),
      visibility: json['visibility'] as int?,
      pop: (json['pop'] as num?)?.toDouble(),
      sys: json['sys'] == null
          ? null
          : OpenForecastSysModel.fromJson(json['sys'] as Map<String, dynamic>),
      dtTxt: json['dt_txt'] == null
          ? null
          : DateTime.parse(json['dt_txt'] as String),
      rain: json['rain'] == null
          ? null
          : OpenForecastRainModel.fromJson(
              json['rain'] as Map<String, dynamic>),
      coord: json['coord'] == null
          ? null
          : OpenCoordinationModel.fromJson(
              json['coord'] as Map<String, dynamic>),
      base: json['base'] as String?,
      timezone: json['timezone'] as int?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      cod: json['cod'] as int?,
    );

Map<String, dynamic> _$$_OpenForecastModelToJson(
        _$_OpenForecastModel instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'main': instance.forecastMainModel,
      'weather': instance.weather,
      'clouds': instance.clouds,
      'wind': instance.wind,
      'visibility': instance.visibility,
      'pop': instance.pop,
      'sys': instance.sys,
      'dt_txt': instance.dtTxt?.toIso8601String(),
      'rain': instance.rain,
      'coord': instance.coord,
      'base': instance.base,
      'timezone': instance.timezone,
      'id': instance.id,
      'name': instance.name,
      'cod': instance.cod,
    };

_$_OpenForecastCloudsModel _$$_OpenForecastCloudsModelFromJson(
        Map<String, dynamic> json) =>
    _$_OpenForecastCloudsModel(
      all: json['all'] as int?,
    );

Map<String, dynamic> _$$_OpenForecastCloudsModelToJson(
        _$_OpenForecastCloudsModel instance) =>
    <String, dynamic>{
      'all': instance.all,
    };

_$_OpenForecastRainModel _$$_OpenForecastRainModelFromJson(
        Map<String, dynamic> json) =>
    _$_OpenForecastRainModel(
      the3H: (json['3h'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_OpenForecastRainModelToJson(
        _$_OpenForecastRainModel instance) =>
    <String, dynamic>{
      '3h': instance.the3H,
    };

_$_OpenForecastSysModel _$$_OpenForecastSysModelFromJson(
        Map<String, dynamic> json) =>
    _$_OpenForecastSysModel(
      pod: json['pod'] as String?,
      type: json['type'] as int?,
      id: json['id'] as int?,
      country: json['country'] as String?,
      sunrise: json['sunrise'] as int?,
      sunset: json['sunset'] as int?,
    );

Map<String, dynamic> _$$_OpenForecastSysModelToJson(
        _$_OpenForecastSysModel instance) =>
    <String, dynamic>{
      'pod': instance.pod,
      'type': instance.type,
      'id': instance.id,
      'country': instance.country,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };

_$_OpenForecastWindModel _$$_OpenForecastWindModelFromJson(
        Map<String, dynamic> json) =>
    _$_OpenForecastWindModel(
      speed: (json['speed'] as num?)?.toDouble(),
      deg: json['deg'] as int?,
      gust: (json['gust'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_OpenForecastWindModelToJson(
        _$_OpenForecastWindModel instance) =>
    <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
      'gust': instance.gust,
    };
