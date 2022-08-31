// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'open_city_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpenCityModel _$OpenCityModelFromJson(Map<String, dynamic> json) {
  return _OpenCityModel.fromJson(json);
}

/// @nodoc
mixin _$OpenCityModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'coord')
  OpenCoordinationModel? get coord => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'population')
  int? get population => throw _privateConstructorUsedError;
  @JsonKey(name: 'timezone')
  int? get timezone => throw _privateConstructorUsedError;
  @JsonKey(name: 'sunrise')
  int? get sunrise => throw _privateConstructorUsedError;
  @JsonKey(name: 'sunset')
  int? get sunset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenCityModelCopyWith<OpenCityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenCityModelCopyWith<$Res> {
  factory $OpenCityModelCopyWith(
          OpenCityModel value, $Res Function(OpenCityModel) then) =
      _$OpenCityModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'coord') OpenCoordinationModel? coord,
      @JsonKey(name: 'country') String? country,
      @JsonKey(name: 'population') int? population,
      @JsonKey(name: 'timezone') int? timezone,
      @JsonKey(name: 'sunrise') int? sunrise,
      @JsonKey(name: 'sunset') int? sunset});

  $OpenCoordinationModelCopyWith<$Res>? get coord;
}

/// @nodoc
class _$OpenCityModelCopyWithImpl<$Res>
    implements $OpenCityModelCopyWith<$Res> {
  _$OpenCityModelCopyWithImpl(this._value, this._then);

  final OpenCityModel _value;
  // ignore: unused_field
  final $Res Function(OpenCityModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? coord = freezed,
    Object? country = freezed,
    Object? population = freezed,
    Object? timezone = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coord: coord == freezed
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as OpenCoordinationModel?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      population: population == freezed
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int?,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$_OpenCityModelCopyWith<$Res>
    implements $OpenCityModelCopyWith<$Res> {
  factory _$$_OpenCityModelCopyWith(
          _$_OpenCityModel value, $Res Function(_$_OpenCityModel) then) =
      __$$_OpenCityModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'coord') OpenCoordinationModel? coord,
      @JsonKey(name: 'country') String? country,
      @JsonKey(name: 'population') int? population,
      @JsonKey(name: 'timezone') int? timezone,
      @JsonKey(name: 'sunrise') int? sunrise,
      @JsonKey(name: 'sunset') int? sunset});

  @override
  $OpenCoordinationModelCopyWith<$Res>? get coord;
}

/// @nodoc
class __$$_OpenCityModelCopyWithImpl<$Res>
    extends _$OpenCityModelCopyWithImpl<$Res>
    implements _$$_OpenCityModelCopyWith<$Res> {
  __$$_OpenCityModelCopyWithImpl(
      _$_OpenCityModel _value, $Res Function(_$_OpenCityModel) _then)
      : super(_value, (v) => _then(v as _$_OpenCityModel));

  @override
  _$_OpenCityModel get _value => super._value as _$_OpenCityModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? coord = freezed,
    Object? country = freezed,
    Object? population = freezed,
    Object? timezone = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
  }) {
    return _then(_$_OpenCityModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coord: coord == freezed
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as OpenCoordinationModel?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      population: population == freezed
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int?,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$_OpenCityModel implements _OpenCityModel {
  const _$_OpenCityModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'coord') required this.coord,
      @JsonKey(name: 'country') required this.country,
      @JsonKey(name: 'population') required this.population,
      @JsonKey(name: 'timezone') required this.timezone,
      @JsonKey(name: 'sunrise') required this.sunrise,
      @JsonKey(name: 'sunset') required this.sunset});

  factory _$_OpenCityModel.fromJson(Map<String, dynamic> json) =>
      _$$_OpenCityModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'coord')
  final OpenCoordinationModel? coord;
  @override
  @JsonKey(name: 'country')
  final String? country;
  @override
  @JsonKey(name: 'population')
  final int? population;
  @override
  @JsonKey(name: 'timezone')
  final int? timezone;
  @override
  @JsonKey(name: 'sunrise')
  final int? sunrise;
  @override
  @JsonKey(name: 'sunset')
  final int? sunset;

  @override
  String toString() {
    return 'OpenCityModel(id: $id, name: $name, coord: $coord, country: $country, population: $population, timezone: $timezone, sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenCityModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.coord, coord) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality()
                .equals(other.population, population) &&
            const DeepCollectionEquality().equals(other.timezone, timezone) &&
            const DeepCollectionEquality().equals(other.sunrise, sunrise) &&
            const DeepCollectionEquality().equals(other.sunset, sunset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(coord),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(population),
      const DeepCollectionEquality().hash(timezone),
      const DeepCollectionEquality().hash(sunrise),
      const DeepCollectionEquality().hash(sunset));

  @JsonKey(ignore: true)
  @override
  _$$_OpenCityModelCopyWith<_$_OpenCityModel> get copyWith =>
      __$$_OpenCityModelCopyWithImpl<_$_OpenCityModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenCityModelToJson(
      this,
    );
  }
}

abstract class _OpenCityModel implements OpenCityModel {
  const factory _OpenCityModel(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'coord') required final OpenCoordinationModel? coord,
      @JsonKey(name: 'country') required final String? country,
      @JsonKey(name: 'population') required final int? population,
      @JsonKey(name: 'timezone') required final int? timezone,
      @JsonKey(name: 'sunrise') required final int? sunrise,
      @JsonKey(name: 'sunset') required final int? sunset}) = _$_OpenCityModel;

  factory _OpenCityModel.fromJson(Map<String, dynamic> json) =
      _$_OpenCityModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'coord')
  OpenCoordinationModel? get coord;
  @override
  @JsonKey(name: 'country')
  String? get country;
  @override
  @JsonKey(name: 'population')
  int? get population;
  @override
  @JsonKey(name: 'timezone')
  int? get timezone;
  @override
  @JsonKey(name: 'sunrise')
  int? get sunrise;
  @override
  @JsonKey(name: 'sunset')
  int? get sunset;
  @override
  @JsonKey(ignore: true)
  _$$_OpenCityModelCopyWith<_$_OpenCityModel> get copyWith =>
      throw _privateConstructorUsedError;
}
