import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loovic/providers/app_provider.dart';
import 'dart:async';
import 'dart:math';
import 'package:loovic/tcp.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

@immutable
class UiPageRootJoyStick extends HookConsumerWidget {
  const UiPageRootJoyStick({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('--------build in edit');
    //各種設定
    var appProvider = ref.watch(apptNotifierProvider);
    useEffect(() {
      debugPrint('useEffect like initState()');
      return () {
        debugPrint('dispose!');
      };
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Joystick'),
        actions: <Widget>[
          //Bdluetooth
          IconButton(
            icon: const Icon(Icons.library_add_check),
            tooltip: 'Joystick',
            onPressed: () {
              tcpSend(
                cmd: 'O',
                onListen: (String value) {
                  showAboutDialog(
                    context: context,
                    applicationIcon: const Icon(Icons.settings_bluetooth),
                    applicationName: 'バージョン',
                    applicationVersion: value,
                    applicationLegalese: 'Loovic',
                  );
                },
                onError: (String error) {
                  showAboutDialog(
                    context: context,
                    applicationIcon: const Icon(Icons.error_outline),
                    applicationName: 'error',
                    applicationVersion: error,
                    applicationLegalese: 'Loovic',
                  );
                },
              );
            },
          ),
        ],
      ),
      //
      body: Center(
        child: TouchControl(
          interval: appProvider.interval,
          onChanged: (CallbackParams offset) {
//              print('x ${offset.degrees}');
          },
        ),
      ),
    );
  }
}

class TouchControl extends StatefulWidget {
  final double xPos;
  final double yPos;
  final int interval;
  final ValueChanged<CallbackParams> onChanged;

  const TouchControl({
    Key? key,
    required this.onChanged,
    this.xPos = 0.0,
    this.yPos = 0.0,
    this.interval = 1000,
  }) : super(key: key);

  @override
  TouchControlState createState() => TouchControlState();
}

class TouchControlState extends State<TouchControl> {
  final double _joysticSize = 300;

  bool _isSend = false;

  double xPos = 0;
  double yPos = 0;
  int _direction = 0;
  double _degrees = 0;

  int _nowPoint = 0;
  int _goalPoint = 1;

  double _distance = 0;
  double _trun = 0;
  double _sound = 0;
  double _l1r = 0;
  double _l1d = 0;
  double _l2r = 0;
  double _l2d = 0;
  final List<String> _directionText = [
    'North',
    '	North-northeast',
    'Northeast',
    'East-northeast',
    'East	',
    'East-southeast',
    'Southeast',
    'South-southeast',
    'South',
    'South-southwest',
    'Southwest',
    'West-southwest',
    'West',
    'West-northwest',
    'Northwest',
    'North-northwest	',
  ];

  late Timer? timer;
  bool timerInitialized = false;
  String _cmd = '';
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    if (timerInitialized) {
      timer?.cancel();
    }
    super.dispose();
  }

  void onChanged(Offset offset) {
    setState(() {
      //中右心座標
      final xPosBase = _joysticSize / 2;
      final yPosBase = _joysticSize / 2;
      //２点間の距離
      var distance = sqrt((xPosBase - offset.dx) * (xPosBase - offset.dx) +
          (yPosBase - offset.dy) * (yPosBase - offset.dy));
      distance = distance > _joysticSize / 2 ? _joysticSize / 2 : distance;
      //２点間の角度
      final radian = atan2(xPosBase - offset.dx, yPosBase - offset.dy);
      final degrees = (180 / pi * radian - 360).abs() % 360;
      _degrees = degrees;
      //外周の座標
      final x = sin(radian) * distance * -1;
      final y = cos(radian) * distance * -1;
      //方位

      _direction = (((degrees + 22.5 / 2) % 360) ~/ 22.5) % 16;
      //距離
      //_distance = ((distance / (_joysticSize / 2)) * 100);
      xPos = x;
      yPos = y;

      debugPrint('$distance');
      widget.onChanged(
        CallbackParams()
          ..offset = Offset(x, y)
          ..distance = distance
          ..degrees = degrees,
      );
    });
  }

