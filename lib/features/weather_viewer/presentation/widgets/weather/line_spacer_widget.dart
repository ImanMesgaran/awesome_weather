import 'package:awesome_weather/core/global/colors.dart';
import 'package:flutter/material.dart';

class LineSpacerWidget extends StatelessWidget {
  const LineSpacerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Center(
          child: Container(
        width: 1,
        height: 30,
        color: app_accent_color.withAlpha(50),
      )),
    );
  }
}
