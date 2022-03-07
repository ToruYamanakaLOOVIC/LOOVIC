import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_geocoding/google_geocoding.dart';
import 'package:loovic/module/json/JsonGoogleMapSearch.dart';
import 'package:loovic/module/json/JsonHistory.dart';
import 'package:loovic/module/json/JsonLatLng.dart';
import 'package:loovic/providers/app_provider.dart';
import 'package:loovic/providers/latlng_list_state_notifer_provider.dart';
import 'package:loovic/repotitory/http_repository.dart';
import 'package:loovic/ui/page/root/root_tab/edit/ui_page_root_edit_root_history.dart';
import 'package:loovic/ui/page/root/root_tab/edit/ui_page_root_edit_search_history.dart';
import 'package:loovic/ui/page/root/root_util/ui_page_root_util_map.dart';
import 'package:google_map_polyline_new/google_map_polyline_new.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dart:convert';

import 'package:flutter_hooks/flutter_hooks.dart';

// ignore: must_be_immutable
class UiPageRootEdit extends HookConsumerWidget {
  UiPageRootEdit({Key? key}) : super(key: key);

  final dio = Dio();

  GoogleMapPolyline googleMapPolyline =
      GoogleMapPolyline(apiKey: 'AIzaSyAcJ9cPVuxmDyeEymyMHFQ22QW1bBhxZ8M');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('--------build in edit');
    //各種設定
    final appProvider = ref.watch(apptNotifierProvider);

    final _editRouteProvider = ref.watch(editRouteListNotifierProvider);
    final _editRouteNotifer = ref.watch(editRouteListNotifierProvider.notifier);
    final _routeLogsNotifer = ref.watch(routeLogsListNotifierProvider.notifier);

    final _startTextController =
        useState(TextEditingController()..text = '東京駅');
    final _finishTextController =
        useState(TextEditingController()..text = '日本橋');

    return Scaffold(
      appBar: AppBar(
        title: const Text('ルート設定'),
        automaticallyImplyLeading: true,
        actions: <Widget>[
          //削除
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () async {
              final spots = ref.watch(editRouteListNotifierProvider.notifier);
              spots.removeAll();
            },
          ),
          //履歴
          IconButton(
            icon: const Icon(Icons.pin_drop),
            onPressed: () async {
              //編集画面へ
              final result = await Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return const UiPageRootEditRootHistory();
                  },
                ),
              ) as JsonRootParam;
              if (result.id != 0) {
                final route = await httpRepositoryMovementPoints(
                    uid: appProvider.uID, id: result.id);

                _editRouteNotifer.state =
                    _editRouteNotifer.state.copyWith(potisons: route);
                _editRouteNotifer.save();
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) {
                  return AlertDialog(
                    insetPadding: const EdgeInsets.all(4),
                    title: const Text('ルート検索'),
                    content: SizedBox(
                      width: 400,
                      height: 300,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              title: TextFormField(
                                controller: _startTextController.value,
                                decoration: const InputDecoration(
                                  labelText: '開始住所',
                                  fillColor: Colors.grey,
                                ),
                              ),
                              trailing: IconButton(
                                icon: const Icon(Icons.my_location_outlined),
                                onPressed: () async {
                                  final position =
                                      await Geolocator.getCurrentPosition();
                                  final googleGeocoding = GoogleGeocoding(
                                      'AIzaSyAcJ9cPVuxmDyeEymyMHFQ22QW1bBhxZ8M');
                                  final risult = await googleGeocoding.geocoding
                                      .getReverse(LatLon(position.latitude,
                                          position.longitude));
                                  final address =
                                      risult?.results!.first.formattedAddress;
                                  _startTextController.value.text = address!;
                                },
                              ),
                            ),
                            const Center(
                              child: SizedBox(
                                height: 80,
                                child: Icon(Icons.arrow_downward),
                              ),
                            ),
                            ListTile(
                              title: TextFormField(
                                controller: _finishTextController.value,
                                decoration: const InputDecoration(
                                  labelText: '終了住所',
                                ),
                              ),
                              trailing: IconButton(
                                icon: const Icon(Icons.my_location_outlined),
                                onPressed: () async {
                                  final position =
                                      await Geolocator.getCurrentPosition();
                                  final googleGeocoding = GoogleGeocoding(
                                      'AIzaSyAcJ9cPVuxmDyeEymyMHFQ22QW1bBhxZ8M');
                                  final risult = await googleGeocoding.geocoding
                                      .getReverse(LatLon(position.latitude,
                                          position.longitude));
                                  final address =
                                      risult?.results!.first.formattedAddress;
                                  _finishTextController.value.text = address!;
                                },
                              ),
                            ),
                            const Center(
                              child: SizedBox(
                                height: 40,
                              ),
                            ),
                            const Text(
                              '*設定されているルートは削除されます。',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    actions: <Widget>[
                      // ボタン領域
                      TextButton(
                        child: const Text('履歴'),
                        onPressed: () async {
                          //編集画面へ
                          final result = await Navigator.push(context,
                              MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return const UiPageRootEditSearchHistory();
                            },
                          )) as JsonSaerchParam;
                          _startTextController.value.text = result.from;
                          _finishTextController.value.text = result.to;
                        },
                      ),
                      TextButton(
                        child: const Text('キャンセル'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      TextButton(
                        child: const Text('ルート検索'),
                        onPressed: () async {
                          Navigator.pop(context);
                          // 全消し
                          final notifier =
                              ref.read(editRouteListNotifierProvider.notifier);
                          await notifier.removeAll();

                          final step = await httpRepositorySearch(
                            context,
                            uid: appProvider.uID,
                            from: _startTextController.value.text,
                            to: _finishTextController.value.text,
                          );

                          if (step != null) {
                            /*
                              final steps = step.routes[0].legs[0].steps;
                              //最初
                              for (int i = 0; i < steps.length; i++) {
                                await notifier.add(
                                  JsonLatLng(
                                      steps[i].start_location['lat'] as double,
                                      steps[i].start_location['lng'] as double),
                                );
                              }

                              //最後
                              await notifier.add(
                                JsonLatLng(
                                    steps.last.end_location['lat'] as double,
                                    steps.last.end_location['lng'] as double),
                              );
                              */

                            for (final latlng in step) {
                              await notifier.add(
                                JsonLatLng(
                                  latlng.latitude,
                                  latlng.longitude,
                                ),
                              );
                            }
                          }
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      //カルーセルページ
      body: //google map
          UiPageRootUtilMap(
        makers: _editRouteProvider.potisons,
        circls: _editRouteProvider.potisons,
        polyLines: _editRouteProvider.potisons,
        edit: true,
      ),
    );
  }
}
