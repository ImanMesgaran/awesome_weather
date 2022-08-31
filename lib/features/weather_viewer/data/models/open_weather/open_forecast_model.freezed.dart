// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'open_forecast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpenForecastModel _$OpenForecastModelFromJson(Map<String, dynamic> json) {
  return _OpenForecastModel.fromJson(json);
}

/// @nodoc
mixin _$OpenForecastModel {
  @JsonKey(name: 'dt')
  int get dt => throw _privateConstructorUsedError;
  @JsonKey(name: 'main')
  OpenForecastMainModel? get forecastMainModel =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'weather')
  List<OpenForecastWeatherModel>? get weather =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'clouds')
  OpenForecastCloudsModel? get clouds => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind')
  OpenForecastWindModel? get wind => throw _privateConstructorUsedError;
  @JsonKey(name: 'visibility')
  int? get visibility => throw _privateConstructorUsedError;
  @JsonKey(name: 'pop')
  double? get pop => throw _privateConstructorUsedError;
  @JsonKey(name: 'sys')
  OpenForecastSysModel? get sys => throw _privateConstructorUsedError;
  @JsonKey(name: 'dt_txt')
  DateTime? get dtTxt => throw _privateConstructorUsedError;
  @JsonKey(name: 'rain')
  OpenForecastRainModel? get rain =>
      throw _privateConstructorUsedError; // specific to current weather model
  @JsonKey(name: 'coord')
  OpenCoordinationModel? get coord => throw _privateConstructorUsedError;
  @JsonKey(name: 'base')
  String? get base => throw _privateConstructorUsedError;
  @JsonKey(name: 'timezone')
  int? get timezone => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'cod')
  int? get cod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenForecastModelCopyWith<OpenForecastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenForecastModelCopyWith<$Res> {
  factory $OpenForecastModelCopyWith(
          OpenForecastModel value, $Res Function(OpenForecastModel) then) =
      _$OpenForecastModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'dt') int dt,
      @JsonKey(name: 'main') OpenForecastMainModel? forecastMainModel,
      @JsonKey(name: 'weather') List<OpenForecastWeatherModel>? weather,
      @JsonKey(name: 'clouds') OpenForecastCloudsModel? clouds,
      @JsonKey(name: 'wind') OpenForecastWindModel? wind,
      @JsonKey(name: 'visibility') int? visibility,
      @JsonKey(name: 'pop') double? pop,
      @JsonKey(name: 'sys') OpenForecastSysModel? sys,
      @JsonKey(name: 'dt_txt') DateTime? dtTxt,
      @JsonKey(name: 'rain') OpenForecastRainModel? rain,
      @JsonKey(name: 'coord') OpenCoordinationModel? coord,
      @JsonKey(name: 'base') String? base,
      @JsonKey(name: 'timezone') int? timezone,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'cod') int? cod});

  $OpenForecastMainModelCopyWith<$Res>? get forecastMainModel;
  $OpenForecastCloudsModelCopyWith<$Res>? get clouds;
  $OpenForecastWindModelCopyWith<$Res>? get wind;
  $OpenForecastSysModelCopyWith<$Res>? get sys;
  $OpenForecastRainModelCopyWith<$Res>? get rain;
  $OpenCoordinationModelCopyWith<$Res>? get coord;
}

