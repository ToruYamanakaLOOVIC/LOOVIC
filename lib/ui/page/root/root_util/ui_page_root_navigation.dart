import 'dart:async';

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
  int editRouteLenght = 0;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('--------build in edit');

    //各種設定
    var appProvider = ref.watch(apptNotifierProvider);
    var editRouteProvier = ref.read(editRouteListNotifierProvider);
    var editRouteNotifer = ref.read(editRouteListNotifierProvider.notifier);
    //現在位置
    var _position = useState(const JsonLatLng());
    //
    var _editRouteNotifer = ref.watch(editRouteListNotifierProvider);

    final _cmd = useState('');

    Future<void> naviSend(Position position) async {
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
      //１m以上移動している
      if (distance > 1 &&
          //緯度経度が入っている　0,0じゃない
          position.latitude != 0.0 &&
          position.longitude != 0.0 &&
          //ポイントが設定されている
          editRouteProvier.potisons.isNotEmpty) {
        if (editRouteProvier.potisons.length > 2) {
          //保温位置更新
          _position.value = JsonLatLng(
            position.latitude,
            position.longitude,
          );
          //案内ポイント index
          var indexPoint = _now.naviIndex;

          //当たり判定(目標の１ポイント)
          //まだ通っていない場合
          if (editRouteProvier.potisons[indexPoint].acrive) {
            final i = editRouteProvier.potisons
                .indexOf(editRouteProvier.potisons[indexPoint]);
            final distance = ((Geolocator.distanceBetween(
                          position.latitude,
                          position.longitude,
                          editRouteProvier.potisons[indexPoint].lat,
                          editRouteProvier.potisons[indexPoint].lng,
                        ) *
                        10)
                    .round()
                    .toDouble()) /
                10;
            final radius = appProvider.radius * 2;
            //ポイントまで設定距離を切った時の判定
            if (distance < radius) {
              editRouteNotifer.active(i, false);
              //目標を次のポイントに設定
              indexPoint++;
            }
          }
          if (indexPoint >= editRouteProvier.potisons.length - 1) {
            return;
          }
          //緯度経度を表示
          debugPrint('$position');

          //現在地
          final p0 = LatLng(position.latitude, position.longitude);
          //一つ前の案内ポイント
          final indexP1 = indexPoint == 0 ? 0 : indexPoint - 1;
          final p1 = LatLng(
            editRouteProvier.potisons[indexP1].lat,
            editRouteProvier.potisons[indexP1].lng,
          );
          //目標ポイント
          final indexP2 = indexP1 == 0 ? 1 : indexPoint;
          final p2 = LatLng(
            editRouteProvier.potisons[indexP2].lat,
            editRouteProvier.potisons[indexP2].lng,
          );
          //先のポイント目標ポイント
          final indexP3 = editRouteProvier.potisons.length - 1 > indexP2
              ? indexP2 + 1
              : editRouteProvier.potisons.length - 1;
          final p3 = LatLng(
            editRouteProvier.potisons[indexP3].lat,
            editRouteProvier.potisons[indexP3].lng,
          );

          //目標までの距離を計算(p0 -> p2)
          final distanceNextPoint = ((Geolocator.distanceBetween(
                        p0.latitude,
                        p0.longitude,
                        p2.latitude,
                        p2.longitude,
                      ) *
                      10)
                  .round()
                  .toDouble()) /
              10;
          //目標までの方位を計算(p0 -> p2)
          final degreesNextPoint = (((((Geolocator.bearingBetween(
                                    p0.latitude,
                                    p0.longitude,
                                    p2.latitude,
                                    p2.longitude,
                                  ) *
                                  10)
                              .round()
                              .toDouble()) /
                          10) +
                      720) %
                  360)
              .round()
              .toDouble();
          /*
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
                  */

          //交点に対する距離(p2 -> p3 の線分に対するp0の交点)
          final l1CrossPoint = pLCrossPoint(
            a: p2,
            b: p3,
            p: p0,
          );
          //交点に対する距離(p2 -> p3 の線分に対するp0の交点)
          final distanceL1CrossPoint = ((Geolocator.distanceBetween(
                        p0.latitude,
                        p0.longitude,
                        l1CrossPoint.latitude,
                        l1CrossPoint.longitude,
                      ) *
                      10)
                  .round()
                  .toDouble()) /
              10;
          //交点に対する方位(p2 -> p3 の線分に対するp0の交点)
          final degreesL1CrossPoint = (((((Geolocator.bearingBetween(
                                    p0.latitude,
                                    p0.longitude,
                                    l1CrossPoint.latitude,
                                    l1CrossPoint.longitude,
                                  ) *
                                  10)
                              .round()
                              .toDouble()) /
                          10) +
                      720) %
                  360)
              .round()
              .toDouble();

          //曲がり角の角度(p2 -> p3 の線分L1の角度)
          var angleL1 = 0.0;
          if (p1 == p2 && p2 == p3) {
            angleL1 = 0;
          } else if (p2 == p3) {
            angleL1 = 0;
          } else if (p1 == p2) {
            var a = 0;
            angleL1 = lineAngle(
              p1: LatLng(
                editRouteProvier.potisons[0].lat,
                editRouteProvier.potisons[0].lng,
              ),
              p2: LatLng(
                editRouteProvier.potisons[1].lat,
                editRouteProvier.potisons[1].lng,
              ),
              p3: LatLng(
                editRouteProvier.potisons[2].lat,
                editRouteProvier.potisons[2].lng,
              ),
            );
          } else {
            angleL1 = lineAngle(
              p1: p1,
              p2: p2,
              p3: p3,
            );
          }

          //L2の方位(p1 -> p2)
          final l2degrees = (((((Geolocator.bearingBetween(
                                    p1.latitude,
                                    p1.longitude,
                                    p2.latitude,
                                    p2.longitude,
                                  ) *
                                  10)
                              .round()
                              .toDouble()) /
                          10) +
                      720) %
                  360)
              .round()
              .toDouble();

          //交点に対する距離(p1 -> p2 の線分に対するp0の交点)
          final l2CrossPoint = pLCrossPoint(
            a: p1,
            b: p2,
            p: p0,
          );
          //交点に対する距離(p1 -> p2 の線分に対するp0の交点)
          final distanceL2CrossPoint = ((Geolocator.distanceBetween(
                        p0.latitude,
                        p0.longitude,
                        l2CrossPoint.latitude,
                        l2CrossPoint.longitude,
                      ) *
                      10)
                  .round()
                  .toDouble()) /
              10;
          //交点に対する方位(p1 -> p2 の線分に対するp0の交点)
          final degreesL2CrossPoint = (((((Geolocator.bearingBetween(
                                    p0.latitude,
                                    p0.longitude,
                                    l2CrossPoint.latitude,
                                    l2CrossPoint.longitude,
                                  ) *
                                  10)
                              .round()
                              .toDouble()) /
                          10) +
                      720) %
                  360)
              .round()
              .toDouble();

          //現在地更新
          _now = _now.copyWith(
            naviIndex: indexPoint,
            distanceNextPoint: distanceNextPoint,
            degreesNextPoint: degreesNextPoint,
            degreesL1CrossPoint: degreesL1CrossPoint,
            distanceL1CrossPoint: distanceL1CrossPoint,
            degreesL2CrossPoint: degreesL2CrossPoint,
            distanceL2CrossPoint: distanceL2CrossPoint,
            angleNextLine: angleL1,
          );
        }
      }
    }

    //ロケーションを起動
    void location() {
      if (_positionStreamSubscription == null) {
        Geolocator.getLastKnownPosition().then(
          (Position? position) async {
            await naviSend(position!);
          },
        );
        final positionStream = Geolocator.getPositionStream();

        _positionStreamSubscription = positionStream.handleError(
          //streamがerrorの時
          (error) {
            _positionStreamSubscription?.cancel();
            _positionStreamSubscription = null;
          },
        ).listen(
          // ignore: void_checks
          (Position position) async {
            await naviSend(position);
          },
        );
        _positionStreamSubscription?.pause();
      }
    }

    //一定時間でtcp送信
    void intervalTcpSend({
      required bool isActive,
      int sendDelay = 1000,
      int sound = 100,
    }) {
      //送信開始
      if (isActive) {
        debugPrint('--------通信開始');
        _positionStreamSubscription?.resume();

        _timer = Timer.periodic(
          Duration(milliseconds: sendDelay),
          (Timer t) {
            debugPrint('--------送信');
            _cmd.value = tcpComndNaviVer2(
              distanceNextPoint: _now.distanceNextPoint.toInt(),
              degreesNextPoint: _now.degreesNextPoint.toInt(),
              angleNextLine: _now.angleNextLine.toInt(),
              index: _now.naviIndex,
              indexLast: editRouteLenght,
              distanceL1CrossPoint: _now.distanceL1CrossPoint.toInt(),
              degreesL1CrossPoint: _now.degreesL1CrossPoint.toInt(),
              distanceL2CrossPoint: _now.distanceL2CrossPoint.toInt(),
              degreesL2CrossPoint: _now.degreesL2CrossPoint.toInt(),
              sound: sound,
            );
            tcpSend(
              cmd: _cmd.value,
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

    useEffect(() {
      debugPrint('useEffect like initState()');
      location();
      editRouteLenght = editRouteProvier.potisons.length;
      //送信開始
      intervalTcpSend(
        isActive: true,
        sendDelay: appProvider.interval,
        sound: appProvider.sound,
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
                        Text(
                            '現在位置${_position.value.lat} , ${_position.value.lng}° '),
                        Text('次のポイント${_now.naviIndex}番目'),
                        Text('次のポイントまで${_now.distanceNextPoint}m '),
                        Text('次のポイント方位${_now.degreesNextPoint}° '),
                        Text('曲がり角の角度${_now.angleNextLine}°'),
                        Text('L1までの距離${_now.distanceL1CrossPoint}m'),
                        Text('L1までの方位${_now.degreesL1CrossPoint}°'),
                        Text('L2までの距離${_now.distanceL2CrossPoint}m'),
                        Text('L2までの方位${_now.degreesL2CrossPoint}°'),
                        Text('コマンド${_cmd.value}'),
                      ],
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
