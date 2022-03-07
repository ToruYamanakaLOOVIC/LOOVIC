import 'dart:async';

import 'package:loovic/module/json/JsonHistory.dart';
import 'package:loovic/repotitory/file_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// ignore: camel_case_types
class searchHistoryListStateNotifierProvider
    extends StateNotifier<JsonSaerchHistory> {
  String fileName = '';
  final repotitory = fileRepository(fileName: 'search');
  // ignore: prefer_const_constructors
  searchHistoryListStateNotifierProvider({this.fileName = 'search'})
      : super(const JsonSaerchHistory()) {
    Future(() async {
      state = await load();
    });
  }

  Future<JsonSaerchHistory> load() async {
    return JsonSaerchHistory.fromJson(await repotitory.load());
  }

  Future<void> save() async {
    repotitory.save(state);
  }
}

final searchHistoryListNotifierProvider = StateNotifierProvider<
    searchHistoryListStateNotifierProvider, JsonSaerchHistory>(
  (ref) => searchHistoryListStateNotifierProvider(fileName: 'search'),
);
