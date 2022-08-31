// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'geo_coding_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpenWeatherGeocodeModel _$OpenWeatherGeocodeModelFromJson(
    Map<String, dynamic> json) {
  return _OpenWeatherGeocodeModel.fromJson(json);
}

/// @nodoc
mixin _$OpenWeatherGeocodeModel {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'local_names')
  Map<String, String>? get localNames => throw _privateConstructorUsedError;
  @JsonKey(name: 'lat')
  double get lat => throw _privateConstructorUsedError;
  @JsonKey(name: 'lon')
  double get lon => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'state')
  String? get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenWeatherGeocodeModelCopyWith<OpenWeatherGeocodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenWeatherGeocodeModelCopyWith<$Res> {
  factory $OpenWeatherGeocodeModelCopyWith(OpenWeatherGeocodeModel value,
          $Res Function(OpenWeatherGeocodeModel) then) =
      _$OpenWeatherGeocodeModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'local_names') Map<String, String>? localNames,
      @JsonKey(name: 'lat') double lat,
      @JsonKey(name: 'lon') double lon,
      @JsonKey(name: 'country') String? country,
      @JsonKey(name: 'state') String? state});
}

/// @nodoc
class _$OpenWeatherGeocodeModelCopyWithImpl<$Res>
    implements $OpenWeatherGeocodeModelCopyWith<$Res> {
  _$OpenWeatherGeocodeModelCopyWithImpl(this._value, this._then);

  final OpenWeatherGeocodeModel _value;
  // ignore: unused_field
  final $Res Function(OpenWeatherGeocodeModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? localNames = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? country = freezed,
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      localNames: localNames == freezed
          ? _value.localNames
          : localNames // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_OpenWeatherGeocodeModelCopyWith<$Res>
    implements $OpenWeatherGeocodeModelCopyWith<$Res> {
  factory _$$_OpenWeatherGeocodeModelCopyWith(_$_OpenWeatherGeocodeModel value,
          $Res Function(_$_OpenWeatherGeocodeModel) then) =
      __$$_OpenWeatherGeocodeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'local_names') Map<String, String>? localNames,
      @JsonKey(name: 'lat') double lat,
      @JsonKey(name: 'lon') double lon,
      @JsonKey(name: 'country') String? country,
      @JsonKey(name: 'state') String? state});
}

/// @nodoc
class __$$_OpenWeatherGeocodeModelCopyWithImpl<$Res>
    extends _$OpenWeatherGeocodeModelCopyWithImpl<$Res>
    implements _$$_OpenWeatherGeocodeModelCopyWith<$Res> {
  __$$_OpenWeatherGeocodeModelCopyWithImpl(_$_OpenWeatherGeocodeModel _value,
      $Res Function(_$_OpenWeatherGeocodeModel) _then)
      : super(_value, (v) => _then(v as _$_OpenWeatherGeocodeModel));

  @override
  _$_OpenWeatherGeocodeModel get _value =>
      super._value as _$_OpenWeatherGeocodeModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? localNames = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? country = freezed,
    Object? state = freezed,
  }) {
    return _then(_$_OpenWeatherGeocodeModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      localNames: localNames == freezed
          ? _value._localNames
          : localNames // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenWeatherGeocodeModel implements _OpenWeatherGeocodeModel {
  const _$_OpenWeatherGeocodeModel(
      {@JsonKey(name: 'name')
          required this.name,
      @JsonKey(name: 'local_names')
          required final Map<String, String>? localNames,
      @JsonKey(name: 'lat')
          required this.lat,
      @JsonKey(name: 'lon')
          required this.lon,
      @JsonKey(name: 'country')
          required this.country,
      @JsonKey(name: 'state')
          required this.state})
      : _localNames = localNames;

  factory _$_OpenWeatherGeocodeModel.fromJson(Map<String, dynamic> json) =>
      _$$_OpenWeatherGeocodeModelFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  final Map<String, String>? _localNames;
  @override
  @JsonKey(name: 'local_names')
  Map<String, String>? get localNames {
    final value = _localNames;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'lat')
  final double lat;
  @override
  @JsonKey(name: 'lon')
  final double lon;
  @override
  @JsonKey(name: 'country')
  final String? country;
  @override
  @JsonKey(name: 'state')
  final String? state;

  @override
  String toString() {
    return 'OpenWeatherGeocodeModel(name: $name, localNames: $localNames, lat: $lat, lon: $lon, country: $country, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenWeatherGeocodeModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other._localNames, _localNames) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lon, lon) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_localNames),
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lon),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(state));

  @JsonKey(ignore: true)
  @override
  _$$_OpenWeatherGeocodeModelCopyWith<_$_OpenWeatherGeocodeModel>
      get copyWith =>
          __$$_OpenWeatherGeocodeModelCopyWithImpl<_$_OpenWeatherGeocodeModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenWeatherGeocodeModelToJson(
      this,
    );
  }
}

abstract class _OpenWeatherGeocodeModel implements OpenWeatherGeocodeModel {
  const factory _OpenWeatherGeocodeModel(
      {@JsonKey(name: 'name')
          required final String name,
      @JsonKey(name: 'local_names')
          required final Map<String, String>? localNames,
      @JsonKey(name: 'lat')
          required final double lat,
      @JsonKey(name: 'lon')
          required final double lon,
      @JsonKey(name: 'country')
          required final String? country,
      @JsonKey(name: 'state')
          required final String? state}) = _$_OpenWeatherGeocodeModel;

  factory _OpenWeatherGeocodeModel.fromJson(Map<String, dynamic> json) =
      _$_OpenWeatherGeocodeModel.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'local_names')
  Map<String, String>? get localNames;
  @override
  @JsonKey(name: 'lat')
  double get lat;
  @override
  @JsonKey(name: 'lon')
  double get lon;
  @override
  @JsonKey(name: 'country')
  String? get country;
  @override
  @JsonKey(name: 'state')
  String? get state;
  @override
  @JsonKey(ignore: true)
  _$$_OpenWeatherGeocodeModelCopyWith<_$_OpenWeatherGeocodeModel>
      get copyWith => throw _privateConstructorUsedError;
}
