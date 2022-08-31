// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherStackModel _$$_WeatherStackModelFromJson(Map<String, dynamic> json) =>
    _$_WeatherStackModel(
      request: json['request'] == null
          ? null
          : RequestModel.fromJson(json['request'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      current: json['current'] == null
          ? null
          : CurrentWeatherModel.fromJson(
              json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeatherStackModelToJson(
        _$_WeatherStackModel instance) =>
    <String, dynamic>{
      'request': instance.request,
      'location': instance.location,
      'current': instance.current,
    };
