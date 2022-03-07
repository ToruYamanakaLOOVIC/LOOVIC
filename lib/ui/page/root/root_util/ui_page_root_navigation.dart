import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:loovic/module/json/JsonNavigationParams.dart';
import 'package:loovic/providers/app_provider.dart';
import 'package:loovic/providers/latlng_list_state_notifer_provider.dart';
import 'package:loovic/repotitory/http_repository.dart';
import 'package:loovic/ui/page/root/root_util/ui_page_root_util_map.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:loovic/module/json/JsonLatLng.dart';
import 'package:loovic/tcp.dart';
import 'package:geolocator/geolocator.dart';

@immutable
// ignore: must_be_immutable
class UiPageRootNavigation extends HookConsumerWidget {
  UiPageRootNavigation({
    Key? key,
  }) : super(key: key);

  //定期送信タイマー
  Timer? _timer;

  StreamSubscription<Position>? _positionStreamSubscription;
  //現在情報
  JsonNavigationParams _now = const JsonNavigationParams();
  //

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('--------build in edit');

    //各種設定
    var appProvider = ref.watch(apptNotifierProvider);

    //現在位置
    var _position = useState(const JsonLatLng());
    //
    var _editRouteNotifer = ref.watch(editRouteListNotifierProvider);

    //ロケーションを起動
    void location() {
      if (_positionStreamSubscription == null) {
        final positionStream = Geolocator.getPositionStream();

        _positionStreamSubscription = positionStream.handleError(
          //streamがerrorの時
          (error) {
            _positionStreamSubscription?.cancel();
            _positionStreamSubscription = null;
          },
        ).listen(
          // ignore: void_checks
          (position) async {
            //緯度経度が入っている　0,0じゃない
            if (position.latitude != 0.0 && position.longitude != 0.0) {
              //前回との距離
              final distance = ((Geolocator.distanceBetween(
                            position.latitude,
                            position.longitude,
                            _position.value.lat,
                            _position.value.lng,
                          ) *
                          10)
                      .round()
                      .toDouble()) /
                  10;

              if (distance > 1) {
                var editRouteProvier = ref.read(editRouteListNotifierProvider);
                var editRouteNotifer =
                    ref.read(editRouteListNotifierProvider.notifier);

                //緯度経度を表示
                debugPrint('$position');
                //
                _position.value = JsonLatLng(
                  position.latitude,
                  position.longitude,
                );
                //位置の保存
                final notifier =
                    ref.read(routeLogsListNotifierProvider.notifier);
                await notifier.add(_position.value);

                if (editRouteProvier.potisons.isNotEmpty) {
                  var index = _now.naviIndex;

                  //当たり判定
                  for (var point in editRouteProvier.potisons) {
                    //まだ通っていない場合
                    if (point.acrive) {
                      final i = editRouteProvier.potisons.indexOf(point);
                      final distance = ((Geolocator.distanceBetween(
                                    position.latitude,
                                    position.longitude,
                                    point.lat,
                                    point.lng,
                                  ) *
                                  10)
                              .round()
                              .toDouble()) /
                          10;
                      final radius = appProvider.radius * 2;
                      //ポイントまで設定距離を切った時の判定
                      if (distance < radius) {
                        editRouteNotifer.active(i, false);
                      }
                    }
                  }
                  //次のナビゲーション位置を更新
                  for (int i = editRouteProvier.potisons.length - 1;
                      i >= 0;
                      i--) {
                    //
                    if (!editRouteProvier.potisons[i].acrive) {
                      index = i + 1;
                      //目標を次のポイントに設定
                      _now = _now.copyWith(naviIndex: index);
                      break;
                    }
                  }
                  //判定が出た場所の以下のポイントは通過済みに変更
                  for (int i = 0; i < _now.naviIndex; i++) {
                    editRouteNotifer.active(i, false);
                  }
                  //目標までの距離を計算
                  final di = ((Geolocator.distanceBetween(
                                position.latitude,
                                position.longitude,
                                editRouteProvier.potisons[index].lat,
                                editRouteProvier.potisons[index].lng,
                              ) *
                              10)
                          .round()
                          .toDouble()) /
                      10;
                  //目標までの方位を計算
                  final de = (((((Geolocator.bearingBetween(
                                            position.latitude,
                                            position.longitude,
                                            editRouteProvier
                                                .potisons[index].lat,
                                            editRouteProvier
                                                .potisons[index].lng,
                                          ) *
                                          10)
                                      .round()
                                      .toDouble()) /
                                  10) +
                              720) %
                          360)
                      .round()
                      .toDouble();

                  //曲がり角の角度
                  var angle = 0.0;
                  if (editRouteProvier.potisons.length >= index + 2) {
                    final ba = LatLng(
                      editRouteProvier.potisons[index].lat -
                          editRouteProvier.potisons[index - 1].lat,
                      editRouteProvier.potisons[index].lng -
                          editRouteProvier.potisons[index - 1].lng,
                    );
                    final bc = LatLng(
                      editRouteProvier.potisons[index].lat -
                          editRouteProvier.potisons[index + 1].lat,
                      editRouteProvier.potisons[index].lng -
                          editRouteProvier.potisons[index + 1].lng,
                    );
                    final babc = (ba.latitude * bc.latitude) +
                        (ba.longitude * bc.longitude);
                    final ban = (ba.latitude * ba.latitude) +
                        (ba.longitude * ba.longitude);
                    final bcn = (bc.latitude * bc.latitude) +
                        (bc.longitude * bc.longitude);
                    final radian = acos(babc / sqrt((ban * bcn)));
                    angle = radian * 180 / pi;

                    //外積
                    final ab = (ba.latitude * bc.longitude) -
                        (ba.longitude * bc.latitude);

                    if (ab > 0) {
                      angle = 360 + (angle - 180);
                    } else {
                      angle = 180 - angle;
                    }
                  }

                  //現在地更新
                  _now = _now.copyWith(
                    distance: di,
                    degrees: de,
                    degreesNext: angle,
                  );
                }
              }
            }
          },
        );
        _positionStreamSubscription?.pause();
      }
    }

