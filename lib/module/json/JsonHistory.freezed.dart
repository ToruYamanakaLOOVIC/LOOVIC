// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'JsonHistory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JsonSaerchHistory _$JsonSaerchHistoryFromJson(Map<String, dynamic> json) {
  return _JsonSaerchHistory.fromJson(json);
}

/// @nodoc
class _$JsonSaerchHistoryTearOff {
  const _$JsonSaerchHistoryTearOff();

  _JsonSaerchHistory call(
      [String status = '', List<JsonSaerchParam> history = const []]) {
    return _JsonSaerchHistory(
      status,
      history,
    );
  }

  JsonSaerchHistory fromJson(Map<String, Object> json) {
    return JsonSaerchHistory.fromJson(json);
  }
}

/// @nodoc
const $JsonSaerchHistory = _$JsonSaerchHistoryTearOff();

/// @nodoc
mixin _$JsonSaerchHistory {
//status
  String get status => throw _privateConstructorUsedError;
  List<JsonSaerchParam> get history => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonSaerchHistoryCopyWith<JsonSaerchHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonSaerchHistoryCopyWith<$Res> {
  factory $JsonSaerchHistoryCopyWith(
          JsonSaerchHistory value, $Res Function(JsonSaerchHistory) then) =
      _$JsonSaerchHistoryCopyWithImpl<$Res>;
  $Res call({String status, List<JsonSaerchParam> history});
}

/// @nodoc
class _$JsonSaerchHistoryCopyWithImpl<$Res>
    implements $JsonSaerchHistoryCopyWith<$Res> {
  _$JsonSaerchHistoryCopyWithImpl(this._value, this._then);

  final JsonSaerchHistory _value;
  // ignore: unused_field
  final $Res Function(JsonSaerchHistory) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? history = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      history: history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<JsonSaerchParam>,
    ));
  }
}

/// @nodoc
abstract class _$JsonSaerchHistoryCopyWith<$Res>
    implements $JsonSaerchHistoryCopyWith<$Res> {
  factory _$JsonSaerchHistoryCopyWith(
          _JsonSaerchHistory value, $Res Function(_JsonSaerchHistory) then) =
      __$JsonSaerchHistoryCopyWithImpl<$Res>;
  @override
  $Res call({String status, List<JsonSaerchParam> history});
}

