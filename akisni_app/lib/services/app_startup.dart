import 'dart:convert';

import 'package:akisni_app/constants/constant.dart';
import 'package:akisni_app/controllers/main_controller.dart';
import 'package:akisni_app/models/user_models/user_model.dart';
import 'package:akisni_app/services/app_services.dart';
import 'package:akisni_app/services/app_storage.dart';
import 'package:akisni_app/services/responsitory_services.dart';
import 'package:get/get.dart';
import 'package:mongo_dart/mongo_dart.dart';

class AppStartup {
  static Future<void> mongDbCreate() async {
    var success = false;
    ResponsitoryServices.mongoDb = await Db.create(CONNECTION_STR_MONOGO_DB);

    await ResponsitoryServices.mongoDb.open().then((_) {
      success = true;
    });

    AppService.isHasNetwork = success;
  }

  static Future<void> languageStartup() async {
    if (AppStorage.storage.hasData("language")) {
      AppService.currentLanguage = await AppStorage.read("language");
    } else {
      AppService.currentLanguage = "en";
      await AppStorage.write("language", AppService.currentLanguage);
    }
  }

  static Future<void> userStartup() async {
    UserModel user = UserModel();
    if (AppStorage.storage.hasData("user")) {
      user = UserModel.fromJson(jsonDecode(await AppStorage.read("user")));
    } else {
      user = UserModel(id: Uuid.NAMESPACE_NIL);
    }

    if (user.id != Uuid.NAMESPACE_NIL) {
      var checkLogin = await ResponsitoryServices.checkLogin(
        username: user.username,
        password: user.password,
        phoneNumber: user.phoneNumber,
      );

      if (checkLogin) {
        AppService.loginUser = user;

        var controller = Get.find<MainController>();
        controller.isLogin(true);
      }
    }
  }
}
