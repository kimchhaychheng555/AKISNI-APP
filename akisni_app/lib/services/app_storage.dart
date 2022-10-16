import 'package:encrypt/encrypt.dart';
import 'package:get_storage/get_storage.dart';

class AppStorage {
  static GetStorage storage = GetStorage("setting");
  static final _key = Key.fromUtf8('wjBBAiBgumN4jXv8');
  static final _iv = IV.fromLength(16);
  static final _encrypter = Encrypter(AES(_key));

  static Future<void> write(String key, String value) async {
    var newValue = _encrypter.encrypt(value, iv: _iv);
    await storage.write(key, newValue.base16);
  }

  static Future<String> read(String key) async {
    var readValue = await storage.read(key);
    var value = _encrypter.decrypt16(readValue, iv: _iv);

    return value;
  }
}
