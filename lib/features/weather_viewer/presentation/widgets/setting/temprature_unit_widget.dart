import 'package:awesome_weather/core/global/colors.dart';
import 'package:awesome_weather/core/util/weather_converters.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/cubit/global_setting_cubit/global_setting_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TempratureUnitWidget extends StatelessWidget {
  const TempratureUnitWidget({
    Key? key,
    required TemperatureUnit temperatureUnit,
  })  : _temperatureUnit = temperatureUnit,
        super(key: key);

  final TemperatureUnit _temperatureUnit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 8, right: 8, bottom: 8),
          child: Text(
            "Temprature Unit:",
            style: TextStyle(
              color: app_accent_color,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            color: app_accent_color.withOpacity(0.1),
          ),
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Celsius (°C)",
                style: TextStyle(color: app_accent_color),
              ),
              Radio(
                value: TemperatureUnit.celsius.index,
                groupValue: _temperatureUnit.index,
                onChanged: (int? value) {
                  context.read<GlobalSettingCubit>().changeTempratureUnit(
                      unit: TemperatureUnit
                          .values[value ?? TemperatureUnit.celsius.index]);
                },
                activeColor: app_accent_color,
              )
            ],
          ),
        ),
        Divider(height: 1),
        Container(
          color: app_accent_color.withOpacity(0.1),
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Fahrenheit (°F)",
                style: TextStyle(color: app_accent_color),
              ),
              Radio(
                value: TemperatureUnit.fahrenheit.index,
                groupValue: _temperatureUnit.index,
                onChanged: (int? value) {
                  context.read<GlobalSettingCubit>().changeTempratureUnit(
                      unit: TemperatureUnit
                          .values[value ?? TemperatureUnit.fahrenheit.index]);
                },
                activeColor: app_accent_color,
              )
            ],
          ),
        ),
        Divider(height: 1),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8)),
            color: app_accent_color.withOpacity(0.1),
          ),
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Kelvin (symbol K)",
                style: TextStyle(color: app_accent_color),
              ),
              Radio(
                value: TemperatureUnit.kelvin.index,
                groupValue: _temperatureUnit.index,
                onChanged: (int? value) {
                  context.read<GlobalSettingCubit>().changeTempratureUnit(
                      unit: TemperatureUnit
                          .values[value ?? TemperatureUnit.kelvin.index]);
                },
                activeColor: app_accent_color,
              )
            ],
          ),
        ),
      ],
    );
  }
}
