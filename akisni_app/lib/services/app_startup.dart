import 'package:akisni_app/constants/constant.dart';
import 'package:akisni_app/services/app_services.dart';
import 'package:akisni_app/services/app_storage.dart';
import 'package:akisni_app/services/respository_services.dart';
import 'package:mongo_dart/mongo_dart.dart';

class AppStartup {
  static Future<void> mongDbCreate() async {
    RespositoryServices.mongoDb = await Db.create(CONNECTION_STR_MONOGO_DB);
  }

  static Future<void> languageStartup() async {
    if (AppStorage.storage.hasData("language")) {
      AppService.currentLanguage = await AppStorage.read("language");
    } else {
      AppService.currentLanguage = "en";
      await AppStorage.write("language", AppService.currentLanguage);
    }
  }

  static Future<String> userStartup() async {
    var user = "";
    if (AppStorage.storage.hasData("user")) {
      user = await AppStorage.read("user");
    } else {
      user = "";
    }

    return user;
  }
}
