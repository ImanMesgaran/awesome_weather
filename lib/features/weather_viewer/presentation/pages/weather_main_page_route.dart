import 'package:awesome_weather/core/global/colors.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/cubit/bottom_navigation_bar_cubit/navigation_bar_cubit.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/cubit/mapbox_cubit/mapbox_cubit.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/cubit/weather_cubit/weather_cubit.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/pages/setting_page_route.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/pages/weather_detail_page_route.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/pages/weather_map_page_route.dart';
import 'package:flutter/material.dart';
import 'package:awesome_weather/injection_container.dart' as di;

import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherMainPage extends StatefulWidget {
  @override
  WeatherMainPageState createState() => WeatherMainPageState();
}

class WeatherMainPageState extends State<WeatherMainPage> {
  NavigationBarCubit _navigationBarCubit = di.getIt<NavigationBarCubit>();
  WeatherCubit _weatherCubit = di.getIt<WeatherCubit>();
  MapBoxCubit _mapBoxCubit = di.getIt<MapBoxCubit>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  static List<Widget> _pages = <Widget>[
    WeatherMapPageRoute(),
    WeatherForecastPageRoute(),
    SettingsPageRoute(),
  ];

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => _mapBoxCubit,
        ),
        BlocProvider(
          create: (context) => _weatherCubit,
        ),
        BlocProvider(
          create: (context) => _navigationBarCubit,
        ),
      ],
      child: BlocConsumer<NavigationBarCubit, NavigationBarState>(
        listener: (context, navigationBarState) {
          // TODO: implement listener
        },
        builder: (context, navigationBarState) {
          return Scaffold(
              extendBodyBehindAppBar: false,
              bottomNavigationBar: BottomNavigationBar(
                  backgroundColor: app_bar_background_color,
                  elevation: 8,
                  selectedItemColor: Colors.white70,
                  selectedFontSize: 11,
                  showUnselectedLabels: false,
                  currentIndex: navigationBarState.tabIndex,
                  onTap: ((value) {
                    _navigationBarCubit.changeNavigationTab(selectedTab: value);
                  }),
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                        icon: Icon(Icons.map), label: "Map"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.ac_unit_rounded),
                        label: "Details & Forecast"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.settings), label: "Setting"),
                  ]),
              backgroundColor: app_background_color,
              body: IndexedStack(
                index: navigationBarState.tabIndex,
                children: _pages,
              ));
        },
      ),
    );
  }
}