  @override
  // ignore: override_on_non_overriding_member
  bool hitTestSelf(Offset position) => true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Divider(height: 10),
          SizedBox(
            height: 30,
            child: Text(
              _directionText[_direction],
              style: const TextStyle(
                fontSize: 24,
                fontFamily: 'NotoSerif',
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          const Divider(height: 10),
          const Divider(height: 10),
          GestureDetector(
            onPanUpdate: (DragUpdateDetails details) {
              onChanged(details.localPosition);
            },
            onPanStart: (DragStartDetails details) {
              onChanged(details.localPosition);
            },
            onPanEnd: (DragEndDetails details) {
              //onChanged(Offset(_joysticSize / 2, _joysticSize / 2));
            },
            behavior: HitTestBehavior.deferToChild,
            child: CustomPaint(
              size: Size(_joysticSize, _joysticSize),
              painter: TouchControlPainter(xPos, yPos),
            ),
          ),
          Row(
            children: [
              const Text('次のポイントまでの距離'),
              Expanded(
                child: Slider(
                  value: _distance,
                  min: 0,
                  max: 100,
                  divisions: 100,
                  label: _distance.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _distance = value;
                    });
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Text('次のポイントの曲がり角'),
              Expanded(
                child: Slider(
                  value: _trun,
                  min: 0,
                  max: 359,
                  divisions: 359,
                  label: _trun.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _trun = value;
                    });
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Text('現在のポイント'),
              Expanded(
                child: Slider(
                  value: _nowPoint.toDouble(),
                  min: 0,
                  max: 5,
                  divisions: 5,
                  label: _nowPoint.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _nowPoint = value.toInt();
                    });
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Text('ゴールポイント'),
              Expanded(
                child: Slider(
                  value: _goalPoint.toDouble(),
                  min: 0,
                  max: 5,
                  divisions: 5,
                  label: _goalPoint.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _goalPoint = value.toInt();
                    });
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Text('音量'),
              Expanded(
                child: Slider(
                  value: _sound,
                  min: 0,
                  max: 100,
                  divisions: 100,
                  label: _sound.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _sound = value;
                    });
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Text('L1までの距離'),
              Expanded(
                child: Slider(
                  value: _l1d,
                  min: 0,
                  max: 110,
                  divisions: 110,
                  label: _l1d.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _l1d = value;
                    });
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Text('L2までの距離'),
              Expanded(
                child: Slider(
                  value: _l2d,
                  min: 0,
                  max: 110,
                  divisions: 110,
                  label: _l2d.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _l2d = value;
                    });
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Text('L2までの方位'),
              Expanded(
                child: Slider(
                  value: _l2r,
                  min: 0,
                  max: 360,
                  divisions: 360,
                  label: _l2r.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _l2r = value;
                    });
                  },
                ),
              ),
            ],
          ),
          Text('cmd:$_cmd'),
          RaisedButton(
            onPressed: () async {
              setState(() {
                _isSend = !_isSend;
              });
              if (_isSend) {
                timerInitialized = true;
                timer = Timer.periodic(
                  Duration(milliseconds: widget.interval),
                  (Timer t) {
                    _cmd = tcpComndNaviVer2(
                      distanceNextPoint: _distance.toInt(),
                      degreesNextPoint: _degrees.toInt(),
                      angleNextLine: _trun.toInt(),
                      sound: _sound.toInt(),
                      index: _nowPoint.toInt(),
                      indexLast: _goalPoint,
                      distanceL1CrossPoint: _l1d.toInt(),
                      degreesL1CrossPoint: _l1r.toInt(),
                      distanceL2CrossPoint: _l2d.toInt(),
                      degreesL2CrossPoint: _l2r.toInt(),
                    );
                    //tcp 送信
                    tcpSend(
                      cmd: _cmd,
                      onListen: (String value) {},
                    );
                    setState(() {});
                  },
                );
              } else {
                timer?.cancel();
              }
            },
            color: Colors.blueAccent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Text(
              !_isSend ? '送信開始' : '送信停止',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TouchControlPainter extends CustomPainter {
  final double xPos;
  final double yPos;

  TouchControlPainter(this.xPos, this.yPos);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..style = PaintingStyle.fill;

    //円（外線）
    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      size.width / 2,
      Paint()
        ..shader = const RadialGradient(
          colors: <Color>[
            Colors.white,
            Colors.cyanAccent,
            Colors.blue,
          ],
        ).createShader(
          Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2),
            radius: size.width / 2,
          ),
        )
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.fill
        ..strokeWidth = size.width / 50,
    );
    //円（外線）

    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      size.width / 2,
      Paint()
        ..color = Colors.black
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke
        ..strokeWidth = size.width / 50,
    );
    // ポインタ
    paint.color = Colors.black;
    canvas.drawCircle(
      Offset(xPos + size.width / 2, yPos + size.height / 2),
      size.width / 10,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class CallbackParams {
  late Offset offset;
  late double degrees;
  late double distance;
}
