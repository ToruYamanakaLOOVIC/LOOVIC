// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JsonRoute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JsonRoute _$_$_JsonRouteFromJson(Map<String, dynamic> json) {
  return _$_JsonRoute(
    (json['potisons'] as List<dynamic>?)
            ?.map((e) => JsonLatLng.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_JsonRouteToJson(_$_JsonRoute instance) =>
    <String, dynamic>{
      'potisons': instance.potisons,
    };