/// @nodoc
class _$OpenForecastModelCopyWithImpl<$Res>
    implements $OpenForecastModelCopyWith<$Res> {
  _$OpenForecastModelCopyWithImpl(this._value, this._then);

  final OpenForecastModel _value;
  // ignore: unused_field
  final $Res Function(OpenForecastModel) _then;

  @override
  $Res call({
    Object? dt = freezed,
    Object? forecastMainModel = freezed,
    Object? weather = freezed,
    Object? clouds = freezed,
    Object? wind = freezed,
    Object? visibility = freezed,
    Object? pop = freezed,
    Object? sys = freezed,
    Object? dtTxt = freezed,
    Object? rain = freezed,
    Object? coord = freezed,
    Object? base = freezed,
    Object? timezone = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? cod = freezed,
  }) {
    return _then(_value.copyWith(
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      forecastMainModel: forecastMainModel == freezed
          ? _value.forecastMainModel
          : forecastMainModel // ignore: cast_nullable_to_non_nullable
              as OpenForecastMainModel?,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<OpenForecastWeatherModel>?,
      clouds: clouds == freezed
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as OpenForecastCloudsModel?,
      wind: wind == freezed
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as OpenForecastWindModel?,
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      pop: pop == freezed
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double?,
      sys: sys == freezed
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as OpenForecastSysModel?,
      dtTxt: dtTxt == freezed
          ? _value.dtTxt
          : dtTxt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rain: rain == freezed
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as OpenForecastRainModel?,
      coord: coord == freezed
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as OpenCoordinationModel?,
      base: base == freezed
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cod: cod == freezed
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $OpenForecastMainModelCopyWith<$Res>? get forecastMainModel {
    if (_value.forecastMainModel == null) {
      return null;
    }

    return $OpenForecastMainModelCopyWith<$Res>(_value.forecastMainModel!,
        (value) {
      return _then(_value.copyWith(forecastMainModel: value));
    });
  }

  @override
  $OpenForecastCloudsModelCopyWith<$Res>? get clouds {
    if (_value.clouds == null) {
      return null;
    }

    return $OpenForecastCloudsModelCopyWith<$Res>(_value.clouds!, (value) {
      return _then(_value.copyWith(clouds: value));
    });
  }

  @override
  $OpenForecastWindModelCopyWith<$Res>? get wind {
    if (_value.wind == null) {
      return null;
    }

    return $OpenForecastWindModelCopyWith<$Res>(_value.wind!, (value) {
      return _then(_value.copyWith(wind: value));
    });
  }

  @override
  $OpenForecastSysModelCopyWith<$Res>? get sys {
    if (_value.sys == null) {
      return null;
    }

    return $OpenForecastSysModelCopyWith<$Res>(_value.sys!, (value) {
      return _then(_value.copyWith(sys: value));
    });
  }

  @override
  $OpenForecastRainModelCopyWith<$Res>? get rain {
    if (_value.rain == null) {
      return null;
    }

    return $OpenForecastRainModelCopyWith<$Res>(_value.rain!, (value) {
      return _then(_value.copyWith(rain: value));
    });
  }

  @override
  $OpenCoordinationModelCopyWith<$Res>? get coord {
    if (_value.coord == null) {
      return null;
    }

    return $OpenCoordinationModelCopyWith<$Res>(_value.coord!, (value) {
      return _then(_value.copyWith(coord: value));
    });
  }
}

/// @nodoc
abstract class _$$_OpenForecastModelCopyWith<$Res>
    implements $OpenForecastModelCopyWith<$Res> {
  factory _$$_OpenForecastModelCopyWith(_$_OpenForecastModel value,
          $Res Function(_$_OpenForecastModel) then) =
      __$$_OpenForecastModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'dt') int dt,
      @JsonKey(name: 'main') OpenForecastMainModel? forecastMainModel,
      @JsonKey(name: 'weather') List<OpenForecastWeatherModel>? weather,
      @JsonKey(name: 'clouds') OpenForecastCloudsModel? clouds,
      @JsonKey(name: 'wind') OpenForecastWindModel? wind,
      @JsonKey(name: 'visibility') int? visibility,
      @JsonKey(name: 'pop') double? pop,
      @JsonKey(name: 'sys') OpenForecastSysModel? sys,
      @JsonKey(name: 'dt_txt') DateTime? dtTxt,
      @JsonKey(name: 'rain') OpenForecastRainModel? rain,
      @JsonKey(name: 'coord') OpenCoordinationModel? coord,
      @JsonKey(name: 'base') String? base,
      @JsonKey(name: 'timezone') int? timezone,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'cod') int? cod});

  @override
  $OpenForecastMainModelCopyWith<$Res>? get forecastMainModel;
  @override
  $OpenForecastCloudsModelCopyWith<$Res>? get clouds;
  @override
  $OpenForecastWindModelCopyWith<$Res>? get wind;
  @override
  $OpenForecastSysModelCopyWith<$Res>? get sys;
  @override
  $OpenForecastRainModelCopyWith<$Res>? get rain;
  @override
  $OpenCoordinationModelCopyWith<$Res>? get coord;
}

