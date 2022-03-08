import 'dart:convert';
import 'dart:io';

import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:vector_math/vector_math.dart' as vector;
import 'dart:math' as Math;

// ignore: non_constant_identifier_names
String IP = '192.168.41.1';

// ignore: non_constant_identifier_names
String TIP = '192.168.86.204';

void tcpSend({
  bool debug = false,
  bool ascii = true,
  String cmd = 'A',
  Function? onListen,
  Function? onError,
}) async {
  //接続先
  final ip = debug ? TIP : IP;
  //コマンド送信
  final sendCmd = ascii
      ? '$cmd${const AsciiCodec().decode([
              0x0a,
            ])}'
      : cmd;

  //接続
  Socket.connect(ip, 7774, timeout: const Duration(seconds: 3)).then((socket) {
    //受信
    socket.listen((event) {
      if (onListen != null) {
        onListen(const AsciiCodec().decode(event));
      }
      socket.close();
    });
    //
    socket.write(sendCmd);
  }).onError((error, stackTrace) {
    if (onError != null) {
      onError('timeout');
    }
    // ignore: argument_type_not_assignable_to_error_handler
  }).catchError(() {
    if (onError != null) {
      onError('error');
    }
  });
}

/*
String tcpComndNavi({
  int power = 0,
  int direction = 0,
  double time = 0,
}) {
  final cmd = 'D,$power,$direction,${time.toInt()}';
  return cmd;
}
*/
String tcpComndNaviNew({
  int distance = 0,
  int direction = 0,
  int turn = 0,
}) {
  //0~99
  if (distance >= 100) {
    distance = 99;
  }
  final cmd =
      'D,${direction.toString().padLeft(3, '0')},${distance.toString().padLeft(2, '0')},${turn.toString().padLeft(5, '0')}';
  print('cmd: $cmd');
  return cmd;
}

String tcpComndNaviVer2({
  int distance = 0,
  int direction = 0,
  int turn = 0,
  int index = 0,
  int indexLast = 0,
  int distanceCrossPoint = 0,
  int sound = 0,
}) {
  //0~99
  if (distance >= 100) {
    distance = 99;
  }
  final cmd =
      'D,${direction.toString().padLeft(3, '0')},${distance.toString().padLeft(2, '0')},${turn.toString().padLeft(5, '0')},${index.toString().padLeft(5, '0')},${indexLast.toString().padLeft(5, '0')},${distanceCrossPoint.toString().padLeft(5, '0')},${indexLast.toString().padLeft(5, '0')},${sound.toString().padLeft(5, '0')},${0.toString().padLeft(5, '0')},${0.toString().padLeft(5, '0')},${0.toString().padLeft(5, '0')}';
  print('cmd: $cmd');
  return cmd;
}

double pxDistance({
  required LatLng a,
  required LatLng b,
  required LatLng p,
}) {
  double distance = 0;
  final ap = vector.Vector2(
    p.latitude - a.latitude,
    p.longitude - a.longitude,
  );
  final ab = vector.Vector2(
    b.latitude - a.latitude,
    b.longitude - a.longitude,
  );
  final ba = vector.Vector2(
    a.latitude - b.latitude,
    a.longitude - b.longitude,
  );
  final bp = vector.Vector2(
    p.latitude - b.latitude,
    p.longitude - b.longitude,
  );

  if (vector.dot2(ap, ab) < 0) {
    distance = Geolocator.distanceBetween(
      p.latitude,
      p.longitude,
      a.latitude,
      a.longitude,
    );
    print('a $distance');
  } else if (vector.dot2(bp, ba) < 0) {
    distance = Geolocator.distanceBetween(
      p.latitude,
      p.longitude,
      b.latitude,
      b.longitude,
    );
    print('b $distance');
  } else {
    final len = Math.pow((ab.x * ab.x) + (ab.y * ab.y), 0.5);
    final nAB = vector.Vector2(ab.x / len, ab.y / len);
    final distAx = vector.dot2(nAB, ap);
    final x = vector.Vector2(nAB.x * distAx, nAB.y * distAx);
    final xlatlnt = LatLng(a.latitude + x.x, a.longitude + x.y);
    distance = Geolocator.distanceBetween(
      p.latitude,
      p.longitude,
      xlatlnt.latitude,
      xlatlnt.longitude,
    );
    print('x $distance');
  }
  return distance;
}
