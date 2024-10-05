import 'package:awesome_weather/features/weather_viewer/presentation/cubit/global_setting_cubit/global_setting_cubit.dart';
import 'package:awesome_weather/features/weather_viewer/presentation/cubit/weather_cubit/weather_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchWidget extends StatefulWidget {
  final WeatherState weatherState;

  SearchWidget({required this.weatherState});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  TextEditingController _textController = TextEditingController();
  WeatherCubit? _weatherCubit;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _weatherCubit = context.watch<WeatherCubit>();

    return Positioned(
      top: 65,
      left: 18,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 36,
            child: CupertinoTextField(
              controller: _textController,
              onChanged: (value) {
                if (_weatherCubit?.state.query == value) return;
                if (value.isNotEmpty)
                  _weatherCubit?.loadPlaces(
                    query: value,
                    apiProvider:
                        context.read<GlobalSettingCubit>().state.apiProvider,
                  );
                else
                  _weatherCubit?.hidePlacesListView();
              },
            ),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
