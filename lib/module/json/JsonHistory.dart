// ignore_for_file: file_names

import 'package:loovic/module/json/JsonLatLng.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// ジェネレートされたクラスからUserクラスのprivateメンバ変数にアクセスするため
part 'JsonHistory.freezed.dart';
part 'JsonHistory.g.dart';

@freezed
abstract class JsonSaerchHistory with _$JsonSaerchHistory {
  const factory JsonSaerchHistory([
    //status
    @Default('') String status,
    @Default([]) List<JsonSaerchParam> history,
  ]) = _JsonSaerchHistory;

  factory JsonSaerchHistory.fromJson(Map<String, dynamic> json) =>
      _$JsonSaerchHistoryFromJson(json);
}

@freezed
abstract class JsonSaerchParam with _$JsonSaerchParam {
  const factory JsonSaerchParam([
    //date
    @Default('') String date,
    //to
    @Default('') String to,
    //from
    @Default('') String from,
  ]) = _JsonSaerchParam;

  factory JsonSaerchParam.fromJson(Map<String, dynamic> json) =>
      _$JsonSaerchParamFromJson(json);
}

@freezed
abstract class JsonRootHistory with _$JsonRootHistory {
  const factory JsonRootHistory([
    //status
    @Default('') String status,
    @Default([]) List<JsonRootParam> history,
  ]) = _JsonRootHistory;

  factory JsonRootHistory.fromJson(Map<String, dynamic> json) =>
      _$JsonRootHistoryFromJson(json);
}

@freezed
abstract class JsonRootParam with _$JsonRootParam {
  const factory JsonRootParam([
    //date
    @Default('') String date,
    //id
    @Default(0) int id, //date
  ]) = _JsonRootParam;

  factory JsonRootParam.fromJson(Map<String, dynamic> json) =>
      _$JsonRootParamFromJson(json);
}

@freezed
abstract class JsonPointsHistory with _$JsonPointsHistory {
  const factory JsonPointsHistory([
    //status
    @Default('')
        String status,
    @Default([])
        // ignore: non_constant_identifier_names
        List<JsonLatLngUpload> points,
  ]) = _JsonPointsHistory;

  factory JsonPointsHistory.fromJson(Map<String, dynamic> json) =>
      _$JsonPointsHistoryFromJson(json);
}
