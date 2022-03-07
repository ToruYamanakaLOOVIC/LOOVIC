import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loovic/ui/page/login/ui_page_login.dart';

@immutable
class UiPageSplash extends HookConsumerWidget {
  const UiPageSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('--------build in edit');

    useEffect(() {
      debugPrint('useEffect like initState()');

      Future<void>(() async {
        LocationPermission permission = await Geolocator.checkPermission();
        if (permission == LocationPermission.denied) {
          permission = await Geolocator.requestPermission();
          if (permission == LocationPermission.denied) {
            Future.error('Location permissions are denied');
          }
        }

        if (permission == LocationPermission.deniedForever) {
          // Permissions are denied forever, handle appropriately.
          Future.error(
              'Location permissions are permanently denied, we cannot request permissions.');
        }
        Navigator.pushNamed(context, '/login');
      });

      return () => debugPrint('dispose!');
    }, []);
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/splash.png'),
              const SizedBox(
                height: 60,
              ),
              const CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
