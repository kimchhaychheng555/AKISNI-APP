import 'package:akisni_app/services/app_services.dart';
import 'package:akisni_app/services/app_storage.dart';

class AppStartup {
  static Future<void> languageStartup() async {
    if (AppStorage.storage.hasData("language")) {
      AppService.currentLanguage = await AppStorage.read("language");
    } else {
      AppService.currentLanguage = "en";
    }
  }

  static Future<void> userStartup() async {
    var user = "";
    if (AppStorage.storage.hasData("user")) {
      user = await AppStorage.read("user");
    } else {
      user = "Hello";
    }

    print(user);
  }
}