/// @nodoc
class __$$_OpenForecastModelCopyWithImpl<$Res>
    extends _$OpenForecastModelCopyWithImpl<$Res>
    implements _$$_OpenForecastModelCopyWith<$Res> {
  __$$_OpenForecastModelCopyWithImpl(
      _$_OpenForecastModel _value, $Res Function(_$_OpenForecastModel) _then)
      : super(_value, (v) => _then(v as _$_OpenForecastModel));

  @override
  _$_OpenForecastModel get _value => super._value as _$_OpenForecastModel;

  @override
  $Res call({
    Object? dt = freezed,
    Object? forecastMainModel = freezed,
    Object? weather = freezed,
    Object? clouds = freezed,
    Object? wind = freezed,
    Object? visibility = freezed,
    Object? pop = freezed,
    Object? sys = freezed,
    Object? dtTxt = freezed,
    Object? rain = freezed,
    Object? coord = freezed,
    Object? base = freezed,
    Object? timezone = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? cod = freezed,
  }) {
    return _then(_$_OpenForecastModel(
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      forecastMainModel: forecastMainModel == freezed
          ? _value.forecastMainModel
          : forecastMainModel // ignore: cast_nullable_to_non_nullable
              as OpenForecastMainModel?,
      weather: weather == freezed
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<OpenForecastWeatherModel>?,
      clouds: clouds == freezed
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as OpenForecastCloudsModel?,
      wind: wind == freezed
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as OpenForecastWindModel?,
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      pop: pop == freezed
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double?,
      sys: sys == freezed
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as OpenForecastSysModel?,
      dtTxt: dtTxt == freezed
          ? _value.dtTxt
          : dtTxt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rain: rain == freezed
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as OpenForecastRainModel?,
      coord: coord == freezed
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as OpenCoordinationModel?,
      base: base == freezed
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cod: cod == freezed
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenForecastModel implements _OpenForecastModel {
  const _$_OpenForecastModel(
      {@JsonKey(name: 'dt')
          required this.dt,
      @JsonKey(name: 'main')
          required this.forecastMainModel,
      @JsonKey(name: 'weather')
          required final List<OpenForecastWeatherModel>? weather,
      @JsonKey(name: 'clouds')
          required this.clouds,
      @JsonKey(name: 'wind')
          required this.wind,
      @JsonKey(name: 'visibility')
          required this.visibility,
      @JsonKey(name: 'pop')
          required this.pop,
      @JsonKey(name: 'sys')
          required this.sys,
      @JsonKey(name: 'dt_txt')
          required this.dtTxt,
      @JsonKey(name: 'rain')
          required this.rain,
      @JsonKey(name: 'coord')
          required this.coord,
      @JsonKey(name: 'base')
          required this.base,
      @JsonKey(name: 'timezone')
          required this.timezone,
      @JsonKey(name: 'id')
          required this.id,
      @JsonKey(name: 'name')
          required this.name,
      @JsonKey(name: 'cod')
          required this.cod})
      : _weather = weather;

  factory _$_OpenForecastModel.fromJson(Map<String, dynamic> json) =>
      _$$_OpenForecastModelFromJson(json);

  @override
  @JsonKey(name: 'dt')
  final int dt;
  @override
  @JsonKey(name: 'main')
  final OpenForecastMainModel? forecastMainModel;
  final List<OpenForecastWeatherModel>? _weather;
  @override
  @JsonKey(name: 'weather')
  List<OpenForecastWeatherModel>? get weather {
    final value = _weather;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'clouds')
  final OpenForecastCloudsModel? clouds;
  @override
  @JsonKey(name: 'wind')
  final OpenForecastWindModel? wind;
  @override
  @JsonKey(name: 'visibility')
  final int? visibility;
  @override
  @JsonKey(name: 'pop')
  final double? pop;
  @override
  @JsonKey(name: 'sys')
  final OpenForecastSysModel? sys;
  @override
  @JsonKey(name: 'dt_txt')
  final DateTime? dtTxt;
  @override
  @JsonKey(name: 'rain')
  final OpenForecastRainModel? rain;
// specific to current weather model
  @override
  @JsonKey(name: 'coord')
  final OpenCoordinationModel? coord;
  @override
  @JsonKey(name: 'base')
  final String? base;
  @override
  @JsonKey(name: 'timezone')
  final int? timezone;
  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'cod')
  final int? cod;

  @override
  String toString() {
    return 'OpenForecastModel(dt: $dt, forecastMainModel: $forecastMainModel, weather: $weather, clouds: $clouds, wind: $wind, visibility: $visibility, pop: $pop, sys: $sys, dtTxt: $dtTxt, rain: $rain, coord: $coord, base: $base, timezone: $timezone, id: $id, name: $name, cod: $cod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenForecastModel &&
            const DeepCollectionEquality().equals(other.dt, dt) &&
            const DeepCollectionEquality()
                .equals(other.forecastMainModel, forecastMainModel) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            const DeepCollectionEquality().equals(other.clouds, clouds) &&
            const DeepCollectionEquality().equals(other.wind, wind) &&
            const DeepCollectionEquality()
                .equals(other.visibility, visibility) &&
            const DeepCollectionEquality().equals(other.pop, pop) &&
            const DeepCollectionEquality().equals(other.sys, sys) &&
            const DeepCollectionEquality().equals(other.dtTxt, dtTxt) &&
            const DeepCollectionEquality().equals(other.rain, rain) &&
            const DeepCollectionEquality().equals(other.coord, coord) &&
            const DeepCollectionEquality().equals(other.base, base) &&
            const DeepCollectionEquality().equals(other.timezone, timezone) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.cod, cod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dt),
      const DeepCollectionEquality().hash(forecastMainModel),
      const DeepCollectionEquality().hash(_weather),
      const DeepCollectionEquality().hash(clouds),
      const DeepCollectionEquality().hash(wind),
      const DeepCollectionEquality().hash(visibility),
      const DeepCollectionEquality().hash(pop),
      const DeepCollectionEquality().hash(sys),
      const DeepCollectionEquality().hash(dtTxt),
      const DeepCollectionEquality().hash(rain),
      const DeepCollectionEquality().hash(coord),
      const DeepCollectionEquality().hash(base),
      const DeepCollectionEquality().hash(timezone),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(cod));

  @JsonKey(ignore: true)
  @override
  _$$_OpenForecastModelCopyWith<_$_OpenForecastModel> get copyWith =>
      __$$_OpenForecastModelCopyWithImpl<_$_OpenForecastModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenForecastModelToJson(
      this,
    );
  }
}

abstract class _OpenForecastModel implements OpenForecastModel {
  const factory _OpenForecastModel(
      {@JsonKey(name: 'dt')
          required final int dt,
      @JsonKey(name: 'main')
          required final OpenForecastMainModel? forecastMainModel,
      @JsonKey(name: 'weather')
          required final List<OpenForecastWeatherModel>? weather,
      @JsonKey(name: 'clouds')
          required final OpenForecastCloudsModel? clouds,
      @JsonKey(name: 'wind')
          required final OpenForecastWindModel? wind,
      @JsonKey(name: 'visibility')
          required final int? visibility,
      @JsonKey(name: 'pop')
          required final double? pop,
      @JsonKey(name: 'sys')
          required final OpenForecastSysModel? sys,
      @JsonKey(name: 'dt_txt')
          required final DateTime? dtTxt,
      @JsonKey(name: 'rain')
          required final OpenForecastRainModel? rain,
      @JsonKey(name: 'coord')
          required final OpenCoordinationModel? coord,
      @JsonKey(name: 'base')
          required final String? base,
      @JsonKey(name: 'timezone')
          required final int? timezone,
      @JsonKey(name: 'id')
          required final int? id,
      @JsonKey(name: 'name')
          required final String? name,
      @JsonKey(name: 'cod')
          required final int? cod}) = _$_OpenForecastModel;

  factory _OpenForecastModel.fromJson(Map<String, dynamic> json) =
      _$_OpenForecastModel.fromJson;

  @override
  @JsonKey(name: 'dt')
  int get dt;
  @override
  @JsonKey(name: 'main')
  OpenForecastMainModel? get forecastMainModel;
  @override
  @JsonKey(name: 'weather')
  List<OpenForecastWeatherModel>? get weather;
  @override
  @JsonKey(name: 'clouds')
  OpenForecastCloudsModel? get clouds;
  @override
  @JsonKey(name: 'wind')
  OpenForecastWindModel? get wind;
  @override
  @JsonKey(name: 'visibility')
  int? get visibility;
  @override
  @JsonKey(name: 'pop')
  double? get pop;
  @override
  @JsonKey(name: 'sys')
  OpenForecastSysModel? get sys;
  @override
  @JsonKey(name: 'dt_txt')
  DateTime? get dtTxt;
  @override
  @JsonKey(name: 'rain')
  OpenForecastRainModel? get rain;
  @override // specific to current weather model
  @JsonKey(name: 'coord')
  OpenCoordinationModel? get coord;
  @override
  @JsonKey(name: 'base')
  String? get base;
  @override
  @JsonKey(name: 'timezone')
  int? get timezone;
  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'cod')
  int? get cod;
  @override
  @JsonKey(ignore: true)
  _$$_OpenForecastModelCopyWith<_$_OpenForecastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenForecastCloudsModel _$OpenForecastCloudsModelFromJson(
    Map<String, dynamic> json) {
  return _OpenForecastCloudsModel.fromJson(json);
}

/// @nodoc
mixin _$OpenForecastCloudsModel {
  @JsonKey(name: 'all')
  int? get all => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenForecastCloudsModelCopyWith<OpenForecastCloudsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenForecastCloudsModelCopyWith<$Res> {
  factory $OpenForecastCloudsModelCopyWith(OpenForecastCloudsModel value,
          $Res Function(OpenForecastCloudsModel) then) =
      _$OpenForecastCloudsModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'all') int? all});
}

