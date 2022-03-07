// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'JsonLatLng.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JsonLatLng _$JsonLatLngFromJson(Map<String, dynamic> json) {
  return _JsonLatLng.fromJson(json);
}

/// @nodoc
class _$JsonLatLngTearOff {
  const _$JsonLatLngTearOff();

  _JsonLatLng call([double lat = 0, double lng = 0, bool acrive = true]) {
    return _JsonLatLng(
      lat,
      lng,
      acrive,
    );
  }

  JsonLatLng fromJson(Map<String, Object> json) {
    return JsonLatLng.fromJson(json);
  }
}

/// @nodoc
const $JsonLatLng = _$JsonLatLngTearOff();

/// @nodoc
mixin _$JsonLatLng {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  bool get acrive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonLatLngCopyWith<JsonLatLng> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonLatLngCopyWith<$Res> {
  factory $JsonLatLngCopyWith(
          JsonLatLng value, $Res Function(JsonLatLng) then) =
      _$JsonLatLngCopyWithImpl<$Res>;
  $Res call({double lat, double lng, bool acrive});
}

/// @nodoc
class _$JsonLatLngCopyWithImpl<$Res> implements $JsonLatLngCopyWith<$Res> {
  _$JsonLatLngCopyWithImpl(this._value, this._then);

  final JsonLatLng _value;
  // ignore: unused_field
  final $Res Function(JsonLatLng) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
    Object? acrive = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      acrive: acrive == freezed
          ? _value.acrive
          : acrive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$JsonLatLngCopyWith<$Res> implements $JsonLatLngCopyWith<$Res> {
  factory _$JsonLatLngCopyWith(
          _JsonLatLng value, $Res Function(_JsonLatLng) then) =
      __$JsonLatLngCopyWithImpl<$Res>;
  @override
  $Res call({double lat, double lng, bool acrive});
}

/// @nodoc
class __$JsonLatLngCopyWithImpl<$Res> extends _$JsonLatLngCopyWithImpl<$Res>
    implements _$JsonLatLngCopyWith<$Res> {
  __$JsonLatLngCopyWithImpl(
      _JsonLatLng _value, $Res Function(_JsonLatLng) _then)
      : super(_value, (v) => _then(v as _JsonLatLng));

  @override
  _JsonLatLng get _value => super._value as _JsonLatLng;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
    Object? acrive = freezed,
  }) {
    return _then(_JsonLatLng(
      lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      acrive == freezed
          ? _value.acrive
          : acrive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JsonLatLng with DiagnosticableTreeMixin implements _JsonLatLng {
  const _$_JsonLatLng([this.lat = 0, this.lng = 0, this.acrive = true]);

  factory _$_JsonLatLng.fromJson(Map<String, dynamic> json) =>
      _$_$_JsonLatLngFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final double lat;
  @JsonKey(defaultValue: 0)
  @override
  final double lng;
  @JsonKey(defaultValue: true)
  @override
  final bool acrive;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JsonLatLng(lat: $lat, lng: $lng, acrive: $acrive)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JsonLatLng'))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('lng', lng))
      ..add(DiagnosticsProperty('acrive', acrive));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JsonLatLng &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.lng, lng) ||
                const DeepCollectionEquality().equals(other.lng, lng)) &&
            (identical(other.acrive, acrive) ||
                const DeepCollectionEquality().equals(other.acrive, acrive)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(lng) ^
      const DeepCollectionEquality().hash(acrive);

  @JsonKey(ignore: true)
  @override
  _$JsonLatLngCopyWith<_JsonLatLng> get copyWith =>
      __$JsonLatLngCopyWithImpl<_JsonLatLng>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JsonLatLngToJson(this);
  }
}

abstract class _JsonLatLng implements JsonLatLng {
  const factory _JsonLatLng([double lat, double lng, bool acrive]) =
      _$_JsonLatLng;

  factory _JsonLatLng.fromJson(Map<String, dynamic> json) =
      _$_JsonLatLng.fromJson;

  @override
  double get lat => throw _privateConstructorUsedError;
  @override
  double get lng => throw _privateConstructorUsedError;
  @override
  bool get acrive => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JsonLatLngCopyWith<_JsonLatLng> get copyWith =>
      throw _privateConstructorUsedError;
}

JsonLatLngUpload _$JsonLatLngUploadFromJson(Map<String, dynamic> json) {
  return _JsonLatLngUpload.fromJson(json);
}

/// @nodoc
class _$JsonLatLngUploadTearOff {
  const _$JsonLatLngUploadTearOff();

  _JsonLatLngUpload call([String lat = '', String lng = '']) {
    return _JsonLatLngUpload(
      lat,
      lng,
    );
  }

  JsonLatLngUpload fromJson(Map<String, Object> json) {
    return JsonLatLngUpload.fromJson(json);
  }
}

/// @nodoc
const $JsonLatLngUpload = _$JsonLatLngUploadTearOff();

/// @nodoc
mixin _$JsonLatLngUpload {
  String get lat => throw _privateConstructorUsedError;
  String get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonLatLngUploadCopyWith<JsonLatLngUpload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonLatLngUploadCopyWith<$Res> {
  factory $JsonLatLngUploadCopyWith(
          JsonLatLngUpload value, $Res Function(JsonLatLngUpload) then) =
      _$JsonLatLngUploadCopyWithImpl<$Res>;
  $Res call({String lat, String lng});
}

/// @nodoc
class _$JsonLatLngUploadCopyWithImpl<$Res>
    implements $JsonLatLngUploadCopyWith<$Res> {
  _$JsonLatLngUploadCopyWithImpl(this._value, this._then);

  final JsonLatLngUpload _value;
  // ignore: unused_field
  final $Res Function(JsonLatLngUpload) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$JsonLatLngUploadCopyWith<$Res>
    implements $JsonLatLngUploadCopyWith<$Res> {
  factory _$JsonLatLngUploadCopyWith(
          _JsonLatLngUpload value, $Res Function(_JsonLatLngUpload) then) =
      __$JsonLatLngUploadCopyWithImpl<$Res>;
  @override
  $Res call({String lat, String lng});
}

/// @nodoc
class __$JsonLatLngUploadCopyWithImpl<$Res>
    extends _$JsonLatLngUploadCopyWithImpl<$Res>
    implements _$JsonLatLngUploadCopyWith<$Res> {
  __$JsonLatLngUploadCopyWithImpl(
      _JsonLatLngUpload _value, $Res Function(_JsonLatLngUpload) _then)
      : super(_value, (v) => _then(v as _JsonLatLngUpload));

  @override
  _JsonLatLngUpload get _value => super._value as _JsonLatLngUpload;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_JsonLatLngUpload(
      lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JsonLatLngUpload
    with DiagnosticableTreeMixin
    implements _JsonLatLngUpload {
  const _$_JsonLatLngUpload([this.lat = '', this.lng = '']);

  factory _$_JsonLatLngUpload.fromJson(Map<String, dynamic> json) =>
      _$_$_JsonLatLngUploadFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String lat;
  @JsonKey(defaultValue: '')
  @override
  final String lng;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JsonLatLngUpload(lat: $lat, lng: $lng)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JsonLatLngUpload'))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('lng', lng));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JsonLatLngUpload &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.lng, lng) ||
                const DeepCollectionEquality().equals(other.lng, lng)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(lng);

  @JsonKey(ignore: true)
  @override
  _$JsonLatLngUploadCopyWith<_JsonLatLngUpload> get copyWith =>
      __$JsonLatLngUploadCopyWithImpl<_JsonLatLngUpload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JsonLatLngUploadToJson(this);
  }
}

abstract class _JsonLatLngUpload implements JsonLatLngUpload {
  const factory _JsonLatLngUpload([String lat, String lng]) =
      _$_JsonLatLngUpload;

  factory _JsonLatLngUpload.fromJson(Map<String, dynamic> json) =
      _$_JsonLatLngUpload.fromJson;

  @override
  String get lat => throw _privateConstructorUsedError;
  @override
  String get lng => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JsonLatLngUploadCopyWith<_JsonLatLngUpload> get copyWith =>
      throw _privateConstructorUsedError;
}
