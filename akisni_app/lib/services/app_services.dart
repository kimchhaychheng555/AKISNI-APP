import 'package:akisni_app/constants/constant.dart';
import 'package:akisni_app/services/app_startup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppService {
  static String currentLanguage = "en";
  static String connectionStringMongo = "";

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
    await AppStartup.languageStartup();
    await AppStartup.userStartup();
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
