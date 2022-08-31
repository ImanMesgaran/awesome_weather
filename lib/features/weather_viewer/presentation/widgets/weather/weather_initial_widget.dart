import 'package:awesome_weather/core/global/colors.dart';
import 'package:awesome_weather/core/global/text_styles.dart';
import 'package:flutter/material.dart';

class WeatherInitialWidget extends StatelessWidget {
  const WeatherInitialWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.08, left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Card(
            color: app_gray_color,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 8),
                  Text(
                    'There is no weather information available yet!',
                    style: black_22_600,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Card(
            color: app_gray_color,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
              child: Column(
                children: [
                  SizedBox(height: 8),
                  Text(
                    '• Please use the search box in the Map to lookup for a city.',
                    style: black_14_500,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• You can change the API provider via Setting page.',
                    style: black_14_500,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• You can also change weather Unit in the Setting.',
                    style: black_14_500,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• You also can select a location on the map to get the current weather and weather forecast for that place.',
                    style: black_14_500,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
