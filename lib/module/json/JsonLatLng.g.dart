// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JsonLatLng.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JsonLatLng _$_$_JsonLatLngFromJson(Map<String, dynamic> json) {
  return _$_JsonLatLng(
    (json['lat'] as num?)?.toDouble() ?? 0,
    (json['lng'] as num?)?.toDouble() ?? 0,
    json['acrive'] as bool? ?? true,
  );
}

Map<String, dynamic> _$_$_JsonLatLngToJson(_$_JsonLatLng instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
      'acrive': instance.acrive,
    };

_$_JsonLatLngUpload _$_$_JsonLatLngUploadFromJson(Map<String, dynamic> json) {
  return _$_JsonLatLngUpload(
    json['lat'] as String? ?? '',
    json['lng'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_JsonLatLngUploadToJson(
        _$_JsonLatLngUpload instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