/// @nodoc
class _$OpenForecastCloudsModelCopyWithImpl<$Res>
    implements $OpenForecastCloudsModelCopyWith<$Res> {
  _$OpenForecastCloudsModelCopyWithImpl(this._value, this._then);

  final OpenForecastCloudsModel _value;
  // ignore: unused_field
  final $Res Function(OpenForecastCloudsModel) _then;

  @override
  $Res call({
    Object? all = freezed,
  }) {
    return _then(_value.copyWith(
      all: all == freezed
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_OpenForecastCloudsModelCopyWith<$Res>
    implements $OpenForecastCloudsModelCopyWith<$Res> {
  factory _$$_OpenForecastCloudsModelCopyWith(_$_OpenForecastCloudsModel value,
          $Res Function(_$_OpenForecastCloudsModel) then) =
      __$$_OpenForecastCloudsModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'all') int? all});
}

/// @nodoc
class __$$_OpenForecastCloudsModelCopyWithImpl<$Res>
    extends _$OpenForecastCloudsModelCopyWithImpl<$Res>
    implements _$$_OpenForecastCloudsModelCopyWith<$Res> {
  __$$_OpenForecastCloudsModelCopyWithImpl(_$_OpenForecastCloudsModel _value,
      $Res Function(_$_OpenForecastCloudsModel) _then)
      : super(_value, (v) => _then(v as _$_OpenForecastCloudsModel));

  @override
  _$_OpenForecastCloudsModel get _value =>
      super._value as _$_OpenForecastCloudsModel;

  @override
  $Res call({
    Object? all = freezed,
  }) {
    return _then(_$_OpenForecastCloudsModel(
      all: all == freezed
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenForecastCloudsModel implements _OpenForecastCloudsModel {
  const _$_OpenForecastCloudsModel({@JsonKey(name: 'all') required this.all});

  factory _$_OpenForecastCloudsModel.fromJson(Map<String, dynamic> json) =>
      _$$_OpenForecastCloudsModelFromJson(json);

  @override
  @JsonKey(name: 'all')
  final int? all;

  @override
  String toString() {
    return 'OpenForecastCloudsModel(all: $all)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenForecastCloudsModel &&
            const DeepCollectionEquality().equals(other.all, all));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(all));

  @JsonKey(ignore: true)
  @override
  _$$_OpenForecastCloudsModelCopyWith<_$_OpenForecastCloudsModel>
      get copyWith =>
          __$$_OpenForecastCloudsModelCopyWithImpl<_$_OpenForecastCloudsModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenForecastCloudsModelToJson(
      this,
    );
  }
}

abstract class _OpenForecastCloudsModel implements OpenForecastCloudsModel {
  const factory _OpenForecastCloudsModel(
          {@JsonKey(name: 'all') required final int? all}) =
      _$_OpenForecastCloudsModel;

  factory _OpenForecastCloudsModel.fromJson(Map<String, dynamic> json) =
      _$_OpenForecastCloudsModel.fromJson;

  @override
  @JsonKey(name: 'all')
  int? get all;
  @override
  @JsonKey(ignore: true)
  _$$_OpenForecastCloudsModelCopyWith<_$_OpenForecastCloudsModel>
      get copyWith => throw _privateConstructorUsedError;
}

OpenForecastRainModel _$OpenForecastRainModelFromJson(
    Map<String, dynamic> json) {
  return _OpenForecastRainModel.fromJson(json);
}

/// @nodoc
mixin _$OpenForecastRainModel {
  @JsonKey(name: '3h')
  double? get the3H => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenForecastRainModelCopyWith<OpenForecastRainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenForecastRainModelCopyWith<$Res> {
  factory $OpenForecastRainModelCopyWith(OpenForecastRainModel value,
          $Res Function(OpenForecastRainModel) then) =
      _$OpenForecastRainModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: '3h') double? the3H});
}

/// @nodoc
class _$OpenForecastRainModelCopyWithImpl<$Res>
    implements $OpenForecastRainModelCopyWith<$Res> {
  _$OpenForecastRainModelCopyWithImpl(this._value, this._then);

  final OpenForecastRainModel _value;
  // ignore: unused_field
  final $Res Function(OpenForecastRainModel) _then;

  @override
  $Res call({
    Object? the3H = freezed,
  }) {
    return _then(_value.copyWith(
      the3H: the3H == freezed
          ? _value.the3H
          : the3H // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_OpenForecastRainModelCopyWith<$Res>
    implements $OpenForecastRainModelCopyWith<$Res> {
  factory _$$_OpenForecastRainModelCopyWith(_$_OpenForecastRainModel value,
          $Res Function(_$_OpenForecastRainModel) then) =
      __$$_OpenForecastRainModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: '3h') double? the3H});
}

/// @nodoc
class __$$_OpenForecastRainModelCopyWithImpl<$Res>
    extends _$OpenForecastRainModelCopyWithImpl<$Res>
    implements _$$_OpenForecastRainModelCopyWith<$Res> {
  __$$_OpenForecastRainModelCopyWithImpl(_$_OpenForecastRainModel _value,
      $Res Function(_$_OpenForecastRainModel) _then)
      : super(_value, (v) => _then(v as _$_OpenForecastRainModel));

  @override
  _$_OpenForecastRainModel get _value =>
      super._value as _$_OpenForecastRainModel;

  @override
  $Res call({
    Object? the3H = freezed,
  }) {
    return _then(_$_OpenForecastRainModel(
      the3H: the3H == freezed
          ? _value.the3H
          : the3H // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenForecastRainModel implements _OpenForecastRainModel {
  const _$_OpenForecastRainModel({@JsonKey(name: '3h') required this.the3H});

  factory _$_OpenForecastRainModel.fromJson(Map<String, dynamic> json) =>
      _$$_OpenForecastRainModelFromJson(json);

  @override
  @JsonKey(name: '3h')
  final double? the3H;

  @override
  String toString() {
    return 'OpenForecastRainModel(the3H: $the3H)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenForecastRainModel &&
            const DeepCollectionEquality().equals(other.the3H, the3H));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(the3H));

  @JsonKey(ignore: true)
  @override
  _$$_OpenForecastRainModelCopyWith<_$_OpenForecastRainModel> get copyWith =>
      __$$_OpenForecastRainModelCopyWithImpl<_$_OpenForecastRainModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenForecastRainModelToJson(
      this,
    );
  }
}

abstract class _OpenForecastRainModel implements OpenForecastRainModel {
  const factory _OpenForecastRainModel(
          {@JsonKey(name: '3h') required final double? the3H}) =
      _$_OpenForecastRainModel;

  factory _OpenForecastRainModel.fromJson(Map<String, dynamic> json) =
      _$_OpenForecastRainModel.fromJson;

  @override
  @JsonKey(name: '3h')
  double? get the3H;
  @override
  @JsonKey(ignore: true)
  _$$_OpenForecastRainModelCopyWith<_$_OpenForecastRainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenForecastSysModel _$OpenForecastSysModelFromJson(Map<String, dynamic> json) {
  return _OpenForecastSysModel.fromJson(json);
}

/// @nodoc
mixin _$OpenForecastSysModel {
  @JsonKey(name: 'pod')
  String? get pod => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  int? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'sunrise')
  int? get sunrise => throw _privateConstructorUsedError;
  @JsonKey(name: 'sunset')
  int? get sunset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenForecastSysModelCopyWith<OpenForecastSysModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenForecastSysModelCopyWith<$Res> {
  factory $OpenForecastSysModelCopyWith(OpenForecastSysModel value,
          $Res Function(OpenForecastSysModel) then) =
      _$OpenForecastSysModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'pod') String? pod,
      @JsonKey(name: 'type') int? type,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'country') String? country,
      @JsonKey(name: 'sunrise') int? sunrise,
      @JsonKey(name: 'sunset') int? sunset});
}

