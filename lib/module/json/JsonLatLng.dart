import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'JsonLatLng.freezed.dart';
part 'JsonLatLng.g.dart';

@freezed
abstract class JsonLatLng with _$JsonLatLng {
  const factory JsonLatLng([
    @Default(0) double lat,
    @Default(0) double lng,
    @Default(true) bool acrive,
  ]) = _JsonLatLng;

  factory JsonLatLng.fromJson(Map<String, dynamic> json) =>
      _$JsonLatLngFromJson(json);
}

@freezed
abstract class JsonLatLngUpload with _$JsonLatLngUpload {
  const factory JsonLatLngUpload([
    @Default('') String lat,
    @Default('') String lng,
  ]) = _JsonLatLngUpload;

  factory JsonLatLngUpload.fromJson(Map<String, dynamic> json) =>
      _$JsonLatLngUploadFromJson(json);
}
