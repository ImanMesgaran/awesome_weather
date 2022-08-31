import 'package:awesome_weather/core/global/colors.dart';
import 'package:flutter/material.dart';

class ConditionTile extends StatelessWidget {
  final String label;
  final String value;
  final IconData? iconData;

  ConditionTile(this.label, this.value, {this.iconData});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          this.label,
          style: TextStyle(color: app_accent_color.withAlpha(80)),
        ),
        SizedBox(height: 5),
        this.iconData != null
            ? Icon(
                iconData,
                color: app_accent_color,
                size: 20,
              )
            : Container(
                width: 0,
                height: 0,
              ),
        SizedBox(height: 10),
        Text(
          this.value,
          style: TextStyle(color: app_accent_color),
        ),
      ],
    );
  }
}
