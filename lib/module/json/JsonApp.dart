// ignore_for_file: file_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// ジェネレートされたクラスからUserクラスのprivateメンバ変数にアクセスするため
part 'JsonApp.freezed.dart';
part 'JsonApp.g.dart';

@freezed
abstract class JsonApp with _$JsonApp {
  const factory JsonApp([
    @Default(0) int pageIndex,
    @Default(10) double radius,
    @Default(1000) int interval,
    @Default('test') String uID,
    @Default(false) bool isNavigationAcrive,
    @Default(true) bool isDebug,
  ]) = _JsonApp;

  factory JsonApp.fromJson(Map<String, dynamic> json) =>
      _$JsonAppFromJson(json);
}
