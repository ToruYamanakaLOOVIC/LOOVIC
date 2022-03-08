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
    @Default(0) double distance,
    @Default(0) double degrees,
    @Default(0) double distanceNext,
    @Default(0) double degreesNext,
    @Default(0) double distanceCrossPoint,
    @Default([]) List<JsonLatLng> latlng,
    @Default([]) List<bool> activeLatLng,
    @Default(false) bool isRouteNavigation,
    @Default(false) bool error,
  ]) = _JsonNavigationParams;

  factory JsonNavigationParams.fromJson(Map<String, dynamic> json) =>
      _$JsonNavigationParamsFromJson(json);
}
