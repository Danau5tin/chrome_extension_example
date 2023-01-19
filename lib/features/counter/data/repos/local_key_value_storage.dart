import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/repos/local_key_value_storage.dart';

final localKeyValueStorageProvider = Provider<LocalKeyValueStorage>(
  (ref) => LocalKeyValueStorageImpl(),
);

class LocalKeyValueStorageImpl implements LocalKeyValueStorage {
  late final SharedPreferences sharedPreferences;

  @override
  Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  @override
  int readInt(String key) {
    return sharedPreferences.getInt(key) ?? 0;
  }

  @override
  Future<void> saveInt(String key, int value) async {
    await sharedPreferences.setInt(key, value);
  }
}
