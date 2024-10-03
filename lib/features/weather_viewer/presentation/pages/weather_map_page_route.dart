import 'package:awesome_weather/core/global/colors.dart';
import 'package:awesome_weather/core/global/text_styles.dart';
import 'package:awesome_weather/core/models/app_constants.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/cubit/bottom_navigation_bar_cubit/navigation_bar_cubit.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/cubit/global_setting_cubit/global_setting_cubit.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/cubit/mapbox_cubit/mapbox_cubit.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/cubit/weather_cubit/weather_cubit.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/widgets/search_box_widget.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/widgets/skeleton_widgets/skeleton_widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class WeatherMapPageRoute extends StatefulWidget {
  WeatherMapPageRoute({Key? key}) : super(key: key);

  @override
  State<WeatherMapPageRoute> createState() => _WeatherMapPageRouteState();
}

class _WeatherMapPageRouteState extends State<WeatherMapPageRoute> {
  late final MapController _mapController;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(_postFrameCallBack);

    _mapController = MapController();
  }

  void _postFrameCallBack(_) {
    context.read<MapBoxCubit>().getCurrentUserLocation();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => context.read<WeatherCubit>(),
      child: BlocConsumer<MapBoxCubit, MapBoxState>(
        bloc: context.read<MapBoxCubit>(),
        listener: (context, mapState) {
          // TODO: implement listener
          if (mapState.isUserLocationLoaded) {
            _mapController.move(mapState.currentUserLocation, 12);
          }
        },
        builder: (context, mapState) {
          return BlocConsumer<WeatherCubit, WeatherState>(
            listener: (context, weatherState) {
              // TODO: implement listener
            },
            builder: (context, weatherState) {
              return Stack(
                children: [
                  FlutterMap(
                    mapController: _mapController,
                    options: MapOptions(
                      minZoom: 5,
                      maxZoom: 18,
                      zoom: 11,
                      center: LatLng(
                        mapState.currentUserLocation.latitude,
                        mapState.currentUserLocation.longitude,
                      ),
                      onLongPress: (tapPosition, point) {
                        // when user selects a new location from the map, load weather data for that location
                        _navigateAndLoadWeather(point, context);
                      },
                      onTap: (tapPosition, point) {
                        // flutter map ontap
                      },
                    ),
                    children: [
                      TileLayer(
                        urlTemplate:
                            "https://api.mapbox.com/styles/v1/imanmes/{styleId}/tiles/256/{z}/{x}/{y}@2x?access_token={accessToken}",
                        additionalOptions: {
                          "accessToken": AppConstants.mapBoxSecretToken,
                          "styleId": AppConstants.styleId,
                        },
                      ),
                      MarkerLayer(markers: [
                        Marker(
                          point: LatLng(
                            mapState.currentUserLocation.latitude,
                            mapState.currentUserLocation.longitude,
                          ),
                          builder: (context) {
                            return Icon(
                              Icons.location_on,
                              color: app_marker_blue_color,
                              size: 50,
                            );
                          },
                        )
                      ]),
                    ],
                    // layers: [
                    // MarkerLayerOptions(markers: [
                    //   Marker(
                    //     point: LatLng(
                    //       mapState.currentUserLocation.latitude,
                    //       mapState.currentUserLocation.longitude,
                    //     ),
                    //     builder: (context) {
                    //       return Icon(
                    //         Icons.location_on,
                    //         color: app_marker_blue_color,
                    //         size: 50,
                    //       );
                    //     },
                    //   )
                    // ]),
                    // ],
                  ),
                  SearchWidget(weatherState: weatherState),
                  if (weatherState.isPlacesFailure)
                    _buildRetryPlaceWidget(state: weatherState),
                  if (weatherState.places.isNotEmpty &&
                      weatherState.arePlacesVisible &&
                      weatherState.arePlacesLoaded)
                    _buildPlacesWidget(weatherState),
                  if (weatherState.arePlacesLoading &&
                      !weatherState.isPlacesFailure)
                    LoadingListTilePlaceHolder(),
                ],
              );
            },
          );
        },
      ),
    );
  }

  Positioned _buildPlacesWidget(WeatherState weatherState) {
    return Positioned(
      top: 95,
      left: 20,
      right: 20,
      child: Container(
        color: Colors.white.withOpacity(0.9),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 8),
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  weatherState.places[index].name,
                ),
                onTap: () {
                  final _latLng = LatLng(
                    weatherState.places[index].latitude,
                    weatherState.places[index].longitude,
                  );
                  _navigateAndLoadWeather(_latLng, context);
                },
              );
            },
            separatorBuilder: (context, index) {
              return Container(
                height: 1,
                width: 40,
              );
            },
            itemCount: weatherState.places.length),
      ),
    );
  }

  void _navigateAndLoadWeather(LatLng _latLng, BuildContext context) {
    _mapController.move(_latLng, 12);
    context.read<WeatherCubit>().hidePlacesListView();

    context.read<MapBoxCubit>().setCurrentUserLocation(
          location: _latLng,
        );

    FocusScope.of(context).unfocus();
    // load current weather for Lat/Lng
    context.read<WeatherCubit>().loadCurrentWeather(
          apiProvider: context.read<GlobalSettingCubit>().state.apiProvider,
          coordinates: _latLng,
        );

    // navigate to weather tab
    context.read<NavigationBarCubit>().changeNavigationTab(
          selectedTab: 1,
        );
  }

  _buildRetryPlaceWidget({required WeatherState state}) {
    return Positioned(
      top: 95,
      left: 20,
      right: 20,
      child: GestureDetector(
        onTap: () {
          if (state.query.isNotEmpty)
            context.read<WeatherCubit>().loadPlaces(
                  apiProvider:
                      context.read<GlobalSettingCubit>().state.apiProvider,
                  query: state.query,
                );
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            color: app_background_color.withOpacity(0.85),
          ),
          child: Column(
            children: [
              PlacesListTileSkeleton(),
              SizedBox(height: 8),
              Text(
                'error occured when fetching, please retry again!',
                style: grey_18_500,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 18),
              Icon(
                Icons.replay_outlined,
                size: 30,
                color: Colors.white,
              ),
              SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }
}
