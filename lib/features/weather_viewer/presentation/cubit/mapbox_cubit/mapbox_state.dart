part of 'mapbox_cubit.dart';

class MapBoxState extends Equatable {
  final LatLng currentUserLocation;
  final bool isUserLocationLoaded;

  MapBoxState({
    required this.currentUserLocation,
    required this.isUserLocationLoaded,
  });

  factory MapBoxState.initial() => MapBoxState(
        currentUserLocation: LatLng(37.3861, 122.0839),
        isUserLocationLoaded: false,
      );

  factory MapBoxState.setUserLocation({
    required MapBoxState prevState,
    required LatLng userLocation,
  }) {
    return MapBoxState(
      currentUserLocation: userLocation,
      isUserLocationLoaded: true,
    );
  }

  MapBoxState copyWith({
    LatLng? currentUserLocation,
    bool? isUserLocationLoaded,
  }) {
    return MapBoxState(
      currentUserLocation: currentUserLocation ?? this.currentUserLocation,
      isUserLocationLoaded: isUserLocationLoaded ?? this.isUserLocationLoaded,
    );
  }

  @override
  List<Object?> get props => [
        currentUserLocation,
        isUserLocationLoaded,
      ];
}