    useEffect(() {
      debugPrint('useEffect like initState()');
      location();
      //送信開始
      intervalTcpSend(
        isActive: true,
        sendDelay: appProvider.interval,
      );
      return () {
        //送信停止
        intervalTcpSend(isActive: false);
        var editRouteNotifer =
            ref.watch(editRouteListNotifierProvider.notifier);
        editRouteNotifer.reset();
        _now = _now.copyWith(naviIndex: 0);
        //位置情報ログを送信
        final provider = ref.watch(routeLogsListNotifierProvider);
        if (provider.potisons.length > 1) {
          var appProvider = ref.watch(apptNotifierProvider);
          httpRepositoryMovementUpdate(
              uid: appProvider.uID, list: provider.potisons);
        }
        debugPrint('dispose!');
      };
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ナビゲーション',
        ),
        automaticallyImplyLeading: true,
      ),
      body: Stack(
        children: [
          //google map
          UiPageRootUtilMap(
            polyLines: _editRouteNotifer.potisons,
            makers: _editRouteNotifer.potisons,
            circls: _editRouteNotifer.potisons,
            edit: false,
          ),
          //
          appProvider.isDebug
              ? Container(
                  color: const Color.fromARGB(0x55, 0xff, 0xff, 0xff),
                  child: FittedBox(
                    child: Column(
                      children: [
                        Text('次のポイントまで${_now.distance}m '),
                        Text('方角${_now.degrees}° '),
                        Text('曲がり角の角度${_now.degreesNext}°'),
                        Text(
                            '現在位置${_position.value.lat} , ${_position.value.lng}° '),
                        Text('次のポイント${_now.naviIndex}番目'),
                      ],
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }

  //一定時間でtcp送信
  void intervalTcpSend({
    required bool isActive,
    int sendDelay = 1000,
  }) {
    //送信開始
    if (isActive) {
      debugPrint('--------通信開始');
      _positionStreamSubscription?.resume();

      _timer = Timer.periodic(
        Duration(milliseconds: sendDelay),
        (Timer t) {
          debugPrint('--------送信');

          //tcp 送信
          tcpSend(
            cmd: tcpComndNaviNew(
              distance: _now.distance.toInt(),
              direction: _now.degrees.toInt(),
              turn: _now.degreesNext.toInt(),
            ),
          );
        },
      );
    }
    //送信終了
    else {
      if (_timer != null) {
        debugPrint('--------通信停止');
        _timer?.cancel();
        _positionStreamSubscription?.pause();
      }
    }
  }
}
