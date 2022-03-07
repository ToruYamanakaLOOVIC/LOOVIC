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

// ignore: must_be_immutable
class UiPageRootUtilMap extends HookConsumerWidget {
  UiPageRootUtilMap({
    Key? key,
    this.myPosition,
    this.edit = false,
    this.polyLines = const [],
    this.circls = const [],
    this.makers = const [],
  }) : super(key: key);

  bool edit = false;
  List<JsonLatLng> polyLines = [];
  List<JsonLatLng> circls = [];
  List<JsonLatLng> makers = [];

  Position? myPosition;
  //初期座標
  final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(35.68125793401342, 139.76705731077305),
    zoom: 10,
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('--------build in edit');

    final app = ref.watch(apptNotifierProvider);

    var _controller = useState(Completer());

    // initStateの変わりです。
    // 初めてbuildが呼ばれた１度のみ行いたい処理を書きます。
    useEffect(() {
      debugPrint('useEffect like initState()');

      //現在位置を取得する
      _determinePosition().then((Position latlng) async {
        final controller = await _controller.value.future;
        controller.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
                target: LatLng(latlng.latitude, latlng.longitude), zoom: 16),
          ),
        );
      });

      // useEffect()は、returnにfunctionを渡しておくと
      // このWidgetがdisposeされたときに実行してくれます。
      // SubscribeしているStreamを開放するなどによく使うようになるはずです。
      return () => debugPrint('dispose!');

      // []の場合、1回目にbuildが呼ばれた時のみ実行されます。
      // 厳密にいうと違いますが、なれてくるまでは一度だけ呼びたいときは[]を指定する
      // と覚えておけばよいです。
    }, []);

    if (myPosition != null) {
      _controller.value.future.then((value) {
        value.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
                target: LatLng(myPosition!.latitude, myPosition!.longitude),
                zoom: 16),
          ),
        );
      });
    }
    return GoogleMap(
      mapType: MapType.normal,
      myLocationEnabled: true,
      myLocationButtonEnabled: true,
      mapToolbarEnabled: false,
      initialCameraPosition: _kGooglePlex,
      onMapCreated: (GoogleMapController controller) {
        _controller.value.complete(controller);
      },
      /*
      //マーカー
      markers: edit
          ?
          //編集
          makers.map((position) {
              var id = MarkerId('${position.lat}:${position.lng}}');
              return Marker(
                markerId: id,
                position: LatLng(position.lat, position.lng),
                icon: BitmapDescriptor.defaultMarker,
                //infoWindow: InfoWindow(title: position.toString()),
              );
            }).toSet()
          :
          //行動履歴
          makers.map((position) {
              var id = MarkerId('${position.lat}:${position.lng}}');

              return Marker(
                  markerId: id,
                  visible:
                      (makers.first == position || makers.last == position),
                  position: LatLng(position.lat, position.lng),
                  icon: BitmapDescriptor.defaultMarker,
                  infoWindow: InfoWindow(title: position.toString()),
                  onTap: () {});
            }).toSet(),
      */
      //サークル
      circles: edit
          ?
          //編集
          circls.map((position) {
              final id = CircleId('aaa${position.lat}:${position.lng}}');
              final latlng = LatLng(position.lat, position.lng);
              return Circle(
                  circleId: id,
                  center: latlng,
                  radius: app.radius * 2,
                  strokeWidth: 1,
                  strokeColor: Colors.red,
                  fillColor: const Color.fromARGB(0x22, 0xff, 0x00, 0x00),
                  consumeTapEvents: true,
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return CupertinoAlertDialog(
                          title: const Text('ルート登録'),
                          content: const Text('この地点を削除時ます。　よろしいですか？'),
                          actions: <Widget>[
                            CupertinoDialogAction(
                              child: const Text('いいえ'),
                              isDestructiveAction: true,
                              onPressed: () async {
                                Navigator.pop(context);
                              },
                            ),
                            CupertinoDialogAction(
                              child: const Text('削除'),
                              onPressed: () async {
                                // マーカー追加して保存
                                final notifier = ref.read(
                                    editRouteListNotifierProvider.notifier);
                                await notifier.remove(
                                    JsonLatLng(position.lat, position.lng));
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        );
                      },
                    );
                  });
            }).toSet()
          :
          //行動履歴
          circls.map((position) {
              final id = CircleId('aaa${position.lat}:${position.lng}}');
              final latlng = LatLng(position.lat, position.lng);
              return Circle(
                circleId: id,
                center: latlng,
                radius: app.radius * 2,
                strokeWidth: 2,
                strokeColor: position.acrive ? Colors.blue : Colors.grey,
                fillColor: position.acrive
                    ? const Color.fromARGB(0x22, 0x00, 0x00, 0xff)
                    : const Color.fromARGB(0x22, 0x00, 0x00, 0x00),
                consumeTapEvents: true,
                onTap: () {},
              );
            }).toSet(),
      //ポリライン
      polylines: edit
          ?
          //編集
          polyLines.map((position) {
              var id = PolylineId('${position.lat}:${position.lng}}');
              var points = [
                LatLng(position.lat, position.lng),
              ];
              //
              final index = polyLines.indexOf(position);
              //
              if (index != -1 && index + 1 < polyLines.length) {
                points.add(
                  LatLng(polyLines[index + 1].lat, polyLines[index + 1].lng),
                );
              }

              return Polyline(
                polylineId: id,
                visible: points.length == 2,
                points: points,
                width: 5,
                color: Colors.red,
              );
            }).toSet()
          :
          //行動履歴
          polyLines.map((position) {
              var id = PolylineId('${position.lat}:${position.lng}}');
              var points = [
                LatLng(position.lat, position.lng),
              ];
              //
              final index = polyLines.indexOf(position);
              //
              if (index != -1 && index + 1 < polyLines.length) {
                points.add(
                  LatLng(polyLines[index + 1].lat, polyLines[index + 1].lng),
                );
              }

              return Polyline(
                polylineId: id,
                visible: points.length == 2,
                points: points,
                width: 5,
                color: position.acrive ? Colors.blue : Colors.grey,
              );
            }).toSet(),

      //ロングプレス
      onLongPress: edit
          ?
          //長押し(編集モード)
          (position) async {
              showDialog(
                context: context,
                builder: (context) {
                  return CupertinoAlertDialog(
                    title: const Text('ルート登録'),
                    content: const Text('この地点を登録します。　よろしいですか？'),
                    actions: <Widget>[
                      CupertinoDialogAction(
                        child: const Text('いいえ'),
                        isDestructiveAction: true,
                        onPressed: () => Navigator.pop(context),
                      ),
                      CupertinoDialogAction(
                        child: const Text('はい'),
                        onPressed: () async {
                          final notifier =
                              ref.read(editRouteListNotifierProvider.notifier);
                          await notifier.add(JsonLatLng(
                              position.latitude, position.longitude));
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  );
                },
              );
            }
          : (position) async {},
    );
  }

  //現在位置
  Future<Position> _determinePosition() async {
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

    return latlng;
  }
}
