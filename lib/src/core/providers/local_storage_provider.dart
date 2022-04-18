import 'dart:convert';

import 'package:desafio_keyworks_mobile/src/core/providers/interfaces/ilocal_storage_provider.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageProvider implements ILocalStorageProvider {
  @override
  Future<Map<String, dynamic>> read(String key) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonEncoded = prefs.getString(key) ?? '';
    if (jsonEncoded.isEmpty) return {};
    return json.decode(jsonEncoded);
  }

  @override
  Future<void> save(String key, Map<String, dynamic> map) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonEncoded = json.encode(map);
    await prefs.setString(key, jsonEncoded);
  }
}
