abstract class LocalStorageClient {
  Future<void> writeData(LocalStorageItem newItem);

  Future<String?> readData(String key);

  Future<void> deleteData(String key);

  Future<bool> containsKeyData(String key);

  Future<List<LocalStorageItem>> readAllData();

  Future<void> clearData();
}
class LocalStorageItem {
  LocalStorageItem({required this.key, required this.value});

  final String key;
  final String value;
}