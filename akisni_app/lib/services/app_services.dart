import 'package:akisni_app/constants/constant.dart';
import 'package:akisni_app/models/user_models/user_model.dart';
import 'package:akisni_app/services/app_startup.dart';
import 'package:akisni_app/services/app_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uuid/uuid.dart';

class AppService {
  static bool isHasNetwork = true;
  static String currentLanguage = "en";
  static UserModel loginUser = UserModel(id: Uuid.NAMESPACE_NIL);
  static List<Marker> listMarkerLocation = [];
  static String get getFont {
    switch (currentLanguage) {
      case "en":
        return EN_FONT;
      case "kh":
        return KH_FONT;
      default:
        return EN_FONT;
    }
  }

  static Locale get getLanguage {
    switch (currentLanguage) {
      case "en":
        return const Locale('en');
      case "kh":
        return const Locale('kh');
      default:
        return const Locale('en');
    }
  }

  static onStartUp() async {
    try {
      await AppStartup.checkInternet();
      await AppStartup.languageStartup();
      await AppStartup.userStartup();
    } catch (e) {
      AppStorage.storage.remove('user');
    }
  }

  static Future<void> onChangeLanguage({String lang = ""}) async {
    if (lang != "") {
      AppService.currentLanguage = lang;
    } else {
      if (AppService.currentLanguage == "kh") {
        AppService.currentLanguage = "en";
      } else {
        AppService.currentLanguage = "kh";
      }
    }

    // Re update translatation
    await Get.updateLocale(AppService.getLanguage);
  }
}
