// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JsonNavigationParams.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JsonNavigationParams _$_$_JsonNavigationParamsFromJson(
    Map<String, dynamic> json) {
  return _$_JsonNavigationParams(
    json['naviIndex'] as int? ?? 0,
    (json['distance'] as num?)?.toDouble() ?? 0,
    (json['degrees'] as num?)?.toDouble() ?? 0,
    (json['distanceNext'] as num?)?.toDouble() ?? 0,
    (json['degreesNext'] as num?)?.toDouble() ?? 0,
    (json['distanceCrossPoint'] as num?)?.toDouble() ?? 0,
    (json['latlng'] as List<dynamic>?)
            ?.map((e) => JsonLatLng.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    (json['activeLatLng'] as List<dynamic>?)?.map((e) => e as bool).toList() ??
        [],
    json['isRouteNavigation'] as bool? ?? false,
    json['error'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_JsonNavigationParamsToJson(
        _$_JsonNavigationParams instance) =>
    <String, dynamic>{
      'naviIndex': instance.naviIndex,
      'distance': instance.distance,
      'degrees': instance.degrees,
      'distanceNext': instance.distanceNext,
      'degreesNext': instance.degreesNext,
      'distanceCrossPoint': instance.distanceCrossPoint,
      'latlng': instance.latlng,
      'activeLatLng': instance.activeLatLng,
      'isRouteNavigation': instance.isRouteNavigation,
      'error': instance.error,
    };
