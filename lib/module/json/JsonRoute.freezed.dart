// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'JsonRoute.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JsonRoute _$JsonRouteFromJson(Map<String, dynamic> json) {
  return _JsonRoute.fromJson(json);
}

/// @nodoc
class _$JsonRouteTearOff {
  const _$JsonRouteTearOff();

  _JsonRoute call([List<JsonLatLng> potisons = const []]) {
    return _JsonRoute(
      potisons,
    );
  }

  JsonRoute fromJson(Map<String, Object> json) {
    return JsonRoute.fromJson(json);
  }
}

/// @nodoc
const $JsonRoute = _$JsonRouteTearOff();

/// @nodoc
mixin _$JsonRoute {
  List<JsonLatLng> get potisons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonRouteCopyWith<JsonRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonRouteCopyWith<$Res> {
  factory $JsonRouteCopyWith(JsonRoute value, $Res Function(JsonRoute) then) =
      _$JsonRouteCopyWithImpl<$Res>;
  $Res call({List<JsonLatLng> potisons});
}

/// @nodoc
class _$JsonRouteCopyWithImpl<$Res> implements $JsonRouteCopyWith<$Res> {
  _$JsonRouteCopyWithImpl(this._value, this._then);

  final JsonRoute _value;
  // ignore: unused_field
  final $Res Function(JsonRoute) _then;

  @override
  $Res call({
    Object? potisons = freezed,
  }) {
    return _then(_value.copyWith(
      potisons: potisons == freezed
          ? _value.potisons
          : potisons // ignore: cast_nullable_to_non_nullable
              as List<JsonLatLng>,
    ));
  }
}

/// @nodoc
abstract class _$JsonRouteCopyWith<$Res> implements $JsonRouteCopyWith<$Res> {
  factory _$JsonRouteCopyWith(
          _JsonRoute value, $Res Function(_JsonRoute) then) =
      __$JsonRouteCopyWithImpl<$Res>;
  @override
  $Res call({List<JsonLatLng> potisons});
}

/// @nodoc
class __$JsonRouteCopyWithImpl<$Res> extends _$JsonRouteCopyWithImpl<$Res>
    implements _$JsonRouteCopyWith<$Res> {
  __$JsonRouteCopyWithImpl(_JsonRoute _value, $Res Function(_JsonRoute) _then)
      : super(_value, (v) => _then(v as _JsonRoute));

  @override
  _JsonRoute get _value => super._value as _JsonRoute;

  @override
  $Res call({
    Object? potisons = freezed,
  }) {
    return _then(_JsonRoute(
      potisons == freezed
          ? _value.potisons
          : potisons // ignore: cast_nullable_to_non_nullable
              as List<JsonLatLng>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JsonRoute with DiagnosticableTreeMixin implements _JsonRoute {
  const _$_JsonRoute([this.potisons = const []]);

  factory _$_JsonRoute.fromJson(Map<String, dynamic> json) =>
      _$_$_JsonRouteFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  final List<JsonLatLng> potisons;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JsonRoute(potisons: $potisons)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JsonRoute'))
      ..add(DiagnosticsProperty('potisons', potisons));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JsonRoute &&
            (identical(other.potisons, potisons) ||
                const DeepCollectionEquality()
                    .equals(other.potisons, potisons)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(potisons);

  @JsonKey(ignore: true)
  @override
  _$JsonRouteCopyWith<_JsonRoute> get copyWith =>
      __$JsonRouteCopyWithImpl<_JsonRoute>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JsonRouteToJson(this);
  }
}

abstract class _JsonRoute implements JsonRoute {
  const factory _JsonRoute([List<JsonLatLng> potisons]) = _$_JsonRoute;

  factory _JsonRoute.fromJson(Map<String, dynamic> json) =
      _$_JsonRoute.fromJson;

  @override
  List<JsonLatLng> get potisons => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JsonRouteCopyWith<_JsonRoute> get copyWith =>
      throw _privateConstructorUsedError;
}
