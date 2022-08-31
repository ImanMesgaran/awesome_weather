// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpenWeatherModel _$$_OpenWeatherModelFromJson(Map<String, dynamic> json) =>
    _$_OpenWeatherModel(
      cod: json['cod'] as String?,
      message: json['message'] as int?,
      cnt: json['cnt'] as int?,
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => OpenForecastModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      city: json['city'] == null
          ? null
          : OpenCityModel.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OpenWeatherModelToJson(_$_OpenWeatherModel instance) =>
    <String, dynamic>{
      'cod': instance.cod,
      'message': instance.message,
      'cnt': instance.cnt,
      'list': instance.list,
      'city': instance.city,
    };
