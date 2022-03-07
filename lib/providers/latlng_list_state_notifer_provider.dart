import 'package:loovic/module/json/JsonLatLng.dart';
import 'package:loovic/module/json/JsonRoute.dart';
import 'package:loovic/repotitory/file_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// ignore: camel_case_types
class latLngStateNotifierProvider extends StateNotifier<JsonRoute> {
  String fileName = '';
  var repotitory = fileRepository(fileName: 'latlng');
  // ignore: prefer_const_constructors
  latLngStateNotifierProvider({this.fileName = 'latlng'}) : super(JsonRoute()) {
    Future(() async {
      repotitory = fileRepository(fileName: fileName);
      state = await load();
    });
  }

  /// 新しい座標を追加するメソッド
  Future<void> add(JsonLatLng position) async {
    remove(position);
    // stateに追加した座標をadd
    state = state.copyWith(potisons: [...state.potisons, position]);

    await save();
  }

  /// 座標を削除
  Future<void> remove(JsonLatLng position) async {
    state.potisons.remove(position);
    state = state.copyWith(potisons: state.potisons);
    await save();
  }

  //全ての座標を削除
  Future<void> removeAll() async {
    state = state.copyWith(potisons: []);

    await save();
  }

  Future<void> active(int index, bool isActive) async {
    state.potisons[index] = state.potisons[index].copyWith(acrive: isActive);
  }

  Future<void> reset() async {
    for (var i = 0; i < state.potisons.length; i++) {
      state.potisons[i] = state.potisons[i].copyWith(acrive: true);
    }
  }

  //読み込み
  Future<JsonRoute> load() async {
    return JsonRoute.fromJson(await repotitory.load());
  }

  //保存
  Future<void> save() async {
    repotitory.save(state);
  }
}

final routeLogsListNotifierProvider =
    StateNotifierProvider<latLngStateNotifierProvider, JsonRoute>(
  (ref) => latLngStateNotifierProvider(fileName: 'routeLogs'),
);

final editRouteListNotifierProvider =
    StateNotifierProvider<latLngStateNotifierProvider, JsonRoute>(
  (ref) => latLngStateNotifierProvider(fileName: 'editRouteLogs'),
);
