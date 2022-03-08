// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'JsonApp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JsonApp _$JsonAppFromJson(Map<String, dynamic> json) {
  return _JsonApp.fromJson(json);
}

/// @nodoc
class _$JsonAppTearOff {
  const _$JsonAppTearOff();

  _JsonApp call(
      [int pageIndex = 0,
      double radius = 10,
      int interval = 1000,
      int sound = 100,
      String uID = 'test',
      bool isNavigationAcrive = false,
      bool isDebug = true]) {
    return _JsonApp(
      pageIndex,
      radius,
      interval,
      sound,
      uID,
      isNavigationAcrive,
      isDebug,
    );
  }

  JsonApp fromJson(Map<String, Object> json) {
    return JsonApp.fromJson(json);
  }
}

/// @nodoc
const $JsonApp = _$JsonAppTearOff();

/// @nodoc
mixin _$JsonApp {
  int get pageIndex => throw _privateConstructorUsedError;
  double get radius => throw _privateConstructorUsedError;
  int get interval => throw _privateConstructorUsedError;
  int get sound => throw _privateConstructorUsedError;
  String get uID => throw _privateConstructorUsedError;
  bool get isNavigationAcrive => throw _privateConstructorUsedError;
  bool get isDebug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonAppCopyWith<JsonApp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonAppCopyWith<$Res> {
  factory $JsonAppCopyWith(JsonApp value, $Res Function(JsonApp) then) =
      _$JsonAppCopyWithImpl<$Res>;
  $Res call(
      {int pageIndex,
      double radius,
      int interval,
      int sound,
      String uID,
      bool isNavigationAcrive,
      bool isDebug});
}

/// @nodoc
class _$JsonAppCopyWithImpl<$Res> implements $JsonAppCopyWith<$Res> {
  _$JsonAppCopyWithImpl(this._value, this._then);

  final JsonApp _value;
  // ignore: unused_field
  final $Res Function(JsonApp) _then;

  @override
  $Res call({
    Object? pageIndex = freezed,
    Object? radius = freezed,
    Object? interval = freezed,
    Object? sound = freezed,
    Object? uID = freezed,
    Object? isNavigationAcrive = freezed,
    Object? isDebug = freezed,
  }) {
    return _then(_value.copyWith(
      pageIndex: pageIndex == freezed
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      radius: radius == freezed
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      interval: interval == freezed
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int,
      sound: sound == freezed
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as int,
      uID: uID == freezed
          ? _value.uID
          : uID // ignore: cast_nullable_to_non_nullable
              as String,
      isNavigationAcrive: isNavigationAcrive == freezed
          ? _value.isNavigationAcrive
          : isNavigationAcrive // ignore: cast_nullable_to_non_nullable
              as bool,
      isDebug: isDebug == freezed
          ? _value.isDebug
          : isDebug // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$JsonAppCopyWith<$Res> implements $JsonAppCopyWith<$Res> {
  factory _$JsonAppCopyWith(_JsonApp value, $Res Function(_JsonApp) then) =
      __$JsonAppCopyWithImpl<$Res>;
  @override
  $Res call(
      {int pageIndex,
      double radius,
      int interval,
      int sound,
      String uID,
      bool isNavigationAcrive,
      bool isDebug});
}

/// @nodoc
class __$JsonAppCopyWithImpl<$Res> extends _$JsonAppCopyWithImpl<$Res>
    implements _$JsonAppCopyWith<$Res> {
  __$JsonAppCopyWithImpl(_JsonApp _value, $Res Function(_JsonApp) _then)
      : super(_value, (v) => _then(v as _JsonApp));

  @override
  _JsonApp get _value => super._value as _JsonApp;

  @override
  $Res call({
    Object? pageIndex = freezed,
    Object? radius = freezed,
    Object? interval = freezed,
    Object? sound = freezed,
    Object? uID = freezed,
    Object? isNavigationAcrive = freezed,
    Object? isDebug = freezed,
  }) {
    return _then(_JsonApp(
      pageIndex == freezed
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      radius == freezed
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      interval == freezed
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int,
      sound == freezed
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as int,
      uID == freezed
          ? _value.uID
          : uID // ignore: cast_nullable_to_non_nullable
              as String,
      isNavigationAcrive == freezed
          ? _value.isNavigationAcrive
          : isNavigationAcrive // ignore: cast_nullable_to_non_nullable
              as bool,
      isDebug == freezed
          ? _value.isDebug
          : isDebug // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JsonApp with DiagnosticableTreeMixin implements _JsonApp {
  const _$_JsonApp(
      [this.pageIndex = 0,
      this.radius = 10,
      this.interval = 1000,
      this.sound = 100,
      this.uID = 'test',
      this.isNavigationAcrive = false,
      this.isDebug = true]);

  factory _$_JsonApp.fromJson(Map<String, dynamic> json) =>
      _$_$_JsonAppFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int pageIndex;
  @JsonKey(defaultValue: 10)
  @override
  final double radius;
  @JsonKey(defaultValue: 1000)
  @override
  final int interval;
  @JsonKey(defaultValue: 100)
  @override
  final int sound;
  @JsonKey(defaultValue: 'test')
  @override
  final String uID;
  @JsonKey(defaultValue: false)
  @override
  final bool isNavigationAcrive;
  @JsonKey(defaultValue: true)
  @override
  final bool isDebug;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JsonApp(pageIndex: $pageIndex, radius: $radius, interval: $interval, sound: $sound, uID: $uID, isNavigationAcrive: $isNavigationAcrive, isDebug: $isDebug)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JsonApp'))
      ..add(DiagnosticsProperty('pageIndex', pageIndex))
      ..add(DiagnosticsProperty('radius', radius))
      ..add(DiagnosticsProperty('interval', interval))
      ..add(DiagnosticsProperty('sound', sound))
      ..add(DiagnosticsProperty('uID', uID))
      ..add(DiagnosticsProperty('isNavigationAcrive', isNavigationAcrive))
      ..add(DiagnosticsProperty('isDebug', isDebug));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JsonApp &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality()
                    .equals(other.pageIndex, pageIndex)) &&
            (identical(other.radius, radius) ||
                const DeepCollectionEquality().equals(other.radius, radius)) &&
            (identical(other.interval, interval) ||
                const DeepCollectionEquality()
                    .equals(other.interval, interval)) &&
            (identical(other.sound, sound) ||
                const DeepCollectionEquality().equals(other.sound, sound)) &&
            (identical(other.uID, uID) ||
                const DeepCollectionEquality().equals(other.uID, uID)) &&
            (identical(other.isNavigationAcrive, isNavigationAcrive) ||
                const DeepCollectionEquality()
                    .equals(other.isNavigationAcrive, isNavigationAcrive)) &&
            (identical(other.isDebug, isDebug) ||
                const DeepCollectionEquality().equals(other.isDebug, isDebug)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(radius) ^
      const DeepCollectionEquality().hash(interval) ^
      const DeepCollectionEquality().hash(sound) ^
      const DeepCollectionEquality().hash(uID) ^
      const DeepCollectionEquality().hash(isNavigationAcrive) ^
      const DeepCollectionEquality().hash(isDebug);

  @JsonKey(ignore: true)
  @override
  _$JsonAppCopyWith<_JsonApp> get copyWith =>
      __$JsonAppCopyWithImpl<_JsonApp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JsonAppToJson(this);
  }
}

abstract class _JsonApp implements JsonApp {
  const factory _JsonApp(
      [int pageIndex,
      double radius,
      int interval,
      int sound,
      String uID,
      bool isNavigationAcrive,
      bool isDebug]) = _$_JsonApp;

  factory _JsonApp.fromJson(Map<String, dynamic> json) = _$_JsonApp.fromJson;

  @override
  int get pageIndex => throw _privateConstructorUsedError;
  @override
  double get radius => throw _privateConstructorUsedError;
  @override
  int get interval => throw _privateConstructorUsedError;
  @override
  int get sound => throw _privateConstructorUsedError;
  @override
  String get uID => throw _privateConstructorUsedError;
  @override
  bool get isNavigationAcrive => throw _privateConstructorUsedError;
  @override
  bool get isDebug => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JsonAppCopyWith<_JsonApp> get copyWith =>
      throw _privateConstructorUsedError;
}
