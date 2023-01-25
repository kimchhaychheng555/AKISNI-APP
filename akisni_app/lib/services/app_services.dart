import 'package:akisni_app/constants/app_data.dart';
import 'package:akisni_app/constants/constant.dart';
import 'package:akisni_app/controllers/home_controller.dart';
import 'package:akisni_app/models/user_models/user_model.dart';
import 'package:akisni_app/services/app_startup.dart';
import 'package:akisni_app/services/app_storage.dart';
import 'package:akisni_app/services/responsitory_services.dart';
import 'package:custom_marker/marker_icon.dart';
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

  static Future<void> onLoadData() async {
    await onLoadLocation();
    await _onLoadMapMarker();
  }

  static Future<void> onLoadLocation() async {
    var locations = await ResponsitoryServices.getLocation();
    locations.sort((a, b) {
      return (a.title ?? "")
          .toLowerCase()
          .compareTo((b.title ?? "").toLowerCase());
    });
    AppData.listLocation = locations;
  }

  static Future<void> _onLoadMapMarker() async {
    var homeCtrl = Get.find<HomeController>();
    var locations = AppData.listLocation;
    for (var marker in locations) {
      if ((marker.latitude ?? 0) != 0 && (marker.longitude ?? 0) != 0) {
        _addLocationList(
          Marker(
            infoWindow: InfoWindow(title: marker.title),
            onTap: () => homeCtrl.onMapPressedActive(marker),
            markerId: MarkerId("${marker.id ?? 0}"),
            position: LatLng(marker.latitude ?? 0, marker.longitude ?? 0),
            icon: await MarkerIcon.pictureAsset(
                assetPath: "assets/images/tower.png", height: 80, width: 80),
          ),
        );
      }
    }
  }

  static void _addLocationList(Marker marker) async {
    var exist = AppData.listLocationMarker
        .where((x) => x.markerId == marker.markerId)
        .toList();
    if (exist.isEmpty) {
      AppData.listLocationMarker.add(marker);
    } else {
      AppData.listLocationMarker
          .removeWhere((x) => x.markerId == marker.markerId);
      AppData.listLocationMarker.add(marker);
    }
  }
}
