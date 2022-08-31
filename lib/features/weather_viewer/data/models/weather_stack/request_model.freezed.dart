// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestModel _$RequestModelFromJson(Map<String, dynamic> json) {
  return _RequestModel.fromJson(json);
}

/// @nodoc
mixin _$RequestModel {
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'query')
  String? get query => throw _privateConstructorUsedError;
  @JsonKey(name: 'language')
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit')
  String? get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestModelCopyWith<RequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestModelCopyWith<$Res> {
  factory $RequestModelCopyWith(
          RequestModel value, $Res Function(RequestModel) then) =
      _$RequestModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'query') String? query,
      @JsonKey(name: 'language') String? language,
      @JsonKey(name: 'unit') String? unit});
}

/// @nodoc
class _$RequestModelCopyWithImpl<$Res> implements $RequestModelCopyWith<$Res> {
  _$RequestModelCopyWithImpl(this._value, this._then);

  final RequestModel _value;
  // ignore: unused_field
  final $Res Function(RequestModel) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? query = freezed,
    Object? language = freezed,
    Object? unit = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_RequestModelCopyWith<$Res>
    implements $RequestModelCopyWith<$Res> {
  factory _$$_RequestModelCopyWith(
          _$_RequestModel value, $Res Function(_$_RequestModel) then) =
      __$$_RequestModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'query') String? query,
      @JsonKey(name: 'language') String? language,
      @JsonKey(name: 'unit') String? unit});
}

/// @nodoc
class __$$_RequestModelCopyWithImpl<$Res>
    extends _$RequestModelCopyWithImpl<$Res>
    implements _$$_RequestModelCopyWith<$Res> {
  __$$_RequestModelCopyWithImpl(
      _$_RequestModel _value, $Res Function(_$_RequestModel) _then)
      : super(_value, (v) => _then(v as _$_RequestModel));

  @override
  _$_RequestModel get _value => super._value as _$_RequestModel;

  @override
  $Res call({
    Object? type = freezed,
    Object? query = freezed,
    Object? language = freezed,
    Object? unit = freezed,
  }) {
    return _then(_$_RequestModel(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestModel implements _RequestModel {
  const _$_RequestModel(
      {@JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'query') required this.query,
      @JsonKey(name: 'language') required this.language,
      @JsonKey(name: 'unit') required this.unit});

  factory _$_RequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_RequestModelFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'query')
  final String? query;
  @override
  @JsonKey(name: 'language')
  final String? language;
  @override
  @JsonKey(name: 'unit')
  final String? unit;

  @override
  String toString() {
    return 'RequestModel(type: $type, query: $query, language: $language, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestModel &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality().equals(other.unit, unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(language),
      const DeepCollectionEquality().hash(unit));

  @JsonKey(ignore: true)
  @override
  _$$_RequestModelCopyWith<_$_RequestModel> get copyWith =>
      __$$_RequestModelCopyWithImpl<_$_RequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestModelToJson(
      this,
    );
  }
}

abstract class _RequestModel implements RequestModel {
  const factory _RequestModel(
      {@JsonKey(name: 'type') required final String? type,
      @JsonKey(name: 'query') required final String? query,
      @JsonKey(name: 'language') required final String? language,
      @JsonKey(name: 'unit') required final String? unit}) = _$_RequestModel;

  factory _RequestModel.fromJson(Map<String, dynamic> json) =
      _$_RequestModel.fromJson;

  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'query')
  String? get query;
  @override
  @JsonKey(name: 'language')
  String? get language;
  @override
  @JsonKey(name: 'unit')
  String? get unit;
  @override
  @JsonKey(ignore: true)
  _$$_RequestModelCopyWith<_$_RequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
