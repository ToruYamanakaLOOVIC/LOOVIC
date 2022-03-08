// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JsonApp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JsonApp _$_$_JsonAppFromJson(Map<String, dynamic> json) {
  return _$_JsonApp(
    json['pageIndex'] as int? ?? 0,
    (json['radius'] as num?)?.toDouble() ?? 10,
    json['interval'] as int? ?? 1000,
    json['sound'] as int? ?? 100,
    json['uID'] as String? ?? 'test',
    json['isNavigationAcrive'] as bool? ?? false,
    json['isDebug'] as bool? ?? true,
  );
}

Map<String, dynamic> _$_$_JsonAppToJson(_$_JsonApp instance) =>
    <String, dynamic>{
      'pageIndex': instance.pageIndex,
      'radius': instance.radius,
      'interval': instance.interval,
      'sound': instance.sound,
      'uID': instance.uID,
      'isNavigationAcrive': instance.isNavigationAcrive,
      'isDebug': instance.isDebug,
    };
