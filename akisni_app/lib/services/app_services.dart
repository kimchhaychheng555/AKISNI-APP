import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppService {
  static String currentLanguage = "en";

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

  static onStartUp() {}

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