/// @nodoc
class _$OpenForecastSysModelCopyWithImpl<$Res>
    implements $OpenForecastSysModelCopyWith<$Res> {
  _$OpenForecastSysModelCopyWithImpl(this._value, this._then);

  final OpenForecastSysModel _value;
  // ignore: unused_field
  final $Res Function(OpenForecastSysModel) _then;

  @override
  $Res call({
    Object? pod = freezed,
    Object? type = freezed,
    Object? id = freezed,
    Object? country = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
  }) {
    return _then(_value.copyWith(
      pod: pod == freezed
          ? _value.pod
          : pod // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      sunrise: sunrise == freezed
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: sunset == freezed
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_OpenForecastSysModelCopyWith<$Res>
    implements $OpenForecastSysModelCopyWith<$Res> {
  factory _$$_OpenForecastSysModelCopyWith(_$_OpenForecastSysModel value,
          $Res Function(_$_OpenForecastSysModel) then) =
      __$$_OpenForecastSysModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'pod') String? pod,
      @JsonKey(name: 'type') int? type,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'country') String? country,
      @JsonKey(name: 'sunrise') int? sunrise,
      @JsonKey(name: 'sunset') int? sunset});
}

/// @nodoc
class __$$_OpenForecastSysModelCopyWithImpl<$Res>
    extends _$OpenForecastSysModelCopyWithImpl<$Res>
    implements _$$_OpenForecastSysModelCopyWith<$Res> {
  __$$_OpenForecastSysModelCopyWithImpl(_$_OpenForecastSysModel _value,
      $Res Function(_$_OpenForecastSysModel) _then)
      : super(_value, (v) => _then(v as _$_OpenForecastSysModel));

  @override
  _$_OpenForecastSysModel get _value => super._value as _$_OpenForecastSysModel;

  @override
  $Res call({
    Object? pod = freezed,
    Object? type = freezed,
    Object? id = freezed,
    Object? country = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
  }) {
    return _then(_$_OpenForecastSysModel(
      pod: pod == freezed
          ? _value.pod
          : pod // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      sunrise: sunrise == freezed
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: sunset == freezed
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenForecastSysModel implements _OpenForecastSysModel {
  const _$_OpenForecastSysModel(
      {@JsonKey(name: 'pod') required this.pod,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'country') required this.country,
      @JsonKey(name: 'sunrise') required this.sunrise,
      @JsonKey(name: 'sunset') required this.sunset});

  factory _$_OpenForecastSysModel.fromJson(Map<String, dynamic> json) =>
      _$$_OpenForecastSysModelFromJson(json);

  @override
  @JsonKey(name: 'pod')
  final String? pod;
  @override
  @JsonKey(name: 'type')
  final int? type;
  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'country')
  final String? country;
  @override
  @JsonKey(name: 'sunrise')
  final int? sunrise;
  @override
  @JsonKey(name: 'sunset')
  final int? sunset;

  @override
  String toString() {
    return 'OpenForecastSysModel(pod: $pod, type: $type, id: $id, country: $country, sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenForecastSysModel &&
            const DeepCollectionEquality().equals(other.pod, pod) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.sunrise, sunrise) &&
            const DeepCollectionEquality().equals(other.sunset, sunset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pod),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(sunrise),
      const DeepCollectionEquality().hash(sunset));

  @JsonKey(ignore: true)
  @override
  _$$_OpenForecastSysModelCopyWith<_$_OpenForecastSysModel> get copyWith =>
      __$$_OpenForecastSysModelCopyWithImpl<_$_OpenForecastSysModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenForecastSysModelToJson(
      this,
    );
  }
}