/// @nodoc
class __$JsonSaerchHistoryCopyWithImpl<$Res>
    extends _$JsonSaerchHistoryCopyWithImpl<$Res>
    implements _$JsonSaerchHistoryCopyWith<$Res> {
  __$JsonSaerchHistoryCopyWithImpl(
      _JsonSaerchHistory _value, $Res Function(_JsonSaerchHistory) _then)
      : super(_value, (v) => _then(v as _JsonSaerchHistory));

  @override
  _JsonSaerchHistory get _value => super._value as _JsonSaerchHistory;

  @override
  $Res call({
    Object? status = freezed,
    Object? history = freezed,
  }) {
    return _then(_JsonSaerchHistory(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<JsonSaerchParam>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JsonSaerchHistory
    with DiagnosticableTreeMixin
    implements _JsonSaerchHistory {
  const _$_JsonSaerchHistory([this.status = '', this.history = const []]);

  factory _$_JsonSaerchHistory.fromJson(Map<String, dynamic> json) =>
      _$_$_JsonSaerchHistoryFromJson(json);

  @JsonKey(defaultValue: '')
  @override //status
  final String status;
  @JsonKey(defaultValue: const [])
  @override
  final List<JsonSaerchParam> history;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JsonSaerchHistory(status: $status, history: $history)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JsonSaerchHistory'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('history', history));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JsonSaerchHistory &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.history, history) ||
                const DeepCollectionEquality().equals(other.history, history)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(history);

  @JsonKey(ignore: true)
  @override
  _$JsonSaerchHistoryCopyWith<_JsonSaerchHistory> get copyWith =>
      __$JsonSaerchHistoryCopyWithImpl<_JsonSaerchHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JsonSaerchHistoryToJson(this);
  }
}

abstract class _JsonSaerchHistory implements JsonSaerchHistory {
  const factory _JsonSaerchHistory(
      [String status, List<JsonSaerchParam> history]) = _$_JsonSaerchHistory;

  factory _JsonSaerchHistory.fromJson(Map<String, dynamic> json) =
      _$_JsonSaerchHistory.fromJson;

  @override //status
  String get status => throw _privateConstructorUsedError;
  @override
  List<JsonSaerchParam> get history => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JsonSaerchHistoryCopyWith<_JsonSaerchHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

JsonSaerchParam _$JsonSaerchParamFromJson(Map<String, dynamic> json) {
  return _JsonSaerchParam.fromJson(json);
}

/// @nodoc
class _$JsonSaerchParamTearOff {
  const _$JsonSaerchParamTearOff();

  _JsonSaerchParam call([String date = '', String to = '', String from = '']) {
    return _JsonSaerchParam(
      date,
      to,
      from,
    );
  }

  JsonSaerchParam fromJson(Map<String, Object> json) {
    return JsonSaerchParam.fromJson(json);
  }
}

/// @nodoc
const $JsonSaerchParam = _$JsonSaerchParamTearOff();

/// @nodoc
mixin _$JsonSaerchParam {
//date
  String get date => throw _privateConstructorUsedError; //to
  String get to => throw _privateConstructorUsedError; //from
  String get from => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonSaerchParamCopyWith<JsonSaerchParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonSaerchParamCopyWith<$Res> {
  factory $JsonSaerchParamCopyWith(
          JsonSaerchParam value, $Res Function(JsonSaerchParam) then) =
      _$JsonSaerchParamCopyWithImpl<$Res>;
  $Res call({String date, String to, String from});
}

/// @nodoc
class _$JsonSaerchParamCopyWithImpl<$Res>
    implements $JsonSaerchParamCopyWith<$Res> {
  _$JsonSaerchParamCopyWithImpl(this._value, this._then);

  final JsonSaerchParam _value;
  // ignore: unused_field
  final $Res Function(JsonSaerchParam) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? to = freezed,
    Object? from = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$JsonSaerchParamCopyWith<$Res>
    implements $JsonSaerchParamCopyWith<$Res> {
  factory _$JsonSaerchParamCopyWith(
          _JsonSaerchParam value, $Res Function(_JsonSaerchParam) then) =
      __$JsonSaerchParamCopyWithImpl<$Res>;
  @override
  $Res call({String date, String to, String from});
}

/// @nodoc
class __$JsonSaerchParamCopyWithImpl<$Res>
    extends _$JsonSaerchParamCopyWithImpl<$Res>
    implements _$JsonSaerchParamCopyWith<$Res> {
  __$JsonSaerchParamCopyWithImpl(
      _JsonSaerchParam _value, $Res Function(_JsonSaerchParam) _then)
      : super(_value, (v) => _then(v as _JsonSaerchParam));

  @override
  _JsonSaerchParam get _value => super._value as _JsonSaerchParam;

  @override
  $Res call({
    Object? date = freezed,
    Object? to = freezed,
    Object? from = freezed,
  }) {
    return _then(_JsonSaerchParam(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JsonSaerchParam
    with DiagnosticableTreeMixin
    implements _JsonSaerchParam {
  const _$_JsonSaerchParam([this.date = '', this.to = '', this.from = '']);

  factory _$_JsonSaerchParam.fromJson(Map<String, dynamic> json) =>
      _$_$_JsonSaerchParamFromJson(json);

  @JsonKey(defaultValue: '')
  @override //date
  final String date;
  @JsonKey(defaultValue: '')
  @override //to
  final String to;
  @JsonKey(defaultValue: '')
  @override //from
  final String from;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JsonSaerchParam(date: $date, to: $to, from: $from)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JsonSaerchParam'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('from', from));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JsonSaerchParam &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(to) ^
      const DeepCollectionEquality().hash(from);

  @JsonKey(ignore: true)
  @override
  _$JsonSaerchParamCopyWith<_JsonSaerchParam> get copyWith =>
      __$JsonSaerchParamCopyWithImpl<_JsonSaerchParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JsonSaerchParamToJson(this);
  }
}

abstract class _JsonSaerchParam implements JsonSaerchParam {
  const factory _JsonSaerchParam([String date, String to, String from]) =
      _$_JsonSaerchParam;

  factory _JsonSaerchParam.fromJson(Map<String, dynamic> json) =
      _$_JsonSaerchParam.fromJson;

  @override //date
  String get date => throw _privateConstructorUsedError;
  @override //to
  String get to => throw _privateConstructorUsedError;
  @override //from
  String get from => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JsonSaerchParamCopyWith<_JsonSaerchParam> get copyWith =>
      throw _privateConstructorUsedError;
}

JsonRootHistory _$JsonRootHistoryFromJson(Map<String, dynamic> json) {
  return _JsonRootHistory.fromJson(json);
}

/// @nodoc
class _$JsonRootHistoryTearOff {
  const _$JsonRootHistoryTearOff();

  _JsonRootHistory call(
      [String status = '', List<JsonRootParam> history = const []]) {
    return _JsonRootHistory(
      status,
      history,
    );
  }

  JsonRootHistory fromJson(Map<String, Object> json) {
    return JsonRootHistory.fromJson(json);
  }
}

/// @nodoc
const $JsonRootHistory = _$JsonRootHistoryTearOff();

/// @nodoc
mixin _$JsonRootHistory {
//status
  String get status => throw _privateConstructorUsedError;
  List<JsonRootParam> get history => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonRootHistoryCopyWith<JsonRootHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonRootHistoryCopyWith<$Res> {
  factory $JsonRootHistoryCopyWith(
          JsonRootHistory value, $Res Function(JsonRootHistory) then) =
      _$JsonRootHistoryCopyWithImpl<$Res>;
  $Res call({String status, List<JsonRootParam> history});
}

/// @nodoc
class _$JsonRootHistoryCopyWithImpl<$Res>
    implements $JsonRootHistoryCopyWith<$Res> {
  _$JsonRootHistoryCopyWithImpl(this._value, this._then);

  final JsonRootHistory _value;
  // ignore: unused_field
  final $Res Function(JsonRootHistory) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? history = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      history: history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<JsonRootParam>,
    ));
  }
}

/// @nodoc
abstract class _$JsonRootHistoryCopyWith<$Res>
    implements $JsonRootHistoryCopyWith<$Res> {
  factory _$JsonRootHistoryCopyWith(
          _JsonRootHistory value, $Res Function(_JsonRootHistory) then) =
      __$JsonRootHistoryCopyWithImpl<$Res>;
  @override
  $Res call({String status, List<JsonRootParam> history});
}

/// @nodoc
class __$JsonRootHistoryCopyWithImpl<$Res>
    extends _$JsonRootHistoryCopyWithImpl<$Res>
    implements _$JsonRootHistoryCopyWith<$Res> {
  __$JsonRootHistoryCopyWithImpl(
      _JsonRootHistory _value, $Res Function(_JsonRootHistory) _then)
      : super(_value, (v) => _then(v as _JsonRootHistory));

  @override
  _JsonRootHistory get _value => super._value as _JsonRootHistory;

  @override
  $Res call({
    Object? status = freezed,
    Object? history = freezed,
  }) {
    return _then(_JsonRootHistory(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<JsonRootParam>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JsonRootHistory
    with DiagnosticableTreeMixin
    implements _JsonRootHistory {
  const _$_JsonRootHistory([this.status = '', this.history = const []]);

  factory _$_JsonRootHistory.fromJson(Map<String, dynamic> json) =>
      _$_$_JsonRootHistoryFromJson(json);

  @JsonKey(defaultValue: '')
  @override //status
  final String status;
  @JsonKey(defaultValue: const [])
  @override
  final List<JsonRootParam> history;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JsonRootHistory(status: $status, history: $history)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JsonRootHistory'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('history', history));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JsonRootHistory &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.history, history) ||
                const DeepCollectionEquality().equals(other.history, history)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(history);

  @JsonKey(ignore: true)
  @override
  _$JsonRootHistoryCopyWith<_JsonRootHistory> get copyWith =>
      __$JsonRootHistoryCopyWithImpl<_JsonRootHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JsonRootHistoryToJson(this);
  }
}

abstract class _JsonRootHistory implements JsonRootHistory {
  const factory _JsonRootHistory([String status, List<JsonRootParam> history]) =
      _$_JsonRootHistory;

  factory _JsonRootHistory.fromJson(Map<String, dynamic> json) =
      _$_JsonRootHistory.fromJson;

  @override //status
  String get status => throw _privateConstructorUsedError;
  @override
  List<JsonRootParam> get history => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JsonRootHistoryCopyWith<_JsonRootHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

JsonRootParam _$JsonRootParamFromJson(Map<String, dynamic> json) {
  return _JsonRootParam.fromJson(json);
}

/// @nodoc
class _$JsonRootParamTearOff {
  const _$JsonRootParamTearOff();

  _JsonRootParam call([String date = '', int id = 0]) {
    return _JsonRootParam(
      date,
      id,
    );
  }

  JsonRootParam fromJson(Map<String, Object> json) {
    return JsonRootParam.fromJson(json);
  }
}

/// @nodoc
const $JsonRootParam = _$JsonRootParamTearOff();

/// @nodoc
mixin _$JsonRootParam {
//date
  String get date => throw _privateConstructorUsedError; //id
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonRootParamCopyWith<JsonRootParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonRootParamCopyWith<$Res> {
  factory $JsonRootParamCopyWith(
          JsonRootParam value, $Res Function(JsonRootParam) then) =
      _$JsonRootParamCopyWithImpl<$Res>;
  $Res call({String date, int id});
}

/// @nodoc
class _$JsonRootParamCopyWithImpl<$Res>
    implements $JsonRootParamCopyWith<$Res> {
  _$JsonRootParamCopyWithImpl(this._value, this._then);

  final JsonRootParam _value;
  // ignore: unused_field
  final $Res Function(JsonRootParam) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$JsonRootParamCopyWith<$Res>
    implements $JsonRootParamCopyWith<$Res> {
  factory _$JsonRootParamCopyWith(
          _JsonRootParam value, $Res Function(_JsonRootParam) then) =
      __$JsonRootParamCopyWithImpl<$Res>;
  @override
  $Res call({String date, int id});
}

/// @nodoc
class __$JsonRootParamCopyWithImpl<$Res>
    extends _$JsonRootParamCopyWithImpl<$Res>
    implements _$JsonRootParamCopyWith<$Res> {
  __$JsonRootParamCopyWithImpl(
      _JsonRootParam _value, $Res Function(_JsonRootParam) _then)
      : super(_value, (v) => _then(v as _JsonRootParam));

  @override
  _JsonRootParam get _value => super._value as _JsonRootParam;

  @override
  $Res call({
    Object? date = freezed,
    Object? id = freezed,
  }) {
    return _then(_JsonRootParam(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JsonRootParam with DiagnosticableTreeMixin implements _JsonRootParam {
  const _$_JsonRootParam([this.date = '', this.id = 0]);

  factory _$_JsonRootParam.fromJson(Map<String, dynamic> json) =>
      _$_$_JsonRootParamFromJson(json);

  @JsonKey(defaultValue: '')
  @override //date
  final String date;
  @JsonKey(defaultValue: 0)
  @override //id
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JsonRootParam(date: $date, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JsonRootParam'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JsonRootParam &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$JsonRootParamCopyWith<_JsonRootParam> get copyWith =>
      __$JsonRootParamCopyWithImpl<_JsonRootParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JsonRootParamToJson(this);
  }
}

abstract class _JsonRootParam implements JsonRootParam {
  const factory _JsonRootParam([String date, int id]) = _$_JsonRootParam;

  factory _JsonRootParam.fromJson(Map<String, dynamic> json) =
      _$_JsonRootParam.fromJson;

  @override //date
  String get date => throw _privateConstructorUsedError;
  @override //id
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JsonRootParamCopyWith<_JsonRootParam> get copyWith =>
      throw _privateConstructorUsedError;
}

JsonPointsHistory _$JsonPointsHistoryFromJson(Map<String, dynamic> json) {
  return _JsonPointsHistory.fromJson(json);
}

/// @nodoc
class _$JsonPointsHistoryTearOff {
  const _$JsonPointsHistoryTearOff();

  _JsonPointsHistory call(
      [String status = '', List<JsonLatLngUpload> points = const []]) {
    return _JsonPointsHistory(
      status,
      points,
    );
  }

  JsonPointsHistory fromJson(Map<String, Object> json) {
    return JsonPointsHistory.fromJson(json);
  }
}

/// @nodoc
const $JsonPointsHistory = _$JsonPointsHistoryTearOff();

/// @nodoc
mixin _$JsonPointsHistory {
//status
  String get status => throw _privateConstructorUsedError;
  List<JsonLatLngUpload> get points => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonPointsHistoryCopyWith<JsonPointsHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonPointsHistoryCopyWith<$Res> {
  factory $JsonPointsHistoryCopyWith(
          JsonPointsHistory value, $Res Function(JsonPointsHistory) then) =
      _$JsonPointsHistoryCopyWithImpl<$Res>;
  $Res call({String status, List<JsonLatLngUpload> points});
}

/// @nodoc
class _$JsonPointsHistoryCopyWithImpl<$Res>
    implements $JsonPointsHistoryCopyWith<$Res> {
  _$JsonPointsHistoryCopyWithImpl(this._value, this._then);

  final JsonPointsHistory _value;
  // ignore: unused_field
  final $Res Function(JsonPointsHistory) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? points = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<JsonLatLngUpload>,
    ));
  }
}

/// @nodoc
abstract class _$JsonPointsHistoryCopyWith<$Res>
    implements $JsonPointsHistoryCopyWith<$Res> {
  factory _$JsonPointsHistoryCopyWith(
          _JsonPointsHistory value, $Res Function(_JsonPointsHistory) then) =
      __$JsonPointsHistoryCopyWithImpl<$Res>;
  @override
  $Res call({String status, List<JsonLatLngUpload> points});
}

/// @nodoc
class __$JsonPointsHistoryCopyWithImpl<$Res>
    extends _$JsonPointsHistoryCopyWithImpl<$Res>
    implements _$JsonPointsHistoryCopyWith<$Res> {
  __$JsonPointsHistoryCopyWithImpl(
      _JsonPointsHistory _value, $Res Function(_JsonPointsHistory) _then)
      : super(_value, (v) => _then(v as _JsonPointsHistory));

  @override
  _JsonPointsHistory get _value => super._value as _JsonPointsHistory;

  @override
  $Res call({
    Object? status = freezed,
    Object? points = freezed,
  }) {
    return _then(_JsonPointsHistory(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<JsonLatLngUpload>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JsonPointsHistory
    with DiagnosticableTreeMixin
    implements _JsonPointsHistory {
  const _$_JsonPointsHistory([this.status = '', this.points = const []]);

  factory _$_JsonPointsHistory.fromJson(Map<String, dynamic> json) =>
      _$_$_JsonPointsHistoryFromJson(json);

  @JsonKey(defaultValue: '')
  @override //status
  final String status;
  @JsonKey(defaultValue: const [])
  @override
  final List<JsonLatLngUpload> points;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JsonPointsHistory(status: $status, points: $points)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JsonPointsHistory'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('points', points));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JsonPointsHistory &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(points);

  @JsonKey(ignore: true)
  @override
  _$JsonPointsHistoryCopyWith<_JsonPointsHistory> get copyWith =>
      __$JsonPointsHistoryCopyWithImpl<_JsonPointsHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JsonPointsHistoryToJson(this);
  }
}

abstract class _JsonPointsHistory implements JsonPointsHistory {
  const factory _JsonPointsHistory(
      [String status, List<JsonLatLngUpload> points]) = _$_JsonPointsHistory;

  factory _JsonPointsHistory.fromJson(Map<String, dynamic> json) =
      _$_JsonPointsHistory.fromJson;

  @override //status
  String get status => throw _privateConstructorUsedError;
  @override
  List<JsonLatLngUpload> get points => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JsonPointsHistoryCopyWith<_JsonPointsHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
