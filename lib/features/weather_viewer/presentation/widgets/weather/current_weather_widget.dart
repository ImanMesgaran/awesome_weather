import 'package:awesome_weather/core/global/colors.dart';
import 'package:awesome_weather/core/models/blurhash_fakes.dart';
import 'package:awesome_weather/core/models/octo_set_blur_hash.dart';
import 'package:awesome_weather/core/services/weather_service_data_source.dart';
import 'package:awesome_weather/core/util/weather_converters.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/cubit/global_setting_cubit/global_setting_cubit.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/cubit/weather_cubit/weather_cubit.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/widgets/weather/condition_tile.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/widgets/weather/line_spacer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octo_image/octo_image.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CurrentConditions extends StatelessWidget {
  final WeatherState weatherState;
  const CurrentConditions({
    Key? key,
    required this.weatherState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TemperatureUnit unit =
        context.watch<GlobalSettingCubit>().state.temperatureUnit;
    WeatherAPIProviders provider =
        context.watch<GlobalSettingCubit>().state.apiProvider;

    int? currentTemp = Temperature(this.weatherState.currentWeather?.temprature)
        .as(unit)
        ?.round();
    int? maxTemp = Temperature(this.weatherState.currentWeather?.maxTemprature)
        .as(unit)
        ?.round();
    int? minTemp = Temperature(this.weatherState.currentWeather?.minTemprature)
        .as(unit)
        ?.round();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        if (provider == WeatherAPIProviders.OpenWeatherMap)
          Icon(
            Temperature(this.weatherState.currentWeather?.temprature ?? 0)
                .getIconData(
                    this.weatherState.currentWeather?.weatherIcon ?? ""),
            color: app_accent_color,
            size: 70,
          ),
        if (provider == WeatherAPIProviders.WeatherStack)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: OctoImage(
              height: 50,
              width: 50,
              image: CachedNetworkImageProvider(
                this.weatherState.currentWeather?.weatherIcon ?? "",
              ),
              placeholderBuilder: OctoBlurHashFix.placeHolder(
                BlurHashFake.getBlurHash(),
              ),
              errorBuilder: OctoBlurHashFix.error(BlurHashFake.getBlurHash(),
                  iconColor: Colors.red),
              fit: BoxFit.cover,
            ),
          ),
        SizedBox(height: 20),
        Text(
          currentTemp != null ? '$currentTemp°' : "N/A",
          style: TextStyle(
            fontSize: 100,
            fontWeight: FontWeight.w100,
            color: app_accent_color,
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          ConditionTile("max", maxTemp != null ? '$maxTemp°' : "N/A"),
          LineSpacerWidget(),
          ConditionTile("min", minTemp != null ? '$minTemp°' : "N/A"),
        ]),
      ],
    );
  }
}