abstract class _OpenForecastSysModel implements OpenForecastSysModel {
  const factory _OpenForecastSysModel(
          {@JsonKey(name: 'pod') required final String? pod,
          @JsonKey(name: 'type') required final int? type,
          @JsonKey(name: 'id') required final int? id,
          @JsonKey(name: 'country') required final String? country,
          @JsonKey(name: 'sunrise') required final int? sunrise,
          @JsonKey(name: 'sunset') required final int? sunset}) =
      _$_OpenForecastSysModel;

  factory _OpenForecastSysModel.fromJson(Map<String, dynamic> json) =
      _$_OpenForecastSysModel.fromJson;

  @override
  @JsonKey(name: 'pod')
  String? get pod;
  @override
  @JsonKey(name: 'type')
  int? get type;
  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'country')
  String? get country;
  @override
  @JsonKey(name: 'sunrise')
  int? get sunrise;
  @override
  @JsonKey(name: 'sunset')
  int? get sunset;
  @override
  @JsonKey(ignore: true)
  _$$_OpenForecastSysModelCopyWith<_$_OpenForecastSysModel> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenForecastWindModel _$OpenForecastWindModelFromJson(
    Map<String, dynamic> json) {
  return _OpenForecastWindModel.fromJson(json);
}

/// @nodoc
mixin _$OpenForecastWindModel {
  @JsonKey(name: 'speed')
  double? get speed => throw _privateConstructorUsedError;
  @JsonKey(name: 'deg')
  int? get deg => throw _privateConstructorUsedError;
  @JsonKey(name: 'gust')
  double? get gust => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenForecastWindModelCopyWith<OpenForecastWindModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenForecastWindModelCopyWith<$Res> {
  factory $OpenForecastWindModelCopyWith(OpenForecastWindModel value,
          $Res Function(OpenForecastWindModel) then) =
      _$OpenForecastWindModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'speed') double? speed,
      @JsonKey(name: 'deg') int? deg,
      @JsonKey(name: 'gust') double? gust});
}

