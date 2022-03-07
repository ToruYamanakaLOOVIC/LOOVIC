// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JsonHistory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JsonSaerchHistory _$_$_JsonSaerchHistoryFromJson(Map<String, dynamic> json) {
  return _$_JsonSaerchHistory(
    json['status'] as String? ?? '',
    (json['history'] as List<dynamic>?)
            ?.map((e) => JsonSaerchParam.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_JsonSaerchHistoryToJson(
        _$_JsonSaerchHistory instance) =>
    <String, dynamic>{
      'status': instance.status,
      'history': instance.history,
    };

_$_JsonSaerchParam _$_$_JsonSaerchParamFromJson(Map<String, dynamic> json) {
  return _$_JsonSaerchParam(
    json['date'] as String? ?? '',
    json['to'] as String? ?? '',
    json['from'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_JsonSaerchParamToJson(_$_JsonSaerchParam instance) =>
    <String, dynamic>{
      'date': instance.date,
      'to': instance.to,
      'from': instance.from,
    };

_$_JsonRootHistory _$_$_JsonRootHistoryFromJson(Map<String, dynamic> json) {
  return _$_JsonRootHistory(
    json['status'] as String? ?? '',
    (json['history'] as List<dynamic>?)
            ?.map((e) => JsonRootParam.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_JsonRootHistoryToJson(_$_JsonRootHistory instance) =>
    <String, dynamic>{
      'status': instance.status,
      'history': instance.history,
    };

_$_JsonRootParam _$_$_JsonRootParamFromJson(Map<String, dynamic> json) {
  return _$_JsonRootParam(
    json['date'] as String? ?? '',
    json['id'] as int? ?? 0,
  );
}

Map<String, dynamic> _$_$_JsonRootParamToJson(_$_JsonRootParam instance) =>
    <String, dynamic>{
      'date': instance.date,
      'id': instance.id,
    };

_$_JsonPointsHistory _$_$_JsonPointsHistoryFromJson(Map<String, dynamic> json) {
  return _$_JsonPointsHistory(
    json['status'] as String? ?? '',
    (json['points'] as List<dynamic>?)
            ?.map((e) => JsonLatLngUpload.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_JsonPointsHistoryToJson(
        _$_JsonPointsHistory instance) =>
    <String, dynamic>{
      'status': instance.status,
      'points': instance.points,
    };
