import 'package:awesome_weather/core/global/colors.dart';
import 'package:awesome_weather/core/util/weather_converters.dart';
import 'package:awesome_weather/features/weather_viewer/data/models/open_weather/open_forecast_model.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/cubit/global_setting_cubit/global_setting_cubit.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/widgets/weather/condition_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ForecastHorizontal extends StatelessWidget {
  final List<OpenForecastModel>? weathers;

  const ForecastHorizontal({
    Key? key,
    required this.weathers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TemperatureUnit unit =
        context.watch<GlobalSettingCubit>().state.temperatureUnit;

    return Container(
      height: 70,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: this.weathers?.length ?? 0,
        separatorBuilder: (context, index) => Divider(
          height: 100,
          color: app_accent_color,
        ),
        padding: EdgeInsets.only(left: 10, right: 10),
        itemBuilder: (context, index) {
          final item = this.weathers?[index];
          final _temprature = Temperature(item?.forecastMainModel?.temp ?? 0);

          return Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: ConditionTile(
              DateFormat('E, ha').format(DateTime.fromMillisecondsSinceEpoch(
                  ((item?.dt) ?? 1) * 1000)),
              '${_temprature.as(unit)?.round()}°',
              iconData: _temprature.getIconData(item?.weather?[0].icon ?? ""),
            ),
          );
        },
      ),
    );
  }
}
