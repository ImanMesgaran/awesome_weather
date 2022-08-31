import 'package:awesome_weather/core/global/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PlacesListTileSkeleton extends StatelessWidget {
  PlacesListTileSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      enabled: true,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(height: 25, width: 25),
                    SizedBox(width: 5),
                    Container(
                      width: 170,
                      height: 8.0,
                      color: Colors.white60,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 8.0,
              color: Colors.white,
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 8.0,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class LoadingListTilePlaceHolder extends StatelessWidget {
  final int count;

  LoadingListTilePlaceHolder({this.count = 2});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 95,
      left: 20,
      right: 20,
      child: Container(
        color: Colors.white.withOpacity(0.9),
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.only(bottom: 50),
          shrinkWrap: true,
          itemCount: count,
          itemBuilder: (_, index) {
            return PlacesListTileSkeleton();
          },
        ),
      ),
    );
  }
}

class WeatherForecastSkeleton extends StatelessWidget {
  WeatherForecastSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: app_gray_color,
      enabled: true,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  color: Colors.white60,
                ),
                SizedBox(width: 18),
                Container(
                  height: 70,
                  width: 70,
                  color: Colors.white60,
                ),
                SizedBox(width: 18),
                Container(
                  height: 70,
                  width: 70,
                  color: Colors.white60,
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 100,
                  color: Colors.white60,
                ),
                SizedBox(width: 15),
                Container(
                  height: 40,
                  width: 100,
                  color: Colors.white60,
                ),
              ],
            ),
            SizedBox(height: 35),
            Container(
              width: double.infinity,
              height: 18.0,
              color: Colors.white,
            ),
            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}

class WeatherDetailsSkeleton extends StatelessWidget {
  WeatherDetailsSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: app_gray_color,
      enabled: true,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(width: (MediaQuery.of(context).size.width / 2) - 70),
                Container(
                  height: 70,
                  width: 70,
                  color: Colors.white60,
                ),
                SizedBox(width: 5),
              ],
            ),
            SizedBox(height: 35),
            Container(
              width: double.infinity,
              height: 18.0,
              color: Colors.white,
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  color: Colors.white60,
                ),
                SizedBox(width: 18),
                Container(
                  height: 70,
                  width: 70,
                  color: Colors.white60,
                ),
                SizedBox(width: 18),
                Container(
                  height: 70,
                  width: 70,
                  color: Colors.white60,
                ),
              ],
            ),
            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
