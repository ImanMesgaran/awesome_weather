class AppApiPath {
  static const weatherStackBaseUrl = "http://api.weatherstack.com/";
  static const weatherMapBaseUrl = "http://api.openweathermap.org/";

  // Weather Stack API end-points
  static const WS_currentWeatherByLatLng = "current";
  // Open Weather Map API end-points
  static const WM_currentWeatherByLatLng = "data/2.5/weather";
  static const WM_forecastByLatLng = "data/2.5/forecast";
  static const WM_geocodingByCityName = "geo/1.0/direct";
  static const WM_forecastByCityName =
      'data/2.5/forecast?q={city_name}&appid={API_key}';
  static const WM_reverseGeoCoding =
      'geo/1.0/reverse?lat={lat}&lon={lon}&limit={limit}&appid={API_key}';
}
