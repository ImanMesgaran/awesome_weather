// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dio_client_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<WeatherStackModel> getCurrentWeatherDetails_ws(apiKey, query) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'access_key': apiKey,
      r'query': query
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<WeatherStackModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(
                    _dio.options, 'http://api.weatherstack.com/current&units=s',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = WeatherStackModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<OpenWeatherGeocodeModel>> getPlaces_wm(
      apiKey, query, limit) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'appid': apiKey,
      r'q': query,
      r'limit': limit
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<OpenWeatherGeocodeModel>>(Options(
                method: 'GET', headers: _headers, extra: _extra)
            .compose(
                _dio.options, 'http://api.openweathermap.org/geo/1.0/direct',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) =>
            OpenWeatherGeocodeModel.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<OpenForecastModel> getCurrentWeatherDetails_wm(
      apiKey, latitude, longitude) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'appid': apiKey,
      r'lat': latitude,
      r'lon': longitude
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<OpenForecastModel>(Options(
                method: 'GET', headers: _headers, extra: _extra)
            .compose(
                _dio.options, 'http://api.openweathermap.org/data/2.5/weather',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = OpenForecastModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<OpenWeatherModel> getWeatherForecastDetails_wm(
      apiKey, latitude, longitude) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'appid': apiKey,
      r'lat': latitude,
      r'lon': longitude
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<OpenWeatherModel>(Options(
                method: 'GET', headers: _headers, extra: _extra)
            .compose(
                _dio.options, 'http://api.openweathermap.org/data/2.5/forecast',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = OpenWeatherModel.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
