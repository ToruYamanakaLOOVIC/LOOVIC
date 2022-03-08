// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'JsonNavigationParams.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JsonNavigationParams _$JsonNavigationParamsFromJson(Map<String, dynamic> json) {
  return _JsonNavigationParams.fromJson(json);
}

/// @nodoc
class _$JsonNavigationParamsTearOff {
  const _$JsonNavigationParamsTearOff();

  _JsonNavigationParams call(
      [int naviIndex = 0,
      double distance = 0,
      double degrees = 0,
      double distanceNext = 0,
      double degreesNext = 0,
      double distanceCrossPoint = 0,
      List<JsonLatLng> latlng = const [],
      List<bool> activeLatLng = const [],
      bool isRouteNavigation = false,
      bool error = false]) {
    return _JsonNavigationParams(
      naviIndex,
      distance,
      degrees,
      distanceNext,
      degreesNext,
      distanceCrossPoint,
      latlng,
      activeLatLng,
      isRouteNavigation,
      error,
    );
  }

  JsonNavigationParams fromJson(Map<String, Object> json) {
    return JsonNavigationParams.fromJson(json);
  }
}

/// @nodoc
const $JsonNavigationParams = _$JsonNavigationParamsTearOff();

/// @nodoc
mixin _$JsonNavigationParams {
  int get naviIndex => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;
  double get degrees => throw _privateConstructorUsedError;
  double get distanceNext => throw _privateConstructorUsedError;
  double get degreesNext => throw _privateConstructorUsedError;
  double get distanceCrossPoint => throw _privateConstructorUsedError;
  List<JsonLatLng> get latlng => throw _privateConstructorUsedError;
  List<bool> get activeLatLng => throw _privateConstructorUsedError;
  bool get isRouteNavigation => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonNavigationParamsCopyWith<JsonNavigationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonNavigationParamsCopyWith<$Res> {
  factory $JsonNavigationParamsCopyWith(JsonNavigationParams value,
          $Res Function(JsonNavigationParams) then) =
      _$JsonNavigationParamsCopyWithImpl<$Res>;
  $Res call(
      {int naviIndex,
      double distance,
      double degrees,
      double distanceNext,
      double degreesNext,
      double distanceCrossPoint,
      List<JsonLatLng> latlng,
      List<bool> activeLatLng,
      bool isRouteNavigation,
      bool error});
}

/// @nodoc
class _$JsonNavigationParamsCopyWithImpl<$Res>
    implements $JsonNavigationParamsCopyWith<$Res> {
  _$JsonNavigationParamsCopyWithImpl(this._value, this._then);

  final JsonNavigationParams _value;
  // ignore: unused_field
  final $Res Function(JsonNavigationParams) _then;

  @override
  $Res call({
    Object? naviIndex = freezed,
    Object? distance = freezed,
    Object? degrees = freezed,
    Object? distanceNext = freezed,
    Object? degreesNext = freezed,
    Object? distanceCrossPoint = freezed,
    Object? latlng = freezed,
    Object? activeLatLng = freezed,
    Object? isRouteNavigation = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      naviIndex: naviIndex == freezed
          ? _value.naviIndex
          : naviIndex // ignore: cast_nullable_to_non_nullable
              as int,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      degrees: degrees == freezed
          ? _value.degrees
          : degrees // ignore: cast_nullable_to_non_nullable
              as double,
      distanceNext: distanceNext == freezed
          ? _value.distanceNext
          : distanceNext // ignore: cast_nullable_to_non_nullable
              as double,
      degreesNext: degreesNext == freezed
          ? _value.degreesNext
          : degreesNext // ignore: cast_nullable_to_non_nullable
              as double,
      distanceCrossPoint: distanceCrossPoint == freezed
          ? _value.distanceCrossPoint
          : distanceCrossPoint // ignore: cast_nullable_to_non_nullable
              as double,
      latlng: latlng == freezed
          ? _value.latlng
          : latlng // ignore: cast_nullable_to_non_nullable
              as List<JsonLatLng>,
      activeLatLng: activeLatLng == freezed
          ? _value.activeLatLng
          : activeLatLng // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      isRouteNavigation: isRouteNavigation == freezed
          ? _value.isRouteNavigation
          : isRouteNavigation // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$JsonNavigationParamsCopyWith<$Res>
    implements $JsonNavigationParamsCopyWith<$Res> {
  factory _$JsonNavigationParamsCopyWith(_JsonNavigationParams value,
          $Res Function(_JsonNavigationParams) then) =
      __$JsonNavigationParamsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int naviIndex,
      double distance,
      double degrees,
      double distanceNext,
      double degreesNext,
      double distanceCrossPoint,
      List<JsonLatLng> latlng,
      List<bool> activeLatLng,
      bool isRouteNavigation,
      bool error});
}

/// @nodoc
class __$JsonNavigationParamsCopyWithImpl<$Res>
    extends _$JsonNavigationParamsCopyWithImpl<$Res>
    implements _$JsonNavigationParamsCopyWith<$Res> {
  __$JsonNavigationParamsCopyWithImpl(
      _JsonNavigationParams _value, $Res Function(_JsonNavigationParams) _then)
      : super(_value, (v) => _then(v as _JsonNavigationParams));

  @override
  _JsonNavigationParams get _value => super._value as _JsonNavigationParams;

  @override
  $Res call({
    Object? naviIndex = freezed,
    Object? distance = freezed,
    Object? degrees = freezed,
    Object? distanceNext = freezed,
    Object? degreesNext = freezed,
    Object? distanceCrossPoint = freezed,
    Object? latlng = freezed,
    Object? activeLatLng = freezed,
    Object? isRouteNavigation = freezed,
    Object? error = freezed,
  }) {
    return _then(_JsonNavigationParams(
      naviIndex == freezed
          ? _value.naviIndex
          : naviIndex // ignore: cast_nullable_to_non_nullable
              as int,
      distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      degrees == freezed
          ? _value.degrees
          : degrees // ignore: cast_nullable_to_non_nullable
              as double,
      distanceNext == freezed
          ? _value.distanceNext
          : distanceNext // ignore: cast_nullable_to_non_nullable
              as double,
      degreesNext == freezed
          ? _value.degreesNext
          : degreesNext // ignore: cast_nullable_to_non_nullable
              as double,
      distanceCrossPoint == freezed
          ? _value.distanceCrossPoint
          : distanceCrossPoint // ignore: cast_nullable_to_non_nullable
              as double,
      latlng == freezed
          ? _value.latlng
          : latlng // ignore: cast_nullable_to_non_nullable
              as List<JsonLatLng>,
      activeLatLng == freezed
          ? _value.activeLatLng
          : activeLatLng // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      isRouteNavigation == freezed
          ? _value.isRouteNavigation
          : isRouteNavigation // ignore: cast_nullable_to_non_nullable
              as bool,
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JsonNavigationParams
    with DiagnosticableTreeMixin
    implements _JsonNavigationParams {
  const _$_JsonNavigationParams(
      [this.naviIndex = 0,
      this.distance = 0,
      this.degrees = 0,
      this.distanceNext = 0,
      this.degreesNext = 0,
      this.distanceCrossPoint = 0,
      this.latlng = const [],
      this.activeLatLng = const [],
      this.isRouteNavigation = false,
      this.error = false]);

  factory _$_JsonNavigationParams.fromJson(Map<String, dynamic> json) =>
      _$_$_JsonNavigationParamsFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int naviIndex;
  @JsonKey(defaultValue: 0)
  @override
  final double distance;
  @JsonKey(defaultValue: 0)
  @override
  final double degrees;
  @JsonKey(defaultValue: 0)
  @override
  final double distanceNext;
  @JsonKey(defaultValue: 0)
  @override
  final double degreesNext;
  @JsonKey(defaultValue: 0)
  @override
  final double distanceCrossPoint;
  @JsonKey(defaultValue: const [])
  @override
  final List<JsonLatLng> latlng;
  @JsonKey(defaultValue: const [])
  @override
  final List<bool> activeLatLng;
  @JsonKey(defaultValue: false)
  @override
  final bool isRouteNavigation;
  @JsonKey(defaultValue: false)
  @override
  final bool error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JsonNavigationParams(naviIndex: $naviIndex, distance: $distance, degrees: $degrees, distanceNext: $distanceNext, degreesNext: $degreesNext, distanceCrossPoint: $distanceCrossPoint, latlng: $latlng, activeLatLng: $activeLatLng, isRouteNavigation: $isRouteNavigation, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JsonNavigationParams'))
      ..add(DiagnosticsProperty('naviIndex', naviIndex))
      ..add(DiagnosticsProperty('distance', distance))
      ..add(DiagnosticsProperty('degrees', degrees))
      ..add(DiagnosticsProperty('distanceNext', distanceNext))
      ..add(DiagnosticsProperty('degreesNext', degreesNext))
      ..add(DiagnosticsProperty('distanceCrossPoint', distanceCrossPoint))
      ..add(DiagnosticsProperty('latlng', latlng))
      ..add(DiagnosticsProperty('activeLatLng', activeLatLng))
      ..add(DiagnosticsProperty('isRouteNavigation', isRouteNavigation))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JsonNavigationParams &&
            (identical(other.naviIndex, naviIndex) ||
                const DeepCollectionEquality()
                    .equals(other.naviIndex, naviIndex)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)) &&
            (identical(other.degrees, degrees) ||
                const DeepCollectionEquality()
                    .equals(other.degrees, degrees)) &&
            (identical(other.distanceNext, distanceNext) ||
                const DeepCollectionEquality()
                    .equals(other.distanceNext, distanceNext)) &&
            (identical(other.degreesNext, degreesNext) ||
                const DeepCollectionEquality()
                    .equals(other.degreesNext, degreesNext)) &&
            (identical(other.distanceCrossPoint, distanceCrossPoint) ||
                const DeepCollectionEquality()
                    .equals(other.distanceCrossPoint, distanceCrossPoint)) &&
            (identical(other.latlng, latlng) ||
                const DeepCollectionEquality().equals(other.latlng, latlng)) &&
            (identical(other.activeLatLng, activeLatLng) ||
                const DeepCollectionEquality()
                    .equals(other.activeLatLng, activeLatLng)) &&
            (identical(other.isRouteNavigation, isRouteNavigation) ||
                const DeepCollectionEquality()
                    .equals(other.isRouteNavigation, isRouteNavigation)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(naviIndex) ^
      const DeepCollectionEquality().hash(distance) ^
      const DeepCollectionEquality().hash(degrees) ^
      const DeepCollectionEquality().hash(distanceNext) ^
      const DeepCollectionEquality().hash(degreesNext) ^
      const DeepCollectionEquality().hash(distanceCrossPoint) ^
      const DeepCollectionEquality().hash(latlng) ^
      const DeepCollectionEquality().hash(activeLatLng) ^
      const DeepCollectionEquality().hash(isRouteNavigation) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$JsonNavigationParamsCopyWith<_JsonNavigationParams> get copyWith =>
      __$JsonNavigationParamsCopyWithImpl<_JsonNavigationParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JsonNavigationParamsToJson(this);
  }
}

abstract class _JsonNavigationParams implements JsonNavigationParams {
  const factory _JsonNavigationParams(
      [int naviIndex,
      double distance,
      double degrees,
      double distanceNext,
      double degreesNext,
      double distanceCrossPoint,
      List<JsonLatLng> latlng,
      List<bool> activeLatLng,
      bool isRouteNavigation,
      bool error]) = _$_JsonNavigationParams;

  factory _JsonNavigationParams.fromJson(Map<String, dynamic> json) =
      _$_JsonNavigationParams.fromJson;

  @override
  int get naviIndex => throw _privateConstructorUsedError;
  @override
  double get distance => throw _privateConstructorUsedError;
  @override
  double get degrees => throw _privateConstructorUsedError;
  @override
  double get distanceNext => throw _privateConstructorUsedError;
  @override
  double get degreesNext => throw _privateConstructorUsedError;
  @override
  double get distanceCrossPoint => throw _privateConstructorUsedError;
  @override
  List<JsonLatLng> get latlng => throw _privateConstructorUsedError;
  @override
  List<bool> get activeLatLng => throw _privateConstructorUsedError;
  @override
  bool get isRouteNavigation => throw _privateConstructorUsedError;
  @override
  bool get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JsonNavigationParamsCopyWith<_JsonNavigationParams> get copyWith =>
      throw _privateConstructorUsedError;
}
