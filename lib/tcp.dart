import 'dart:convert';
import 'dart:io';

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
