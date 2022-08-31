import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';

part 'mapbox_state.dart';

class MapBoxCubit extends Cubit<MapBoxState> {
  MapBoxCubit() : super(MapBoxState.initial());

  void getCurrentUserLocation() async {
    var _isServiceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!_isServiceEnabled) {
      _isServiceEnabled = await Location().requestService();
      if (!_isServiceEnabled) {
        return Future.error('Location Service is not enabled');
      }
    }

    var _permission = await Geolocator.checkPermission();

    if (_permission == LocationPermission.denied) {
      _permission = await Geolocator.requestPermission();

      if (_permission == LocationPermission.denied) {
        return Future.error('Location Permission Denied.');
      }
    }
    if (_permission == LocationPermission.deniedForever) {
      return Future.error('Location Permission are permanantly denied.');
    }

    var _position = await Geolocator.getCurrentPosition();

    final _userCurrentPosition =
        LatLng(_position.latitude, _position.longitude);

    emit(MapBoxState.setUserLocation(
      userLocation: _userCurrentPosition,
      prevState: state,
    ));
  }

  void setCurrentUserLocation({required LatLng location}) async {
    emit(MapBoxState.setUserLocation(
      userLocation: location,
      prevState: state,
    ));
  }
}
