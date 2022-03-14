import 'dart:convert';
import 'dart:io';
import 'dart:math';

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
  int distanceNextPoint = 0,
  int degreesNextPoint = 0,
  int angleNextLine = 0,
  int index = 0,
  int indexLast = 0,
  int distanceL1CrossPoint = 0,
  int degreesL1CrossPoint = 0,
  int distanceL2CrossPoint = 0,
  int degreesL2CrossPoint = 0,
  int sound = 0,
}) {
  //0~99
  if (distanceNextPoint >= 100) {
    distanceNextPoint = 99;
  }
  if (distanceL2CrossPoint > 99999) {
    distanceL2CrossPoint = 99999;
  }
  final cmd0 = degreesNextPoint.toString().padLeft(3, '0');
  final cmd1 = distanceNextPoint.toString().padLeft(2, '0');
  final cmd2 = angleNextLine.toString().padLeft(5, '0');
  final cmd3 = index.toString().padLeft(5, '0');
  final cmd4 = indexLast.toString().padLeft(5, '0');
  final cmd5 = distanceL1CrossPoint.toString().padLeft(5, '0');
  final cmd6 = sound.toString().padLeft(5, '0');
  final cmd7 = degreesL2CrossPoint.toString().padLeft(5, '0');
  final cmd8 = distanceL2CrossPoint.toString().padLeft(5, '0');
  final cmd9 = degreesNextPoint.toString().padLeft(5, '0');
  final cmdNext =
      'D,$cmd0,$cmd1,$cmd2,$cmd3,$cmd4,$cmd5,$cmd6,$cmd7,$cmd8,$cmd9,';
//  final cmd =
//      'D,${distanceNextPoint.toString().padLeft(3, '0')},${distanceNextPoint.toString().padLeft(2, '0')},${angleNextLine.toString().padLeft(5, '0')},${index.toString().padLeft(5, '0')},${indexLast.toString().padLeft(5, '0')},${distanceL2CrossPoint.toString().padLeft(5, '0')},${indexLast.toString().padLeft(5, '0')},${sound.toString().padLeft(5, '0')},${0.toString().padLeft(5, '0')},${0.toString().padLeft(5, '0')},${0.toString().padLeft(5, '0')}';
  print('cmd: $cmdNext');
  return cmdNext;
}

LatLng pLCrossPoint({
  required LatLng a,
  required LatLng b,
  required LatLng p,
}) {
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

  final datPB = vector.dot2(ap, ab);
  final datPA = vector.dot2(bp, ba);

  if (datPB <= 0) {
    return a;
  } else if (datPA <= 0) {
    return b;
  } else {
    final len = Math.pow((ab.x * ab.x) + (ab.y * ab.y), 0.5);
    final nAB = vector.Vector2(ab.x / len, ab.y / len);
    final distAx = vector.dot2(nAB, ap);
    final x = vector.Vector2(nAB.x * distAx, nAB.y * distAx);
    final xlatlnt = LatLng(a.latitude + x.x, a.longitude + x.y);
    return xlatlnt;
  }
}

double lineAngle({
  required LatLng p1,
  required LatLng p2,
  required LatLng p3,
}) {
  var angle = 0.0;
  final ba = LatLng(
    p2.latitude - p1.latitude,
    p2.longitude - p1.longitude,
  );
  final bc = LatLng(
    p2.latitude - p3.latitude,
    p2.longitude - p3.longitude,
  );
  final babc = (ba.latitude * bc.latitude) + (ba.longitude * bc.longitude);
  final ban = (ba.latitude * ba.latitude) + (ba.longitude * ba.longitude);
  final bcn = (bc.latitude * bc.latitude) + (bc.longitude * bc.longitude);
  final radian = acos(babc / sqrt((ban * bcn)));
  angle = radian * 180 / pi;

  //外積
  final ab = (ba.latitude * bc.longitude) - (ba.longitude * bc.latitude);

  if (radian.isNaN) {
    angle = 0;
  } else {
    if (ab > 0) {
      angle = 360 + (angle - 180);
    } else {
      angle = 180 - angle;
    }
  }
  return angle;
}
