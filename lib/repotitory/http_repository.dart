import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
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
    await Dio(BaseOptions(
            receiveDataWhenStatusError: true,
            connectTimeout: 10 * 1000,
            receiveTimeout: 10 * 1000))
        .post(
      url,
      data: FormData.fromMap(payload),
      options: Options(
        headers: {},
      ),
    )
        .then((response) async {
      try {
        result = await googleMapPolyline.getPolylineCoordinatesWithAddress(
            origin: from, destination: to, mode: RouteMode.walking);
        await Future.delayed(const Duration(milliseconds: 500));
        Navigator.pop(context);
      } catch (e) {
        Navigator.pop(context);
        errorDialog(context);
      }
    }).catchError((err) {
      Navigator.pop(context);
      errorDialog(context);
    });

    return result!;
  }
}

//ルート検索りれき
Future<JsonSaerchHistory> httpRepositorySearchList(
  BuildContext context, {
  String uid = 'test',
}) async {
  const url = 'http://54.189.110.185/api/search_history';
  var result = const JsonSaerchHistory();

  final payload = {
    'uid': uid,
  };
  await Dio(BaseOptions(
          receiveDataWhenStatusError: true,
          connectTimeout: 10 * 1000,
          receiveTimeout: 10 * 1000))
      .post(
    url,
    data: FormData.fromMap(payload),
    options: Options(
      headers: {},
    ),
  )
      .then((response) {
    try {
      result = JsonSaerchHistory.fromJson(response.data);
    } catch (e) {
      errorDialog(context);
    }
  }).catchError((err) {
    errorDialog(context);
  });
  return result;
}

//移動済履歴
Future<JsonSaerchHistory> httpRepositoryMovementUpdate(
  BuildContext context, {
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
    try {
      result = JsonSaerchHistory.fromJson(response.data);
    } catch (e) {
      errorDialog(context);
    }
  }).catchError((err) {
    errorDialog(context);
  });

  return result;
}

//移動済履歴
Future<JsonRootHistory> httpRepositoryMovementHistory(
  BuildContext context, {
  String uid = 'test',
}) async {
  const url = 'http://54.189.110.185/api/movement_history';
  var result = const JsonRootHistory();

  final payload = {
    'uid': uid,
  };
  await Dio(BaseOptions(
          receiveDataWhenStatusError: true,
          connectTimeout: 10 * 1000,
          receiveTimeout: 10 * 1000))
      .post(
    url,
    data: FormData.fromMap(payload),
    options: Options(
      headers: {},
    ),
  )
      .then((response) {
    try {
      result = JsonRootHistory.fromJson(response.data);
    } catch (e) {
      errorDialog(context);
    }
  }).catchError((err) {
    errorDialog(context);
  });
  return result;
}

//移動済座標
Future<List<JsonLatLng>> httpRepositoryMovementPoints(
  BuildContext context, {
  String uid = 'test',
  int id = 0,
}) async {
  const url = 'http://54.189.110.185/api/movement_points';
  List<JsonLatLng> result = [];

  final payload = {
    'uid': uid,
    'id': id,
  };
  await Dio(BaseOptions(
          receiveDataWhenStatusError: true,
          connectTimeout: 10 * 1000,
          receiveTimeout: 10 * 1000))
      .post(
    url,
    data: FormData.fromMap(payload),
    options: Options(
      headers: {},
    ),
  )
      .then((response) {
    try {
      final jsonMap = jsonDecode(response.data['points']['points']);
      for (var p in jsonMap) {
        final lat = double.parse(p['lat']);
        final lng = double.parse(p['lng']);

        result.add(JsonLatLng(
          lat,
          lng,
        ));
      }
    } catch (e) {
      errorDialog(context);
    }
  }).catchError((err) {
    errorDialog(context);
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
  await Dio(BaseOptions(
          receiveDataWhenStatusError: true,
          connectTimeout: 10 * 1000,
          receiveTimeout: 10 * 1000))
      .post(
    url,
    data: FormData.fromMap(payload),
    options: Options(
      headers: {},
    ),
  )
      .then((response) {
    try {
      final res = response.data as Map<String, dynamic>;
      final code = res['status'];
      if (code == 'OK') {
        result = true;
      } else {
        result = false;
      }
    } catch (e) {
      result = false;
    }
  }).catchError((err) {
    result = false;
  });
  await Future.delayed(const Duration(milliseconds: 500));
  Navigator.pop(context);
  if (!result) {
    await showDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('ログイン失敗'),
          content: const Text('ログインに失敗しました。　通信できない状況でアプリを利用しますか？'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Text('いいえ'),
              isDestructiveAction: true,
              onPressed: () async {
                result = false;
                Navigator.pop(context);
              },
            ),
            CupertinoDialogAction(
              child: const Text('はい'),
              onPressed: () async {
                result = true;
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
  return result;
  // return pins!;
}

Future<void> errorDialog(BuildContext context) async {
  await showDialog(
    context: context,
    builder: (context) {
      return CupertinoAlertDialog(
        title: const Text('通信失敗'),
        content: const Text('通信に失敗しました。'),
        actions: <Widget>[
          CupertinoDialogAction(
            child: const Text('OK'),
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}
