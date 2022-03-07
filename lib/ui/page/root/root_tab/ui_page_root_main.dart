import 'package:flutter/material.dart';
import 'package:loovic/providers/latlng_list_state_notifer_provider.dart';
import 'package:loovic/ui/page/root/root_util/ui_page_root_util_map.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// ignore: must_be_immutable
class UiPageRootMain extends HookConsumerWidget {
  const UiPageRootMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('--------build in edit');

    //各種設定
    var _editRouteNotifer = ref.watch(editRouteListNotifierProvider);

    useEffect(() {
      debugPrint('useEffect like initState()');

      return () {
        debugPrint('dispose!');
      };
    }, []);

    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'ナビゲーション',
          ),
          automaticallyImplyLeading: false,
          actions: <Widget>[
            //編集
            IconButton(
              icon: const Icon(Icons.edit_location_alt),
              onPressed: () async {
                Navigator.pushNamed(context, '/login/root/edit');
              },
            ),
            //設定
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () async {
                Navigator.pushNamed(context, '/login/root/setting');
              },
            ),
          ],
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
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.pushNamed(context, '/login/root/navi');
          },
          backgroundColor: Colors.blue,
          label: const Text('Start'),
          icon: const Icon(Icons.navigation_sharp),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
