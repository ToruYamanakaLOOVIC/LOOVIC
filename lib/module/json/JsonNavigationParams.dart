// ignore_for_file: file_names

import 'package:loovic/module/json/JsonLatLng.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// ジェネレートされたクラスからUserクラスのprivateメンバ変数にアクセスするため
part 'JsonNavigationParams.freezed.dart';
part 'JsonNavigationParams.g.dart';

@freezed
abstract class JsonNavigationParams with _$JsonNavigationParams {
  const factory JsonNavigationParams([
    @Default(0) int naviIndex,
    @Default(0) double distanceNextPoint,
    @Default(0) double degreesNextPoint,
    @Default(0) double angleNextLine,
    @Default(0) double distanceL2CrossPoint,
    @Default(0) double degreesL2CrossPoint,
    @Default(0) double distanceL1CrossPoint,
    @Default(0) double degreesL1CrossPoint,
    @Default(0) double lat,
    @Default(0) double lng,
    @Default([]) List<JsonLatLng> latlng,
    @Default([]) List<bool> activeLatLng,
    @Default(false) bool isRouteNavigation,
    @Default(false) bool error,
  ]) = _JsonNavigationParams;

  factory JsonNavigationParams.fromJson(Map<String, dynamic> json) =>
      _$JsonNavigationParamsFromJson(json);
}
