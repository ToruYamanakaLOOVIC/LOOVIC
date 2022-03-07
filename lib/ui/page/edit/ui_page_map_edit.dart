import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loovic/module/json/JsonLatLng.dart';
import 'package:loovic/providers/app_provider.dart';
import 'package:loovic/providers/latlng_list_state_notifer_provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// 緯度経度0の架空の島で初期値等によく使われる。
const _nullIsland = LatLng(0, 0);

class UiPageMapEdit extends HookConsumerWidget {
  UiPageMapEdit({Key? key, required this.title}) : super(key: key);
  final String title;
  final Completer<GoogleMapController> _controller = Completer();
//初期座標
  final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(35.5484413272591, 139.75523307349715),
    zoom: 15,
  );

  void showLatLngDialog(BuildContext context, LatLng latlng) {
//    final context = useContext();
    showDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('ナビ終了'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Text('OK'),
              isDestructiveAction: true,
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('--------build in edit');

    // マップ上でタップしたピンのLatLngをstateとして宣言します。
    // 特に何かしているわけではなくuseState()の説明用です。
    // tappedPin.value の値が変更された時に勝手に再描画されます。
    var tappedPin = useState(_nullIsland);

    // マップ上のピン座標の配列をstateとして保持するProvider.
    // このProvider経由で座標の配列が変更されると勝手に再描画されます。
    final positions = ref.watch(editRouteListNotifierProvider);
    final app = ref.watch(apptNotifierProvider);

    // initStateの変わりです。
    // 初めてbuildが呼ばれた１度のみ行いたい処理を書きます。
    useEffect(() {
      debugPrint('useEffect like initState()');
      Future<void>(() async => await _determinePosition());

      // useEffect()は、returnにfunctionを渡しておくと
      // このWidgetがdisposeされたときに実行してくれます。
      // SubscribeしているStreamを開放するなどによく使うようになるはずです。
      return () => debugPrint('dispose!');

      // []の場合、1回目にbuildが呼ばれた時のみ実行されます。
      // 厳密にいうと違いますが、なれてくるまでは一度だけ呼びたいときは[]を指定する
      // と覚えておけばよいです。
    }, []);

    // tappedPin.valueが書き換えられた時だけ実行したい処理を書きます。
    // Reactでは「tappedPin.valueに依存しているEffect」などと言ったりします。
    useEffect(() {
      debugPrint('useEffect change currentPosition');
      final p = tappedPin.value;
      // 初期値だったら無視
      if (p.latitude == _nullIsland.latitude &&
          p.longitude == _nullIsland.longitude) {
        return;
      }

      // ピンをタップしてtappedPin.valueの値が書き換えられたらその座標を表示。
      Future<void>(() {
        showLatLngDialog(context, tappedPin.value);
      });
      // ここの引数に、依存関係を指定します。
      // tappedPin.valueの値が変わっていなければ
      // 何度再描画されようとも、このuseEffect()は実行されません。
    }, [tappedPin.value]);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Route Edit'),
      ),
      //
      body: GoogleMap(
        mapType: MapType.normal,
        myLocationEnabled: true,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        //マーカー
        markers: positions.potisons.map((position) {
          final id = MarkerId('${position.lat}:${position.lng}}');
          final latlng = LatLng(position.lat, position.lng);
          return Marker(
              markerId: id,
              position: latlng,
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: InfoWindow(title: position.toString()),
              onTap: () {
                tappedPin.value = latlng;
              });
        }).toSet(),
        //サークル
        circles: positions.potisons.map((position) {
          final id = CircleId('aaa${position.lat}:${position.lng}}');
          final latlng = LatLng(position.lat, position.lng);
          return Circle(
            circleId: id,
            center: latlng,
            radius: 25,
            strokeWidth: 1,
            strokeColor: Colors.lightBlue,
            fillColor: Colors.green,
          );
        }).toSet(),
        //ポリライン
        polylines: positions.potisons.map((position) {
          var id = PolylineId('${position.lat}:${position.lng}}');
          var points = [
            LatLng(position.lat, position.lng),
          ];
          //
          final index = positions.potisons.indexOf(position);
          //
          if (index != -1 && index + 1 < positions.potisons.length) {
            points.add(
              LatLng(positions.potisons[index + 1].lat,
                  positions.potisons[index + 1].lng),
            );
          }
          return Polyline(
              polylineId: id,
              visible: true,
              points: points,
              width: 10,
              color: Colors.green);
        }).toSet(),
        //ロングプレス
        onLongPress: (position) async {
          // マーカー追加して保存
          // ※注意
          // Providerを取得する場合、ボタンなどの非同期処理の中では
          // ref.read()で取得しなければなりません。
          //
          // ref.read(), またはref.watch()に NotifierProvider.notifierを指定すると
          // そのNotifierProviderそのものが取得でき、定義した関数などを呼べます。
          final notifier = ref.read(editRouteListNotifierProvider.notifier);
          await notifier.add(JsonLatLng(position.latitude, position.longitude));
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          // 全消し
          final notifier = ref.read(editRouteListNotifierProvider.notifier);
          await notifier.removeAll();
        },
        label: const Text('Delete All'),
        icon: const Icon(Icons.auto_delete_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  //現在位置
  Future<void> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    final latlng = await Geolocator.getCurrentPosition();
    final controller = await _controller.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
            target: LatLng(latlng.latitude, latlng.longitude), zoom: 20),
      ),
    );
  }
}
