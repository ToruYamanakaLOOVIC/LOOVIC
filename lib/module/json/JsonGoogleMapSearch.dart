// ignore_for_file: file_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// ジェネレートされたクラスからUserクラスのprivateメンバ変数にアクセスするため
part 'JsonGoogleMapSearch.freezed.dart';
part 'JsonGoogleMapSearch.g.dart';

@freezed
abstract class JsonGoogleMapSearch with _$JsonGoogleMapSearch {
  const factory JsonGoogleMapSearch([
    //ステータス
    @Default('')
        String status,
    //from,toをgoogleMapApiがgeocodeした結果
    @Default([])
        // ignore: non_constant_identifier_names
        List<JsonGoogleMapSearchGeocodedWaypoints> geocoded_waypoints,
    @Default([])
        // ignore: non_constant_identifier_names
        List<JsonGoogleMapSearchRoutes> routes,
  ]) = _JsonGoogleMapSearch;

  factory JsonGoogleMapSearch.fromJson(Map<String, dynamic> json) =>
      _$JsonGoogleMapSearchFromJson(json);
}

//from,toをgoogleMapApiがgeocodeした結果
@freezed
abstract class JsonGoogleMapSearchGeocodedWaypoints
    with _$JsonGoogleMapSearchGeocodedWaypoints {
  const factory JsonGoogleMapSearchGeocodedWaypoints([
    // ignore: non_constant_identifier_names
    @Default('') String geocoder_status,
    // ignore: non_constant_identifier_names
    @Default('') String place_id,
    @Default([]) List<String> types,
  ]) = _JsonGoogleMapSearchGeocodedWaypoints;

  factory JsonGoogleMapSearchGeocodedWaypoints.fromJson(
          Map<String, dynamic> json) =>
      _$JsonGoogleMapSearchGeocodedWaypointsFromJson(json);
}

//from,toをgoogleMapApiがgeocodeした結果
@freezed
abstract class JsonGoogleMapSearchRoutes with _$JsonGoogleMapSearchRoutes {
  const factory JsonGoogleMapSearchRoutes([
    //コピーライト
    // ignore: non_constant_identifier_names
    @Default('') String copyrights,
    @Default([]) List<JsonGoogleMapSearchLegs> legs,
  ]) = _JsonGoogleMapSearchRoutes;

  factory JsonGoogleMapSearchRoutes.fromJson(Map<String, dynamic> json) =>
      _$JsonGoogleMapSearchRoutesFromJson(json);
}

@freezed
abstract class JsonGoogleMapSearchLegs with _$JsonGoogleMapSearchLegs {
  const factory JsonGoogleMapSearchLegs([
    // 北東側, 南西側の寄りを示す
    @Default({}) Map<String, dynamic> distance,
    @Default({}) Map<String, dynamic> duration,
    @Default('') String start_address,
    @Default({}) Map<String, double> start_location,
    @Default('') String end_address,
    @Default({}) Map<String, double> end_location,
    @Default([]) List<JsonGoogleMapSearchStep> steps,
  ]) = _JsonGoogleMapSearchLegs;

  factory JsonGoogleMapSearchLegs.fromJson(Map<String, dynamic> json) =>
      _$JsonGoogleMapSearchLegsFromJson(json);
}

@freezed
abstract class JsonGoogleMapSearchStep with _$JsonGoogleMapSearchStep {
  const factory JsonGoogleMapSearchStep([
    // 北東側, 南西側の寄りを示す
    @Default({}) Map<String, dynamic> distance,
    @Default({}) Map<String, dynamic> duration,
    @Default({}) Map<String, double> start_location,
    @Default({}) Map<String, double> end_location,
    @Default('') String html_instructions,
    @Default('') String travel_mode,
  ]) = _JsonGoogleMapSearchStep;

  factory JsonGoogleMapSearchStep.fromJson(Map<String, dynamic> json) =>
      _$JsonGoogleMapSearchStepFromJson(json);
}
