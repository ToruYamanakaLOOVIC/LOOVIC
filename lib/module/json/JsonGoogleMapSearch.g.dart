// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JsonGoogleMapSearch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JsonGoogleMapSearch _$_$_JsonGoogleMapSearchFromJson(
    Map<String, dynamic> json) {
  return _$_JsonGoogleMapSearch(
    json['status'] as String? ?? '',
    (json['geocoded_waypoints'] as List<dynamic>?)
            ?.map((e) => JsonGoogleMapSearchGeocodedWaypoints.fromJson(
                e as Map<String, dynamic>))
            .toList() ??
        [],
    (json['routes'] as List<dynamic>?)
            ?.map((e) =>
                JsonGoogleMapSearchRoutes.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_JsonGoogleMapSearchToJson(
        _$_JsonGoogleMapSearch instance) =>
    <String, dynamic>{
      'status': instance.status,
      'geocoded_waypoints': instance.geocoded_waypoints,
      'routes': instance.routes,
    };

_$_JsonGoogleMapSearchGeocodedWaypoints
    _$_$_JsonGoogleMapSearchGeocodedWaypointsFromJson(
        Map<String, dynamic> json) {
  return _$_JsonGoogleMapSearchGeocodedWaypoints(
    json['geocoder_status'] as String? ?? '',
    json['place_id'] as String? ?? '',
    (json['types'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
  );
}

Map<String, dynamic> _$_$_JsonGoogleMapSearchGeocodedWaypointsToJson(
        _$_JsonGoogleMapSearchGeocodedWaypoints instance) =>
    <String, dynamic>{
      'geocoder_status': instance.geocoder_status,
      'place_id': instance.place_id,
      'types': instance.types,
    };

_$_JsonGoogleMapSearchRoutes _$_$_JsonGoogleMapSearchRoutesFromJson(
    Map<String, dynamic> json) {
  return _$_JsonGoogleMapSearchRoutes(
    json['copyrights'] as String? ?? '',
    (json['legs'] as List<dynamic>?)
            ?.map((e) =>
                JsonGoogleMapSearchLegs.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_JsonGoogleMapSearchRoutesToJson(
        _$_JsonGoogleMapSearchRoutes instance) =>
    <String, dynamic>{
      'copyrights': instance.copyrights,
      'legs': instance.legs,
    };

_$_JsonGoogleMapSearchLegs _$_$_JsonGoogleMapSearchLegsFromJson(
    Map<String, dynamic> json) {
  return _$_JsonGoogleMapSearchLegs(
    json['distance'] as Map<String, dynamic>? ?? {},
    json['duration'] as Map<String, dynamic>? ?? {},
    json['start_address'] as String? ?? '',
    (json['start_location'] as Map<String, dynamic>?)?.map(
          (k, e) => MapEntry(k, (e as num).toDouble()),
        ) ??
        {},
    json['end_address'] as String? ?? '',
    (json['end_location'] as Map<String, dynamic>?)?.map(
          (k, e) => MapEntry(k, (e as num).toDouble()),
        ) ??
        {},
    (json['steps'] as List<dynamic>?)
            ?.map((e) =>
                JsonGoogleMapSearchStep.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_JsonGoogleMapSearchLegsToJson(
        _$_JsonGoogleMapSearchLegs instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'duration': instance.duration,
      'start_address': instance.start_address,
      'start_location': instance.start_location,
      'end_address': instance.end_address,
      'end_location': instance.end_location,
      'steps': instance.steps,
    };

_$_JsonGoogleMapSearchStep _$_$_JsonGoogleMapSearchStepFromJson(
    Map<String, dynamic> json) {
  return _$_JsonGoogleMapSearchStep(
    json['distance'] as Map<String, dynamic>? ?? {},
    json['duration'] as Map<String, dynamic>? ?? {},
    (json['start_location'] as Map<String, dynamic>?)?.map(
          (k, e) => MapEntry(k, (e as num).toDouble()),
        ) ??
        {},
    (json['end_location'] as Map<String, dynamic>?)?.map(
          (k, e) => MapEntry(k, (e as num).toDouble()),
        ) ??
        {},
    json['html_instructions'] as String? ?? '',
    json['travel_mode'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_JsonGoogleMapSearchStepToJson(
        _$_JsonGoogleMapSearchStep instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'duration': instance.duration,
      'start_location': instance.start_location,
      'end_location': instance.end_location,
      'html_instructions': instance.html_instructions,
      'travel_mode': instance.travel_mode,
    };
