// ignore_for_file: file_names

import 'package:json_annotation/json_annotation.dart';
import 'package:loovic/module/json/JsonLatLng.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// ジェネレートされたクラスからUserクラスのprivateメンバ変数にアクセスするため
part 'JsonRoute.freezed.dart';
part 'JsonRoute.g.dart';

@freezed
abstract class JsonRoute with _$JsonRoute {
  const factory JsonRoute([
    @Default([]) List<JsonLatLng> potisons,
  ]) = _JsonRoute;

  factory JsonRoute.fromJson(Map<String, dynamic> json) =>
      _$JsonRouteFromJson(json);
}
