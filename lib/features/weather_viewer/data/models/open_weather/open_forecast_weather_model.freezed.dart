// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'open_forecast_weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpenForecastWeatherModel _$OpenForecastWeatherModelFromJson(
    Map<String, dynamic> json) {
  return _OpenForecastWeatherModel.fromJson(json);
}

/// @nodoc
mixin _$OpenForecastWeatherModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'main')
  String? get main => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon')
  String? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenForecastWeatherModelCopyWith<OpenForecastWeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenForecastWeatherModelCopyWith<$Res> {
  factory $OpenForecastWeatherModelCopyWith(OpenForecastWeatherModel value,
          $Res Function(OpenForecastWeatherModel) then) =
      _$OpenForecastWeatherModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'main') String? main,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'icon') String? icon});
}

/// @nodoc
class _$OpenForecastWeatherModelCopyWithImpl<$Res>
    implements $OpenForecastWeatherModelCopyWith<$Res> {
  _$OpenForecastWeatherModelCopyWithImpl(this._value, this._then);

  final OpenForecastWeatherModel _value;
  // ignore: unused_field
  final $Res Function(OpenForecastWeatherModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_OpenForecastWeatherModelCopyWith<$Res>
    implements $OpenForecastWeatherModelCopyWith<$Res> {
  factory _$$_OpenForecastWeatherModelCopyWith(
          _$_OpenForecastWeatherModel value,
          $Res Function(_$_OpenForecastWeatherModel) then) =
      __$$_OpenForecastWeatherModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'main') String? main,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'icon') String? icon});
}

/// @nodoc
class __$$_OpenForecastWeatherModelCopyWithImpl<$Res>
    extends _$OpenForecastWeatherModelCopyWithImpl<$Res>
    implements _$$_OpenForecastWeatherModelCopyWith<$Res> {
  __$$_OpenForecastWeatherModelCopyWithImpl(_$_OpenForecastWeatherModel _value,
      $Res Function(_$_OpenForecastWeatherModel) _then)
      : super(_value, (v) => _then(v as _$_OpenForecastWeatherModel));

  @override
  _$_OpenForecastWeatherModel get _value =>
      super._value as _$_OpenForecastWeatherModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$_OpenForecastWeatherModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenForecastWeatherModel implements _OpenForecastWeatherModel {
  const _$_OpenForecastWeatherModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'main') required this.main,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'icon') required this.icon});

  factory _$_OpenForecastWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$$_OpenForecastWeatherModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'main')
  final String? main;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'icon')
  final String? icon;

  @override
  String toString() {
    return 'OpenForecastWeatherModel(id: $id, main: $main, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenForecastWeatherModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.main, main) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.icon, icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(main),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(icon));

  @JsonKey(ignore: true)
  @override
  _$$_OpenForecastWeatherModelCopyWith<_$_OpenForecastWeatherModel>
      get copyWith => __$$_OpenForecastWeatherModelCopyWithImpl<
          _$_OpenForecastWeatherModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenForecastWeatherModelToJson(
      this,
    );
  }
}

abstract class _OpenForecastWeatherModel implements OpenForecastWeatherModel {
  const factory _OpenForecastWeatherModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'main') required final String? main,
          @JsonKey(name: 'description') required final String? description,
          @JsonKey(name: 'icon') required final String? icon}) =
      _$_OpenForecastWeatherModel;

  factory _OpenForecastWeatherModel.fromJson(Map<String, dynamic> json) =
      _$_OpenForecastWeatherModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'main')
  String? get main;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'icon')
  String? get icon;
  @override
  @JsonKey(ignore: true)
  _$$_OpenForecastWeatherModelCopyWith<_$_OpenForecastWeatherModel>
      get copyWith => throw _privateConstructorUsedError;
}
