// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_forecast_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpenForecastWeatherModel _$$_OpenForecastWeatherModelFromJson(
        Map<String, dynamic> json) =>
    _$_OpenForecastWeatherModel(
      id: json['id'] as int,
      main: json['main'] as String?,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$_OpenForecastWeatherModelToJson(
        _$_OpenForecastWeatherModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };
