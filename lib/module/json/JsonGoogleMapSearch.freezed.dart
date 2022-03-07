// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'JsonGoogleMapSearch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JsonGoogleMapSearch _$JsonGoogleMapSearchFromJson(Map<String, dynamic> json) {
  return _JsonGoogleMapSearch.fromJson(json);
}

/// @nodoc
class _$JsonGoogleMapSearchTearOff {
  const _$JsonGoogleMapSearchTearOff();

  _JsonGoogleMapSearch call(
      [String status = '',
      List<JsonGoogleMapSearchGeocodedWaypoints> geocoded_waypoints = const [],
      List<JsonGoogleMapSearchRoutes> routes = const []]) {
    return _JsonGoogleMapSearch(
      status,
      geocoded_waypoints,
      routes,
    );
  }

  JsonGoogleMapSearch fromJson(Map<String, Object> json) {
    return JsonGoogleMapSearch.fromJson(json);
  }
}

/// @nodoc
const $JsonGoogleMapSearch = _$JsonGoogleMapSearchTearOff();

/// @nodoc
mixin _$JsonGoogleMapSearch {
//ステータス
  String get status =>
      throw _privateConstructorUsedError; //from,toをgoogleMapApiがgeocodeした結果
  List<JsonGoogleMapSearchGeocodedWaypoints> get geocoded_waypoints =>
      throw _privateConstructorUsedError;
  List<JsonGoogleMapSearchRoutes> get routes =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonGoogleMapSearchCopyWith<JsonGoogleMapSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonGoogleMapSearchCopyWith<$Res> {
  factory $JsonGoogleMapSearchCopyWith(
          JsonGoogleMapSearch value, $Res Function(JsonGoogleMapSearch) then) =
      _$JsonGoogleMapSearchCopyWithImpl<$Res>;
  $Res call(
      {String status,
      List<JsonGoogleMapSearchGeocodedWaypoints> geocoded_waypoints,
      List<JsonGoogleMapSearchRoutes> routes});
}

/// @nodoc
class _$JsonGoogleMapSearchCopyWithImpl<$Res>
    implements $JsonGoogleMapSearchCopyWith<$Res> {
  _$JsonGoogleMapSearchCopyWithImpl(this._value, this._then);

  final JsonGoogleMapSearch _value;
  // ignore: unused_field
  final $Res Function(JsonGoogleMapSearch) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? geocoded_waypoints = freezed,
    Object? routes = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      geocoded_waypoints: geocoded_waypoints == freezed
          ? _value.geocoded_waypoints
          : geocoded_waypoints // ignore: cast_nullable_to_non_nullable
              as List<JsonGoogleMapSearchGeocodedWaypoints>,
      routes: routes == freezed
          ? _value.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<JsonGoogleMapSearchRoutes>,
    ));
  }
}

/// @nodoc
abstract class _$JsonGoogleMapSearchCopyWith<$Res>
    implements $JsonGoogleMapSearchCopyWith<$Res> {
  factory _$JsonGoogleMapSearchCopyWith(_JsonGoogleMapSearch value,
          $Res Function(_JsonGoogleMapSearch) then) =
      __$JsonGoogleMapSearchCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      List<JsonGoogleMapSearchGeocodedWaypoints> geocoded_waypoints,
      List<JsonGoogleMapSearchRoutes> routes});
}

/// @nodoc
class __$JsonGoogleMapSearchCopyWithImpl<$Res>
    extends _$JsonGoogleMapSearchCopyWithImpl<$Res>
    implements _$JsonGoogleMapSearchCopyWith<$Res> {
  __$JsonGoogleMapSearchCopyWithImpl(
      _JsonGoogleMapSearch _value, $Res Function(_JsonGoogleMapSearch) _then)
      : super(_value, (v) => _then(v as _JsonGoogleMapSearch));

  @override
  _JsonGoogleMapSearch get _value => super._value as _JsonGoogleMapSearch;

  @override
  $Res call({
    Object? status = freezed,
    Object? geocoded_waypoints = freezed,
    Object? routes = freezed,
  }) {
    return _then(_JsonGoogleMapSearch(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      geocoded_waypoints == freezed
          ? _value.geocoded_waypoints
          : geocoded_waypoints // ignore: cast_nullable_to_non_nullable
              as List<JsonGoogleMapSearchGeocodedWaypoints>,
      routes == freezed
          ? _value.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<JsonGoogleMapSearchRoutes>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JsonGoogleMapSearch
    with DiagnosticableTreeMixin
    implements _JsonGoogleMapSearch {
  const _$_JsonGoogleMapSearch(
      [this.status = '',
      this.geocoded_waypoints = const [],
      this.routes = const []]);

  factory _$_JsonGoogleMapSearch.fromJson(Map<String, dynamic> json) =>
      _$_$_JsonGoogleMapSearchFromJson(json);

  @JsonKey(defaultValue: '')
  @override //ステータス
  final String status;
  @JsonKey(defaultValue: const [])
  @override //from,toをgoogleMapApiがgeocodeした結果
  final List<JsonGoogleMapSearchGeocodedWaypoints> geocoded_waypoints;
  @JsonKey(defaultValue: const [])
  @override
  final List<JsonGoogleMapSearchRoutes> routes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JsonGoogleMapSearch(status: $status, geocoded_waypoints: $geocoded_waypoints, routes: $routes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JsonGoogleMapSearch'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('geocoded_waypoints', geocoded_waypoints))
      ..add(DiagnosticsProperty('routes', routes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JsonGoogleMapSearch &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.geocoded_waypoints, geocoded_waypoints) ||
                const DeepCollectionEquality()
                    .equals(other.geocoded_waypoints, geocoded_waypoints)) &&
            (identical(other.routes, routes) ||
                const DeepCollectionEquality().equals(other.routes, routes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(geocoded_waypoints) ^
      const DeepCollectionEquality().hash(routes);

  @JsonKey(ignore: true)
  @override
  _$JsonGoogleMapSearchCopyWith<_JsonGoogleMapSearch> get copyWith =>
      __$JsonGoogleMapSearchCopyWithImpl<_JsonGoogleMapSearch>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JsonGoogleMapSearchToJson(this);
  }
}

abstract class _JsonGoogleMapSearch implements JsonGoogleMapSearch {
  const factory _JsonGoogleMapSearch(
      [String status,
      List<JsonGoogleMapSearchGeocodedWaypoints> geocoded_waypoints,
      List<JsonGoogleMapSearchRoutes> routes]) = _$_JsonGoogleMapSearch;

  factory _JsonGoogleMapSearch.fromJson(Map<String, dynamic> json) =
      _$_JsonGoogleMapSearch.fromJson;

  @override //ステータス
  String get status => throw _privateConstructorUsedError;
  @override //from,toをgoogleMapApiがgeocodeした結果
  List<JsonGoogleMapSearchGeocodedWaypoints> get geocoded_waypoints =>
      throw _privateConstructorUsedError;
  @override
  List<JsonGoogleMapSearchRoutes> get routes =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JsonGoogleMapSearchCopyWith<_JsonGoogleMapSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

JsonGoogleMapSearchGeocodedWaypoints
    _$JsonGoogleMapSearchGeocodedWaypointsFromJson(Map<String, dynamic> json) {
  return _JsonGoogleMapSearchGeocodedWaypoints.fromJson(json);
}

/// @nodoc
class _$JsonGoogleMapSearchGeocodedWaypointsTearOff {
  const _$JsonGoogleMapSearchGeocodedWaypointsTearOff();

  _JsonGoogleMapSearchGeocodedWaypoints call(
      [String geocoder_status = '',
      String place_id = '',
      List<String> types = const []]) {
    return _JsonGoogleMapSearchGeocodedWaypoints(
      geocoder_status,
      place_id,
      types,
    );
  }

  JsonGoogleMapSearchGeocodedWaypoints fromJson(Map<String, Object> json) {
    return JsonGoogleMapSearchGeocodedWaypoints.fromJson(json);
  }
}

/// @nodoc
const $JsonGoogleMapSearchGeocodedWaypoints =
    _$JsonGoogleMapSearchGeocodedWaypointsTearOff();

/// @nodoc
mixin _$JsonGoogleMapSearchGeocodedWaypoints {
// ignore: non_constant_identifier_names
  String get geocoder_status =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get place_id => throw _privateConstructorUsedError;
  List<String> get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonGoogleMapSearchGeocodedWaypointsCopyWith<
          JsonGoogleMapSearchGeocodedWaypoints>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonGoogleMapSearchGeocodedWaypointsCopyWith<$Res> {
  factory $JsonGoogleMapSearchGeocodedWaypointsCopyWith(
          JsonGoogleMapSearchGeocodedWaypoints value,
          $Res Function(JsonGoogleMapSearchGeocodedWaypoints) then) =
      _$JsonGoogleMapSearchGeocodedWaypointsCopyWithImpl<$Res>;
  $Res call({String geocoder_status, String place_id, List<String> types});
}

/// @nodoc
class _$JsonGoogleMapSearchGeocodedWaypointsCopyWithImpl<$Res>
    implements $JsonGoogleMapSearchGeocodedWaypointsCopyWith<$Res> {
  _$JsonGoogleMapSearchGeocodedWaypointsCopyWithImpl(this._value, this._then);

  final JsonGoogleMapSearchGeocodedWaypoints _value;
  // ignore: unused_field
  final $Res Function(JsonGoogleMapSearchGeocodedWaypoints) _then;

  @override
  $Res call({
    Object? geocoder_status = freezed,
    Object? place_id = freezed,
    Object? types = freezed,
  }) {
    return _then(_value.copyWith(
      geocoder_status: geocoder_status == freezed
          ? _value.geocoder_status
          : geocoder_status // ignore: cast_nullable_to_non_nullable
              as String,
      place_id: place_id == freezed
          ? _value.place_id
          : place_id // ignore: cast_nullable_to_non_nullable
              as String,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$JsonGoogleMapSearchGeocodedWaypointsCopyWith<$Res>
    implements $JsonGoogleMapSearchGeocodedWaypointsCopyWith<$Res> {
  factory _$JsonGoogleMapSearchGeocodedWaypointsCopyWith(
          _JsonGoogleMapSearchGeocodedWaypoints value,
          $Res Function(_JsonGoogleMapSearchGeocodedWaypoints) then) =
      __$JsonGoogleMapSearchGeocodedWaypointsCopyWithImpl<$Res>;
  @override
  $Res call({String geocoder_status, String place_id, List<String> types});
}

/// @nodoc
class __$JsonGoogleMapSearchGeocodedWaypointsCopyWithImpl<$Res>
    extends _$JsonGoogleMapSearchGeocodedWaypointsCopyWithImpl<$Res>
    implements _$JsonGoogleMapSearchGeocodedWaypointsCopyWith<$Res> {
  __$JsonGoogleMapSearchGeocodedWaypointsCopyWithImpl(
      _JsonGoogleMapSearchGeocodedWaypoints _value,
      $Res Function(_JsonGoogleMapSearchGeocodedWaypoints) _then)
      : super(_value, (v) => _then(v as _JsonGoogleMapSearchGeocodedWaypoints));

  @override
  _JsonGoogleMapSearchGeocodedWaypoints get _value =>
      super._value as _JsonGoogleMapSearchGeocodedWaypoints;

  @override
  $Res call({
    Object? geocoder_status = freezed,
    Object? place_id = freezed,
    Object? types = freezed,
  }) {
    return _then(_JsonGoogleMapSearchGeocodedWaypoints(
      geocoder_status == freezed
          ? _value.geocoder_status
          : geocoder_status // ignore: cast_nullable_to_non_nullable
              as String,
      place_id == freezed
          ? _value.place_id
          : place_id // ignore: cast_nullable_to_non_nullable
              as String,
      types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JsonGoogleMapSearchGeocodedWaypoints
    with DiagnosticableTreeMixin
    implements _JsonGoogleMapSearchGeocodedWaypoints {
  const _$_JsonGoogleMapSearchGeocodedWaypoints(
      [this.geocoder_status = '', this.place_id = '', this.types = const []]);

  factory _$_JsonGoogleMapSearchGeocodedWaypoints.fromJson(
          Map<String, dynamic> json) =>
      _$_$_JsonGoogleMapSearchGeocodedWaypointsFromJson(json);

  @JsonKey(defaultValue: '')
  @override // ignore: non_constant_identifier_names
  final String geocoder_status;
  @JsonKey(defaultValue: '')
  @override // ignore: non_constant_identifier_names
  final String place_id;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> types;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JsonGoogleMapSearchGeocodedWaypoints(geocoder_status: $geocoder_status, place_id: $place_id, types: $types)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JsonGoogleMapSearchGeocodedWaypoints'))
      ..add(DiagnosticsProperty('geocoder_status', geocoder_status))
      ..add(DiagnosticsProperty('place_id', place_id))
      ..add(DiagnosticsProperty('types', types));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JsonGoogleMapSearchGeocodedWaypoints &&
            (identical(other.geocoder_status, geocoder_status) ||
                const DeepCollectionEquality()
                    .equals(other.geocoder_status, geocoder_status)) &&
            (identical(other.place_id, place_id) ||
                const DeepCollectionEquality()
                    .equals(other.place_id, place_id)) &&
            (identical(other.types, types) ||
                const DeepCollectionEquality().equals(other.types, types)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(geocoder_status) ^
      const DeepCollectionEquality().hash(place_id) ^
      const DeepCollectionEquality().hash(types);

  @JsonKey(ignore: true)
  @override
  _$JsonGoogleMapSearchGeocodedWaypointsCopyWith<
          _JsonGoogleMapSearchGeocodedWaypoints>
      get copyWith => __$JsonGoogleMapSearchGeocodedWaypointsCopyWithImpl<
          _JsonGoogleMapSearchGeocodedWaypoints>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JsonGoogleMapSearchGeocodedWaypointsToJson(this);
  }
}

abstract class _JsonGoogleMapSearchGeocodedWaypoints
    implements JsonGoogleMapSearchGeocodedWaypoints {
  const factory _JsonGoogleMapSearchGeocodedWaypoints(
      [String geocoder_status,
      String place_id,
      List<String> types]) = _$_JsonGoogleMapSearchGeocodedWaypoints;

  factory _JsonGoogleMapSearchGeocodedWaypoints.fromJson(
          Map<String, dynamic> json) =
      _$_JsonGoogleMapSearchGeocodedWaypoints.fromJson;

  @override // ignore: non_constant_identifier_names
  String get geocoder_status => throw _privateConstructorUsedError;
  @override // ignore: non_constant_identifier_names
  String get place_id => throw _privateConstructorUsedError;
  @override
  List<String> get types => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JsonGoogleMapSearchGeocodedWaypointsCopyWith<
          _JsonGoogleMapSearchGeocodedWaypoints>
      get copyWith => throw _privateConstructorUsedError;
}

JsonGoogleMapSearchRoutes _$JsonGoogleMapSearchRoutesFromJson(
    Map<String, dynamic> json) {
  return _JsonGoogleMapSearchRoutes.fromJson(json);
}

/// @nodoc
class _$JsonGoogleMapSearchRoutesTearOff {
  const _$JsonGoogleMapSearchRoutesTearOff();

  _JsonGoogleMapSearchRoutes call(
      [String copyrights = '', List<JsonGoogleMapSearchLegs> legs = const []]) {
    return _JsonGoogleMapSearchRoutes(
      copyrights,
      legs,
    );
  }

  JsonGoogleMapSearchRoutes fromJson(Map<String, Object> json) {
    return JsonGoogleMapSearchRoutes.fromJson(json);
  }
}

/// @nodoc
const $JsonGoogleMapSearchRoutes = _$JsonGoogleMapSearchRoutesTearOff();

/// @nodoc
mixin _$JsonGoogleMapSearchRoutes {
//コピーライト
// ignore: non_constant_identifier_names
  String get copyrights => throw _privateConstructorUsedError;
  List<JsonGoogleMapSearchLegs> get legs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonGoogleMapSearchRoutesCopyWith<JsonGoogleMapSearchRoutes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonGoogleMapSearchRoutesCopyWith<$Res> {
  factory $JsonGoogleMapSearchRoutesCopyWith(JsonGoogleMapSearchRoutes value,
          $Res Function(JsonGoogleMapSearchRoutes) then) =
      _$JsonGoogleMapSearchRoutesCopyWithImpl<$Res>;
  $Res call({String copyrights, List<JsonGoogleMapSearchLegs> legs});
}

/// @nodoc
class _$JsonGoogleMapSearchRoutesCopyWithImpl<$Res>
    implements $JsonGoogleMapSearchRoutesCopyWith<$Res> {
  _$JsonGoogleMapSearchRoutesCopyWithImpl(this._value, this._then);

  final JsonGoogleMapSearchRoutes _value;
  // ignore: unused_field
  final $Res Function(JsonGoogleMapSearchRoutes) _then;

  @override
  $Res call({
    Object? copyrights = freezed,
    Object? legs = freezed,
  }) {
    return _then(_value.copyWith(
      copyrights: copyrights == freezed
          ? _value.copyrights
          : copyrights // ignore: cast_nullable_to_non_nullable
              as String,
      legs: legs == freezed
          ? _value.legs
          : legs // ignore: cast_nullable_to_non_nullable
              as List<JsonGoogleMapSearchLegs>,
    ));
  }
}

/// @nodoc
abstract class _$JsonGoogleMapSearchRoutesCopyWith<$Res>
    implements $JsonGoogleMapSearchRoutesCopyWith<$Res> {
  factory _$JsonGoogleMapSearchRoutesCopyWith(_JsonGoogleMapSearchRoutes value,
          $Res Function(_JsonGoogleMapSearchRoutes) then) =
      __$JsonGoogleMapSearchRoutesCopyWithImpl<$Res>;
  @override
  $Res call({String copyrights, List<JsonGoogleMapSearchLegs> legs});
}

/// @nodoc
class __$JsonGoogleMapSearchRoutesCopyWithImpl<$Res>
    extends _$JsonGoogleMapSearchRoutesCopyWithImpl<$Res>
    implements _$JsonGoogleMapSearchRoutesCopyWith<$Res> {
  __$JsonGoogleMapSearchRoutesCopyWithImpl(_JsonGoogleMapSearchRoutes _value,
      $Res Function(_JsonGoogleMapSearchRoutes) _then)
      : super(_value, (v) => _then(v as _JsonGoogleMapSearchRoutes));

  @override
  _JsonGoogleMapSearchRoutes get _value =>
      super._value as _JsonGoogleMapSearchRoutes;

  @override
  $Res call({
    Object? copyrights = freezed,
    Object? legs = freezed,
  }) {
    return _then(_JsonGoogleMapSearchRoutes(
      copyrights == freezed
          ? _value.copyrights
          : copyrights // ignore: cast_nullable_to_non_nullable
              as String,
      legs == freezed
          ? _value.legs
          : legs // ignore: cast_nullable_to_non_nullable
              as List<JsonGoogleMapSearchLegs>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JsonGoogleMapSearchRoutes
    with DiagnosticableTreeMixin
    implements _JsonGoogleMapSearchRoutes {
  const _$_JsonGoogleMapSearchRoutes(
      [this.copyrights = '', this.legs = const []]);

  factory _$_JsonGoogleMapSearchRoutes.fromJson(Map<String, dynamic> json) =>
      _$_$_JsonGoogleMapSearchRoutesFromJson(json);

  @JsonKey(defaultValue: '')
  @override //コピーライト
// ignore: non_constant_identifier_names
  final String copyrights;
  @JsonKey(defaultValue: const [])
  @override
  final List<JsonGoogleMapSearchLegs> legs;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JsonGoogleMapSearchRoutes(copyrights: $copyrights, legs: $legs)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JsonGoogleMapSearchRoutes'))
      ..add(DiagnosticsProperty('copyrights', copyrights))
      ..add(DiagnosticsProperty('legs', legs));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JsonGoogleMapSearchRoutes &&
            (identical(other.copyrights, copyrights) ||
                const DeepCollectionEquality()
                    .equals(other.copyrights, copyrights)) &&
            (identical(other.legs, legs) ||
                const DeepCollectionEquality().equals(other.legs, legs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(copyrights) ^
      const DeepCollectionEquality().hash(legs);

  @JsonKey(ignore: true)
  @override
  _$JsonGoogleMapSearchRoutesCopyWith<_JsonGoogleMapSearchRoutes>
      get copyWith =>
          __$JsonGoogleMapSearchRoutesCopyWithImpl<_JsonGoogleMapSearchRoutes>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JsonGoogleMapSearchRoutesToJson(this);
  }
}

abstract class _JsonGoogleMapSearchRoutes implements JsonGoogleMapSearchRoutes {
  const factory _JsonGoogleMapSearchRoutes(
      [String copyrights,
      List<JsonGoogleMapSearchLegs> legs]) = _$_JsonGoogleMapSearchRoutes;

  factory _JsonGoogleMapSearchRoutes.fromJson(Map<String, dynamic> json) =
      _$_JsonGoogleMapSearchRoutes.fromJson;

  @override //コピーライト
// ignore: non_constant_identifier_names
  String get copyrights => throw _privateConstructorUsedError;
  @override
  List<JsonGoogleMapSearchLegs> get legs => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JsonGoogleMapSearchRoutesCopyWith<_JsonGoogleMapSearchRoutes>
      get copyWith => throw _privateConstructorUsedError;
}

JsonGoogleMapSearchLegs _$JsonGoogleMapSearchLegsFromJson(
    Map<String, dynamic> json) {
  return _JsonGoogleMapSearchLegs.fromJson(json);
}

/// @nodoc
class _$JsonGoogleMapSearchLegsTearOff {
  const _$JsonGoogleMapSearchLegsTearOff();

  _JsonGoogleMapSearchLegs call(
      [Map<String, dynamic> distance = const {},
      Map<String, dynamic> duration = const {},
      String start_address = '',
      Map<String, double> start_location = const {},
      String end_address = '',
      Map<String, double> end_location = const {},
      List<JsonGoogleMapSearchStep> steps = const []]) {
    return _JsonGoogleMapSearchLegs(
      distance,
      duration,
      start_address,
      start_location,
      end_address,
      end_location,
      steps,
    );
  }

  JsonGoogleMapSearchLegs fromJson(Map<String, Object> json) {
    return JsonGoogleMapSearchLegs.fromJson(json);
  }
}

/// @nodoc
const $JsonGoogleMapSearchLegs = _$JsonGoogleMapSearchLegsTearOff();

/// @nodoc
mixin _$JsonGoogleMapSearchLegs {
// 北東側, 南西側の寄りを示す
  Map<String, dynamic> get distance => throw _privateConstructorUsedError;
  Map<String, dynamic> get duration => throw _privateConstructorUsedError;
  String get start_address => throw _privateConstructorUsedError;
  Map<String, double> get start_location => throw _privateConstructorUsedError;
  String get end_address => throw _privateConstructorUsedError;
  Map<String, double> get end_location => throw _privateConstructorUsedError;
  List<JsonGoogleMapSearchStep> get steps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonGoogleMapSearchLegsCopyWith<JsonGoogleMapSearchLegs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonGoogleMapSearchLegsCopyWith<$Res> {
  factory $JsonGoogleMapSearchLegsCopyWith(JsonGoogleMapSearchLegs value,
          $Res Function(JsonGoogleMapSearchLegs) then) =
      _$JsonGoogleMapSearchLegsCopyWithImpl<$Res>;
  $Res call(
      {Map<String, dynamic> distance,
      Map<String, dynamic> duration,
      String start_address,
      Map<String, double> start_location,
      String end_address,
      Map<String, double> end_location,
      List<JsonGoogleMapSearchStep> steps});
}

/// @nodoc
class _$JsonGoogleMapSearchLegsCopyWithImpl<$Res>
    implements $JsonGoogleMapSearchLegsCopyWith<$Res> {
  _$JsonGoogleMapSearchLegsCopyWithImpl(this._value, this._then);

  final JsonGoogleMapSearchLegs _value;
  // ignore: unused_field
  final $Res Function(JsonGoogleMapSearchLegs) _then;

  @override
  $Res call({
    Object? distance = freezed,
    Object? duration = freezed,
    Object? start_address = freezed,
    Object? start_location = freezed,
    Object? end_address = freezed,
    Object? end_location = freezed,
    Object? steps = freezed,
  }) {
    return _then(_value.copyWith(
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      start_address: start_address == freezed
          ? _value.start_address
          : start_address // ignore: cast_nullable_to_non_nullable
              as String,
      start_location: start_location == freezed
          ? _value.start_location
          : start_location // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      end_address: end_address == freezed
          ? _value.end_address
          : end_address // ignore: cast_nullable_to_non_nullable
              as String,
      end_location: end_location == freezed
          ? _value.end_location
          : end_location // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      steps: steps == freezed
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<JsonGoogleMapSearchStep>,
    ));
  }
}

/// @nodoc
abstract class _$JsonGoogleMapSearchLegsCopyWith<$Res>
    implements $JsonGoogleMapSearchLegsCopyWith<$Res> {
  factory _$JsonGoogleMapSearchLegsCopyWith(_JsonGoogleMapSearchLegs value,
          $Res Function(_JsonGoogleMapSearchLegs) then) =
      __$JsonGoogleMapSearchLegsCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<String, dynamic> distance,
      Map<String, dynamic> duration,
      String start_address,
      Map<String, double> start_location,
      String end_address,
      Map<String, double> end_location,
      List<JsonGoogleMapSearchStep> steps});
}

/// @nodoc
class __$JsonGoogleMapSearchLegsCopyWithImpl<$Res>
    extends _$JsonGoogleMapSearchLegsCopyWithImpl<$Res>
    implements _$JsonGoogleMapSearchLegsCopyWith<$Res> {
  __$JsonGoogleMapSearchLegsCopyWithImpl(_JsonGoogleMapSearchLegs _value,
      $Res Function(_JsonGoogleMapSearchLegs) _then)
      : super(_value, (v) => _then(v as _JsonGoogleMapSearchLegs));

  @override
  _JsonGoogleMapSearchLegs get _value =>
      super._value as _JsonGoogleMapSearchLegs;

  @override
  $Res call({
    Object? distance = freezed,
    Object? duration = freezed,
    Object? start_address = freezed,
    Object? start_location = freezed,
    Object? end_address = freezed,
    Object? end_location = freezed,
    Object? steps = freezed,
  }) {
    return _then(_JsonGoogleMapSearchLegs(
      distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      start_address == freezed
          ? _value.start_address
          : start_address // ignore: cast_nullable_to_non_nullable
              as String,
      start_location == freezed
          ? _value.start_location
          : start_location // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      end_address == freezed
          ? _value.end_address
          : end_address // ignore: cast_nullable_to_non_nullable
              as String,
      end_location == freezed
          ? _value.end_location
          : end_location // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      steps == freezed
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<JsonGoogleMapSearchStep>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JsonGoogleMapSearchLegs
    with DiagnosticableTreeMixin
    implements _JsonGoogleMapSearchLegs {
  const _$_JsonGoogleMapSearchLegs(
      [this.distance = const {},
      this.duration = const {},
      this.start_address = '',
      this.start_location = const {},
      this.end_address = '',
      this.end_location = const {},
      this.steps = const []]);

  factory _$_JsonGoogleMapSearchLegs.fromJson(Map<String, dynamic> json) =>
      _$_$_JsonGoogleMapSearchLegsFromJson(json);

  @JsonKey(defaultValue: const {})
  @override // 北東側, 南西側の寄りを示す
  final Map<String, dynamic> distance;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, dynamic> duration;
  @JsonKey(defaultValue: '')
  @override
  final String start_address;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, double> start_location;
  @JsonKey(defaultValue: '')
  @override
  final String end_address;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, double> end_location;
  @JsonKey(defaultValue: const [])
  @override
  final List<JsonGoogleMapSearchStep> steps;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JsonGoogleMapSearchLegs(distance: $distance, duration: $duration, start_address: $start_address, start_location: $start_location, end_address: $end_address, end_location: $end_location, steps: $steps)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JsonGoogleMapSearchLegs'))
      ..add(DiagnosticsProperty('distance', distance))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('start_address', start_address))
      ..add(DiagnosticsProperty('start_location', start_location))
      ..add(DiagnosticsProperty('end_address', end_address))
      ..add(DiagnosticsProperty('end_location', end_location))
      ..add(DiagnosticsProperty('steps', steps));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JsonGoogleMapSearchLegs &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.start_address, start_address) ||
                const DeepCollectionEquality()
                    .equals(other.start_address, start_address)) &&
            (identical(other.start_location, start_location) ||
                const DeepCollectionEquality()
                    .equals(other.start_location, start_location)) &&
            (identical(other.end_address, end_address) ||
                const DeepCollectionEquality()
                    .equals(other.end_address, end_address)) &&
            (identical(other.end_location, end_location) ||
                const DeepCollectionEquality()
                    .equals(other.end_location, end_location)) &&
            (identical(other.steps, steps) ||
                const DeepCollectionEquality().equals(other.steps, steps)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(distance) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(start_address) ^
      const DeepCollectionEquality().hash(start_location) ^
      const DeepCollectionEquality().hash(end_address) ^
      const DeepCollectionEquality().hash(end_location) ^
      const DeepCollectionEquality().hash(steps);

  @JsonKey(ignore: true)
  @override
  _$JsonGoogleMapSearchLegsCopyWith<_JsonGoogleMapSearchLegs> get copyWith =>
      __$JsonGoogleMapSearchLegsCopyWithImpl<_JsonGoogleMapSearchLegs>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JsonGoogleMapSearchLegsToJson(this);
  }
}

abstract class _JsonGoogleMapSearchLegs implements JsonGoogleMapSearchLegs {
  const factory _JsonGoogleMapSearchLegs(
      [Map<String, dynamic> distance,
      Map<String, dynamic> duration,
      String start_address,
      Map<String, double> start_location,
      String end_address,
      Map<String, double> end_location,
      List<JsonGoogleMapSearchStep> steps]) = _$_JsonGoogleMapSearchLegs;

  factory _JsonGoogleMapSearchLegs.fromJson(Map<String, dynamic> json) =
      _$_JsonGoogleMapSearchLegs.fromJson;

  @override // 北東側, 南西側の寄りを示す
  Map<String, dynamic> get distance => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get duration => throw _privateConstructorUsedError;
  @override
  String get start_address => throw _privateConstructorUsedError;
  @override
  Map<String, double> get start_location => throw _privateConstructorUsedError;
  @override
  String get end_address => throw _privateConstructorUsedError;
  @override
  Map<String, double> get end_location => throw _privateConstructorUsedError;
  @override
  List<JsonGoogleMapSearchStep> get steps => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JsonGoogleMapSearchLegsCopyWith<_JsonGoogleMapSearchLegs> get copyWith =>
      throw _privateConstructorUsedError;
}

JsonGoogleMapSearchStep _$JsonGoogleMapSearchStepFromJson(
    Map<String, dynamic> json) {
  return _JsonGoogleMapSearchStep.fromJson(json);
}

/// @nodoc
class _$JsonGoogleMapSearchStepTearOff {
  const _$JsonGoogleMapSearchStepTearOff();

  _JsonGoogleMapSearchStep call(
      [Map<String, dynamic> distance = const {},
      Map<String, dynamic> duration = const {},
      Map<String, double> start_location = const {},
      Map<String, double> end_location = const {},
      String html_instructions = '',
      String travel_mode = '']) {
    return _JsonGoogleMapSearchStep(
      distance,
      duration,
      start_location,
      end_location,
      html_instructions,
      travel_mode,
    );
  }

  JsonGoogleMapSearchStep fromJson(Map<String, Object> json) {
    return JsonGoogleMapSearchStep.fromJson(json);
  }
}

/// @nodoc
const $JsonGoogleMapSearchStep = _$JsonGoogleMapSearchStepTearOff();

/// @nodoc
mixin _$JsonGoogleMapSearchStep {
// 北東側, 南西側の寄りを示す
  Map<String, dynamic> get distance => throw _privateConstructorUsedError;
  Map<String, dynamic> get duration => throw _privateConstructorUsedError;
  Map<String, double> get start_location => throw _privateConstructorUsedError;
  Map<String, double> get end_location => throw _privateConstructorUsedError;
  String get html_instructions => throw _privateConstructorUsedError;
  String get travel_mode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonGoogleMapSearchStepCopyWith<JsonGoogleMapSearchStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonGoogleMapSearchStepCopyWith<$Res> {
  factory $JsonGoogleMapSearchStepCopyWith(JsonGoogleMapSearchStep value,
          $Res Function(JsonGoogleMapSearchStep) then) =
      _$JsonGoogleMapSearchStepCopyWithImpl<$Res>;
  $Res call(
      {Map<String, dynamic> distance,
      Map<String, dynamic> duration,
      Map<String, double> start_location,
      Map<String, double> end_location,
      String html_instructions,
      String travel_mode});
}

/// @nodoc
class _$JsonGoogleMapSearchStepCopyWithImpl<$Res>
    implements $JsonGoogleMapSearchStepCopyWith<$Res> {
  _$JsonGoogleMapSearchStepCopyWithImpl(this._value, this._then);

  final JsonGoogleMapSearchStep _value;
  // ignore: unused_field
  final $Res Function(JsonGoogleMapSearchStep) _then;

  @override
  $Res call({
    Object? distance = freezed,
    Object? duration = freezed,
    Object? start_location = freezed,
    Object? end_location = freezed,
    Object? html_instructions = freezed,
    Object? travel_mode = freezed,
  }) {
    return _then(_value.copyWith(
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      start_location: start_location == freezed
          ? _value.start_location
          : start_location // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      end_location: end_location == freezed
          ? _value.end_location
          : end_location // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      html_instructions: html_instructions == freezed
          ? _value.html_instructions
          : html_instructions // ignore: cast_nullable_to_non_nullable
              as String,
      travel_mode: travel_mode == freezed
          ? _value.travel_mode
          : travel_mode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$JsonGoogleMapSearchStepCopyWith<$Res>
    implements $JsonGoogleMapSearchStepCopyWith<$Res> {
  factory _$JsonGoogleMapSearchStepCopyWith(_JsonGoogleMapSearchStep value,
          $Res Function(_JsonGoogleMapSearchStep) then) =
      __$JsonGoogleMapSearchStepCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<String, dynamic> distance,
      Map<String, dynamic> duration,
      Map<String, double> start_location,
      Map<String, double> end_location,
      String html_instructions,
      String travel_mode});
}

/// @nodoc
class __$JsonGoogleMapSearchStepCopyWithImpl<$Res>
    extends _$JsonGoogleMapSearchStepCopyWithImpl<$Res>
    implements _$JsonGoogleMapSearchStepCopyWith<$Res> {
  __$JsonGoogleMapSearchStepCopyWithImpl(_JsonGoogleMapSearchStep _value,
      $Res Function(_JsonGoogleMapSearchStep) _then)
      : super(_value, (v) => _then(v as _JsonGoogleMapSearchStep));

  @override
  _JsonGoogleMapSearchStep get _value =>
      super._value as _JsonGoogleMapSearchStep;

  @override
  $Res call({
    Object? distance = freezed,
    Object? duration = freezed,
    Object? start_location = freezed,
    Object? end_location = freezed,
    Object? html_instructions = freezed,
    Object? travel_mode = freezed,
  }) {
    return _then(_JsonGoogleMapSearchStep(
      distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      start_location == freezed
          ? _value.start_location
          : start_location // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      end_location == freezed
          ? _value.end_location
          : end_location // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      html_instructions == freezed
          ? _value.html_instructions
          : html_instructions // ignore: cast_nullable_to_non_nullable
              as String,
      travel_mode == freezed
          ? _value.travel_mode
          : travel_mode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JsonGoogleMapSearchStep
    with DiagnosticableTreeMixin
    implements _JsonGoogleMapSearchStep {
  const _$_JsonGoogleMapSearchStep(
      [this.distance = const {},
      this.duration = const {},
      this.start_location = const {},
      this.end_location = const {},
      this.html_instructions = '',
      this.travel_mode = '']);

  factory _$_JsonGoogleMapSearchStep.fromJson(Map<String, dynamic> json) =>
      _$_$_JsonGoogleMapSearchStepFromJson(json);

  @JsonKey(defaultValue: const {})
  @override // 北東側, 南西側の寄りを示す
  final Map<String, dynamic> distance;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, dynamic> duration;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, double> start_location;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, double> end_location;
  @JsonKey(defaultValue: '')
  @override
  final String html_instructions;
  @JsonKey(defaultValue: '')
  @override
  final String travel_mode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JsonGoogleMapSearchStep(distance: $distance, duration: $duration, start_location: $start_location, end_location: $end_location, html_instructions: $html_instructions, travel_mode: $travel_mode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JsonGoogleMapSearchStep'))
      ..add(DiagnosticsProperty('distance', distance))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('start_location', start_location))
      ..add(DiagnosticsProperty('end_location', end_location))
      ..add(DiagnosticsProperty('html_instructions', html_instructions))
      ..add(DiagnosticsProperty('travel_mode', travel_mode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JsonGoogleMapSearchStep &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.start_location, start_location) ||
                const DeepCollectionEquality()
                    .equals(other.start_location, start_location)) &&
            (identical(other.end_location, end_location) ||
                const DeepCollectionEquality()
                    .equals(other.end_location, end_location)) &&
            (identical(other.html_instructions, html_instructions) ||
                const DeepCollectionEquality()
                    .equals(other.html_instructions, html_instructions)) &&
            (identical(other.travel_mode, travel_mode) ||
                const DeepCollectionEquality()
                    .equals(other.travel_mode, travel_mode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(distance) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(start_location) ^
      const DeepCollectionEquality().hash(end_location) ^
      const DeepCollectionEquality().hash(html_instructions) ^
      const DeepCollectionEquality().hash(travel_mode);

  @JsonKey(ignore: true)
  @override
  _$JsonGoogleMapSearchStepCopyWith<_JsonGoogleMapSearchStep> get copyWith =>
      __$JsonGoogleMapSearchStepCopyWithImpl<_JsonGoogleMapSearchStep>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JsonGoogleMapSearchStepToJson(this);
  }
}

abstract class _JsonGoogleMapSearchStep implements JsonGoogleMapSearchStep {
  const factory _JsonGoogleMapSearchStep(
      [Map<String, dynamic> distance,
      Map<String, dynamic> duration,
      Map<String, double> start_location,
      Map<String, double> end_location,
      String html_instructions,
      String travel_mode]) = _$_JsonGoogleMapSearchStep;

  factory _JsonGoogleMapSearchStep.fromJson(Map<String, dynamic> json) =
      _$_JsonGoogleMapSearchStep.fromJson;

  @override // 北東側, 南西側の寄りを示す
  Map<String, dynamic> get distance => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get duration => throw _privateConstructorUsedError;
  @override
  Map<String, double> get start_location => throw _privateConstructorUsedError;
  @override
  Map<String, double> get end_location => throw _privateConstructorUsedError;
  @override
  String get html_instructions => throw _privateConstructorUsedError;
  @override
  String get travel_mode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JsonGoogleMapSearchStepCopyWith<_JsonGoogleMapSearchStep> get copyWith =>
      throw _privateConstructorUsedError;
}
