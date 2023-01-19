abstract class LocalKeyValueStorage {
  Future<void> init();

  Future<void> saveInt(String key, int value);

  int readInt(String key);
}
