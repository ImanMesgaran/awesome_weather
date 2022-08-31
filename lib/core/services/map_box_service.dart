import 'dart:convert';
import 'package:awesome_weather/core/models/app_constants.dart';
import 'package:http/http.dart' as http;

class MapBoxService {
  Future<List<MapBoxPlace>?> searchPlaces(
    String searchQuery, [
    int limit = 6,
  ]) async {
    List<MapBoxPlace> result = [];
    var response = await http.get(Uri.parse(
        "https://api.mapbox.com/geocoding/v5/mapbox.places/$searchQuery"
        ".json?access_token=${AppConstants.mapBoxSecretToken}&autocomplete=true&types=place&limit=$limit"));

    try {
      var decodedJson = jsonDecode(response.body);
      var features = decodedJson["features"];
      if ((features as List).isNotEmpty) {
        for (dynamic place in features) {
          var mapBoxPlace = MapBoxPlace.fromJson(place);
          result.add(mapBoxPlace);
        }
      }
    } catch (err) {
      print(err);
    }

    return (result.isNotEmpty) ? result : null;
  }

  Future<MapBoxPlace?> lookup(double latitude, double longitude) async {
    var response = await http.get(Uri.parse(
        "https://api.mapbox.com/geocoding/v5/mapbox.places/$longitude,$latitude"
        ".json?access_token=${AppConstants.mapBoxSecretToken}&types=region"));

    try {
      var decodedJson = jsonDecode(response.body);
      var features = decodedJson["features"];
      if ((features as List).isNotEmpty) {
        for (dynamic place in features) {
          return MapBoxPlace.fromJson(place);
        }
      }
    } catch (err) {
      print(err);
    }

    return null;
  }
}

class MapBoxPlace {
  late String id;
  late String name;
  late double latitude;
  late double longitude;

  MapBoxPlace.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['text'];
    latitude = double.parse(json['center'][1].toString());
    longitude = double.parse(json['center'][0].toString());
  }
}
