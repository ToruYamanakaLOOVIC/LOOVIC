import 'dart:async';

import 'package:loovic/module/json/JsonApp.dart';
import 'package:loovic/repotitory/file_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// ignore: camel_case_types
class appNotifierProvider extends StateNotifier<JsonApp> {
  final repotitory = fileRepository(fileName: 'app');
  // ignore: prefer_const_constructors
  appNotifierProvider() : super(JsonApp()) {
    Future(() async {
      state = await load();
    });
  }

  Future<JsonApp> load() async {
    return JsonApp.fromJson(await repotitory.load());
  }

  Future<void> save({JsonApp? app}) async {
    if (app != null) {
      state = app;
    }
    repotitory.save(state);
  }
}

final apptNotifierProvider =
    StateNotifierProvider<appNotifierProvider, JsonApp>(
  (ref) => appNotifierProvider(),
);
