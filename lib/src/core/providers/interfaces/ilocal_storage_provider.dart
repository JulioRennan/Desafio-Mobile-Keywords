abstract class ILocalStorageProvider {
  Future<void> save(String key, Map<String, dynamic> map);
  Future<Map<String, dynamic>> read(String key);
}
