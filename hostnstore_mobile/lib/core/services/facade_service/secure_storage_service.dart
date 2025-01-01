import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  final _storage = const FlutterSecureStorage(
      aOptions: AndroidOptions(
    encryptedSharedPreferences: true,
  ));

  Future<void> setToken(String token) async =>
      await _storage.write(key: "token", value: token);

  Future<String?> get getToken async => await _storage.read(key: "token");

  Future<void> setUserData(String userId) async {
    try {
      await _storage.write(key: "id", value: userId);
    } catch (e) {
      rethrow;
    }
  }

  Future<String?> get getUserId async {
    try {
      String? id = await _storage.read(key: "id");

      if (id != null) {
        return id;
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> clearStorage() async {
    try {
      await _storage.deleteAll();
    } catch (e) {
      rethrow;
    }
  }
}