/// @nodoc
class _$OpenForecastWindModelCopyWithImpl<$Res>
    implements $OpenForecastWindModelCopyWith<$Res> {
  _$OpenForecastWindModelCopyWithImpl(this._value, this._then);

  final OpenForecastWindModel _value;
  // ignore: unused_field
  final $Res Function(OpenForecastWindModel) _then;

  @override
  $Res call({
    Object? speed = freezed,
    Object? deg = freezed,
    Object? gust = freezed,
  }) {
    return _then(_value.copyWith(
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double?,
      deg: deg == freezed
          ? _value.deg
          : deg // ignore: cast_nullable_to_non_nullable
              as int?,
      gust: gust == freezed
          ? _value.gust
          : gust // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_OpenForecastWindModelCopyWith<$Res>
    implements $OpenForecastWindModelCopyWith<$Res> {
  factory _$$_OpenForecastWindModelCopyWith(_$_OpenForecastWindModel value,
          $Res Function(_$_OpenForecastWindModel) then) =
      __$$_OpenForecastWindModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'speed') double? speed,
      @JsonKey(name: 'deg') int? deg,
      @JsonKey(name: 'gust') double? gust});
}

/// @nodoc
class __$$_OpenForecastWindModelCopyWithImpl<$Res>
    extends _$OpenForecastWindModelCopyWithImpl<$Res>
    implements _$$_OpenForecastWindModelCopyWith<$Res> {
  __$$_OpenForecastWindModelCopyWithImpl(_$_OpenForecastWindModel _value,
      $Res Function(_$_OpenForecastWindModel) _then)
      : super(_value, (v) => _then(v as _$_OpenForecastWindModel));

  @override
  _$_OpenForecastWindModel get _value =>
      super._value as _$_OpenForecastWindModel;

  @override
  $Res call({
    Object? speed = freezed,
    Object? deg = freezed,
    Object? gust = freezed,
  }) {
    return _then(_$_OpenForecastWindModel(
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double?,
      deg: deg == freezed
          ? _value.deg
          : deg // ignore: cast_nullable_to_non_nullable
              as int?,
      gust: gust == freezed
          ? _value.gust
          : gust // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenForecastWindModel implements _OpenForecastWindModel {
  const _$_OpenForecastWindModel(
      {@JsonKey(name: 'speed') required this.speed,
      @JsonKey(name: 'deg') required this.deg,
      @JsonKey(name: 'gust') required this.gust});

  factory _$_OpenForecastWindModel.fromJson(Map<String, dynamic> json) =>
      _$$_OpenForecastWindModelFromJson(json);

  @override
  @JsonKey(name: 'speed')
  final double? speed;
  @override
  @JsonKey(name: 'deg')
  final int? deg;
  @override
  @JsonKey(name: 'gust')
  final double? gust;

  @override
  String toString() {
    return 'OpenForecastWindModel(speed: $speed, deg: $deg, gust: $gust)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenForecastWindModel &&
            const DeepCollectionEquality().equals(other.speed, speed) &&
            const DeepCollectionEquality().equals(other.deg, deg) &&
            const DeepCollectionEquality().equals(other.gust, gust));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(speed),
      const DeepCollectionEquality().hash(deg),
      const DeepCollectionEquality().hash(gust));

  @JsonKey(ignore: true)
  @override
  _$$_OpenForecastWindModelCopyWith<_$_OpenForecastWindModel> get copyWith =>
      __$$_OpenForecastWindModelCopyWithImpl<_$_OpenForecastWindModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenForecastWindModelToJson(
      this,
    );
  }
}

abstract class _OpenForecastWindModel implements OpenForecastWindModel {
  const factory _OpenForecastWindModel(
          {@JsonKey(name: 'speed') required final double? speed,
          @JsonKey(name: 'deg') required final int? deg,
          @JsonKey(name: 'gust') required final double? gust}) =
      _$_OpenForecastWindModel;

  factory _OpenForecastWindModel.fromJson(Map<String, dynamic> json) =
      _$_OpenForecastWindModel.fromJson;

  @override
  @JsonKey(name: 'speed')
  double? get speed;
  @override
  @JsonKey(name: 'deg')
  int? get deg;
  @override
  @JsonKey(name: 'gust')
  double? get gust;
  @override
  @JsonKey(ignore: true)
  _$$_OpenForecastWindModelCopyWith<_$_OpenForecastWindModel> get copyWith =>
      throw _privateConstructorUsedError;
}
