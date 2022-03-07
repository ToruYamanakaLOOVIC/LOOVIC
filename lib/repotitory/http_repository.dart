import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:loovic/module/json/JsonHistory.dart';
import 'package:loovic/module/json/JsonLatLng.dart';
import 'package:google_map_polyline_new/google_map_polyline_new.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:convert';

//ルート検索
Future<List<LatLng>> httpRepositorySearch(
  BuildContext context, {
  String uid = 'test',
  String from = '東京都北区赤羽北2-11-11',
  String to = '北赤羽駅',
}) async {
  List<LatLng>? result = const [];
  if (from.isEmpty || from.isEmpty) {
    return result;
  } else {
    showDialog(
      context: context,
      builder: (context) {
        return const SimpleDialog(
          title: Text('検索中'),
          children: <Widget>[
            // コンテンツ領域
            SimpleDialogOption(
              child: Center(child: CircularProgressIndicator()),
            ),
          ],
        );
      },
    );

    const url = 'http://54.189.110.185/api/search_route';

    GoogleMapPolyline googleMapPolyline =
        GoogleMapPolyline(apiKey: 'AIzaSyAcJ9cPVuxmDyeEymyMHFQ22QW1bBhxZ8M');
    final payload = {
      'uid': uid,
      'from': from,
      'to': to,
    };
    await Dio()
        .post(
          url,
          data: FormData.fromMap(payload),
          options: Options(
            headers: {},
          ),
        )
        .then((response) {})
        .catchError((err) {
//   print(err);
//    return null;
    });

    result = await googleMapPolyline.getPolylineCoordinatesWithAddress(
        origin: from, destination: to, mode: RouteMode.walking);
    await Future.delayed(const Duration(milliseconds: 500));
    Navigator.pop(context);

    return result!;
  }
}

//ルート検索りれき
Future<JsonSaerchHistory> httpRepositorySearchList({
  String uid = 'test',
}) async {
  const url = 'http://54.189.110.185/api/search_history';
  var result = const JsonSaerchHistory();

  final payload = {
    'uid': uid,
  };
  await Dio()
      .post(
    url,
    data: FormData.fromMap(payload),
    options: Options(
      headers: {},
    ),
  )
      .then((response) {
    result = JsonSaerchHistory.fromJson(response.data);
  }).catchError((err) {
//   print(err);
//    return null;
  });
  return result;
}

//移動済履歴
Future<JsonSaerchHistory> httpRepositoryMovementUpdate({
  String uid = 'test',
  List<JsonLatLng> list = const [],
}) async {
  const url = 'http://54.189.110.185/api/movement_create';
  var result = const JsonSaerchHistory();

  ///
  List<JsonLatLngUpload> uploadList = [];
  for (var p in list) {
    uploadList.add(const JsonLatLngUpload()
        .copyWith(lat: p.lat.toString(), lng: p.lng.toString()));
  }
  final json = jsonEncode(uploadList);

  final payload = {
    'uid': uid,
    'points': json,
  };
  await Dio()
      .post(
    url,
    data: FormData.fromMap(payload),
    options: Options(
      headers: {},
    ),
  )
      .then((response) {
    result = JsonSaerchHistory.fromJson(response.data);
  }).catchError((err) {
    print(err);
//    return null;
  });

  return result;
}

//移動済履歴
Future<JsonRootHistory> httpRepositoryMovementHistory({
  String uid = 'test',
}) async {
  const url = 'http://54.189.110.185/api/movement_history';
  var result = const JsonRootHistory();

  final payload = {
    'uid': uid,
  };
  await Dio()
      .post(
    url,
    data: FormData.fromMap(payload),
    options: Options(
      headers: {},
    ),
  )
      .then((response) {
    result = JsonRootHistory.fromJson(response.data);
  }).catchError((err) {
//   print(err);
//    return null;
  });
  return result;
}

//移動済座標
Future<List<JsonLatLng>> httpRepositoryMovementPoints({
  String uid = 'test',
  int id = 0,
}) async {
  const url = 'http://54.189.110.185/api/movement_points';
  List<JsonLatLng> result = [];

  final payload = {
    'uid': uid,
    'id': id,
  };
  await Dio()
      .post(
    url,
    data: FormData.fromMap(payload),
    options: Options(
      headers: {},
    ),
  )
      .then((response) {
    final jsonMap = jsonDecode(response.data['points']['points']);
    for (var p in jsonMap) {
      final lat = double.parse(p['lat']);
      final lng = double.parse(p['lng']);

      result.add(JsonLatLng(
        lat,
        lng,
      ));
    }
  }).catchError((err) {
//   print(err);
//    return null;
  });
  return result;
}

//ログイン
Future<bool> httpRepositoryLogin(
  BuildContext context, {
  String uid = 'test',
}) async {
  showDialog(
    context: context,
    builder: (context) {
      return const SimpleDialog(
        title: Text('接続中'),
        children: <Widget>[
          // コンテンツ領域
          SimpleDialogOption(
            child: Center(child: CircularProgressIndicator()),
          ),
        ],
      );
    },
  );

  const url = 'http://54.189.110.185/api/user_auth';

  final payload = {
    'uid': uid,
  };
  var result = false;
  await Dio()
      .post(
    url,
    data: FormData.fromMap(payload),
    options: Options(
      headers: {},
    ),
  )
      .then((response) {
    final res = response.data as Map<String, dynamic>;
    final code = res['status'];
    if (code == 'OK') {
      result = true;
    } else {
      result = false;
    }
  }).catchError((err) {
    result = false;
  });
  await Future.delayed(const Duration(milliseconds: 500));
  Navigator.pop(context);
  return result;
  // return pins!;
}
