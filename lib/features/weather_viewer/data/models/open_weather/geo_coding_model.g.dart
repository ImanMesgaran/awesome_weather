// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_coding_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpenWeatherGeocodeModel _$$_OpenWeatherGeocodeModelFromJson(
        Map<String, dynamic> json) =>
    _$_OpenWeatherGeocodeModel(
      name: json['name'] as String,
      localNames: (json['local_names'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      country: json['country'] as String?,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$$_OpenWeatherGeocodeModelToJson(
        _$_OpenWeatherGeocodeModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'local_names': instance.localNames,
      'lat': instance.lat,
      'lon': instance.lon,
      'country': instance.country,
      'state': instance.state,
    };
