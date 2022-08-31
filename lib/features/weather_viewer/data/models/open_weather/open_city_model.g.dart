// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_city_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpenCityModel _$$_OpenCityModelFromJson(Map<String, dynamic> json) =>
    _$_OpenCityModel(
      id: json['id'] as int,
      name: json['name'] as String,
      coord: json['coord'] == null
          ? null
          : OpenCoordinationModel.fromJson(
              json['coord'] as Map<String, dynamic>),
      country: json['country'] as String?,
      population: json['population'] as int?,
      timezone: json['timezone'] as int?,
      sunrise: json['sunrise'] as int?,
      sunset: json['sunset'] as int?,
    );

Map<String, dynamic> _$$_OpenCityModelToJson(_$_OpenCityModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'coord': instance.coord,
      'country': instance.country,
      'population': instance.population,
      'timezone': instance.timezone,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };
