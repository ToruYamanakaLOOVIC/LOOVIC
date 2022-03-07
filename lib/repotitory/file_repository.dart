import 'dart:async';
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

// ignore: camel_case_types
class fileRepository {
  var fileName = 'file';
  fileRepository({
    this.fileName = 'file',
  });

  Future<Map<String, dynamic>> load() async {
    final pref = await SharedPreferences.getInstance();
    final jsonText = pref.getString(fileName);
    if (jsonText == null) {
      return {};
    }
    return json.decode(jsonText) as Map<String, dynamic>;
  }

  Future<void> save(dynamic jsonMap) async {
    final pref = await SharedPreferences.getInstance();
    pref.setString(fileName, json.encode(jsonMap));
  }
}
