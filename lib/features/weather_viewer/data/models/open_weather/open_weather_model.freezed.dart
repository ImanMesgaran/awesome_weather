// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'open_weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpenWeatherModel _$OpenWeatherModelFromJson(Map<String, dynamic> json) {
  return _OpenWeatherModel.fromJson(json);
}

/// @nodoc
mixin _$OpenWeatherModel {
  @JsonKey(name: 'cod')
  String? get cod => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  int? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'cnt')
  int? get cnt => throw _privateConstructorUsedError;
  @JsonKey(name: 'list')
  List<OpenForecastModel>? get list => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  OpenCityModel? get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenWeatherModelCopyWith<OpenWeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenWeatherModelCopyWith<$Res> {
  factory $OpenWeatherModelCopyWith(
          OpenWeatherModel value, $Res Function(OpenWeatherModel) then) =
      _$OpenWeatherModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'cod') String? cod,
      @JsonKey(name: 'message') int? message,
      @JsonKey(name: 'cnt') int? cnt,
      @JsonKey(name: 'list') List<OpenForecastModel>? list,
      @JsonKey(name: 'city') OpenCityModel? city});

  $OpenCityModelCopyWith<$Res>? get city;
}

/// @nodoc
class _$OpenWeatherModelCopyWithImpl<$Res>
    implements $OpenWeatherModelCopyWith<$Res> {
  _$OpenWeatherModelCopyWithImpl(this._value, this._then);

  final OpenWeatherModel _value;
  // ignore: unused_field
  final $Res Function(OpenWeatherModel) _then;

  @override
  $Res call({
    Object? cod = freezed,
    Object? message = freezed,
    Object? cnt = freezed,
    Object? list = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      cod: cod == freezed
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as int?,
      cnt: cnt == freezed
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int?,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<OpenForecastModel>?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as OpenCityModel?,
    ));
  }

  @override
  $OpenCityModelCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $OpenCityModelCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value));
    });
  }
}

/// @nodoc
abstract class _$$_OpenWeatherModelCopyWith<$Res>
    implements $OpenWeatherModelCopyWith<$Res> {
  factory _$$_OpenWeatherModelCopyWith(
          _$_OpenWeatherModel value, $Res Function(_$_OpenWeatherModel) then) =
      __$$_OpenWeatherModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'cod') String? cod,
      @JsonKey(name: 'message') int? message,
      @JsonKey(name: 'cnt') int? cnt,
      @JsonKey(name: 'list') List<OpenForecastModel>? list,
      @JsonKey(name: 'city') OpenCityModel? city});

  @override
  $OpenCityModelCopyWith<$Res>? get city;
}

/// @nodoc
class __$$_OpenWeatherModelCopyWithImpl<$Res>
    extends _$OpenWeatherModelCopyWithImpl<$Res>
    implements _$$_OpenWeatherModelCopyWith<$Res> {
  __$$_OpenWeatherModelCopyWithImpl(
      _$_OpenWeatherModel _value, $Res Function(_$_OpenWeatherModel) _then)
      : super(_value, (v) => _then(v as _$_OpenWeatherModel));

  @override
  _$_OpenWeatherModel get _value => super._value as _$_OpenWeatherModel;

  @override
  $Res call({
    Object? cod = freezed,
    Object? message = freezed,
    Object? cnt = freezed,
    Object? list = freezed,
    Object? city = freezed,
  }) {
    return _then(_$_OpenWeatherModel(
      cod: cod == freezed
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as int?,
      cnt: cnt == freezed
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int?,
      list: list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<OpenForecastModel>?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as OpenCityModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenWeatherModel implements _OpenWeatherModel {
  const _$_OpenWeatherModel(
      {@JsonKey(name: 'cod') required this.cod,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'cnt') required this.cnt,
      @JsonKey(name: 'list') required final List<OpenForecastModel>? list,
      @JsonKey(name: 'city') required this.city})
      : _list = list;

  factory _$_OpenWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$$_OpenWeatherModelFromJson(json);

  @override
  @JsonKey(name: 'cod')
  final String? cod;
  @override
  @JsonKey(name: 'message')
  final int? message;
  @override
  @JsonKey(name: 'cnt')
  final int? cnt;
  final List<OpenForecastModel>? _list;
  @override
  @JsonKey(name: 'list')
  List<OpenForecastModel>? get list {
    final value = _list;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'city')
  final OpenCityModel? city;

  @override
  String toString() {
    return 'OpenWeatherModel(cod: $cod, message: $message, cnt: $cnt, list: $list, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenWeatherModel &&
            const DeepCollectionEquality().equals(other.cod, cod) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.cnt, cnt) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            const DeepCollectionEquality().equals(other.city, city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cod),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(cnt),
      const DeepCollectionEquality().hash(_list),
      const DeepCollectionEquality().hash(city));

  @JsonKey(ignore: true)
  @override
  _$$_OpenWeatherModelCopyWith<_$_OpenWeatherModel> get copyWith =>
      __$$_OpenWeatherModelCopyWithImpl<_$_OpenWeatherModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenWeatherModelToJson(
      this,
    );
  }
}

abstract class _OpenWeatherModel implements OpenWeatherModel {
  const factory _OpenWeatherModel(
          {@JsonKey(name: 'cod') required final String? cod,
          @JsonKey(name: 'message') required final int? message,
          @JsonKey(name: 'cnt') required final int? cnt,
          @JsonKey(name: 'list') required final List<OpenForecastModel>? list,
          @JsonKey(name: 'city') required final OpenCityModel? city}) =
      _$_OpenWeatherModel;

  factory _OpenWeatherModel.fromJson(Map<String, dynamic> json) =
      _$_OpenWeatherModel.fromJson;

  @override
  @JsonKey(name: 'cod')
  String? get cod;
  @override
  @JsonKey(name: 'message')
  int? get message;
  @override
  @JsonKey(name: 'cnt')
  int? get cnt;
  @override
  @JsonKey(name: 'list')
  List<OpenForecastModel>? get list;
  @override
  @JsonKey(name: 'city')
  OpenCityModel? get city;
  @override
  @JsonKey(ignore: true)
  _$$_OpenWeatherModelCopyWith<_$_OpenWeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}
