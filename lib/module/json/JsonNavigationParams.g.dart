// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JsonNavigationParams.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JsonNavigationParams _$_$_JsonNavigationParamsFromJson(
    Map<String, dynamic> json) {
  return _$_JsonNavigationParams(
    json['naviIndex'] as int? ?? 0,
    (json['distanceNextPoint'] as num?)?.toDouble() ?? 0,
    (json['degreesNextPoint'] as num?)?.toDouble() ?? 0,
    (json['angleNextLine'] as num?)?.toDouble() ?? 0,
    (json['distanceL2CrossPoint'] as num?)?.toDouble() ?? 0,
    (json['degreesL2CrossPoint'] as num?)?.toDouble() ?? 0,
    (json['distanceL1CrossPoint'] as num?)?.toDouble() ?? 0,
    (json['degreesL1CrossPoint'] as num?)?.toDouble() ?? 0,
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
      'distanceNextPoint': instance.distanceNextPoint,
      'degreesNextPoint': instance.degreesNextPoint,
      'angleNextLine': instance.angleNextLine,
      'distanceL2CrossPoint': instance.distanceL2CrossPoint,
      'degreesL2CrossPoint': instance.degreesL2CrossPoint,
      'distanceL1CrossPoint': instance.distanceL1CrossPoint,
      'degreesL1CrossPoint': instance.degreesL1CrossPoint,
      'latlng': instance.latlng,
      'activeLatLng': instance.activeLatLng,
      'isRouteNavigation': instance.isRouteNavigation,
      'error': instance.error,
    };
