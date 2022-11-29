import 'dart:io';

import 'package:akisni_app/models/user_models/user_model.dart';
import 'package:akisni_app/services/app_alert.dart';
import 'package:akisni_app/services/app_provider.dart';
import 'package:akisni_app/services/app_services.dart';
import 'package:akisni_app/services/app_storage.dart';
import 'package:akisni_app/services/responsitory_services.dart';
import 'package:akisni_app/views/home_views/home_view.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;
  var isRememberMe = false.obs;

  var usernameCtrl = TextEditingController();
  var passwordCtrl = TextEditingController();

  void onLoginPressed() async {
    isLoading(true);
    var checkLogin = await ResponsitoryServices.checkLogin(
        password: passwordCtrl.text, username: usernameCtrl.text);

    isLoading(false);
    if (checkLogin) {
      final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
      String deviceId = "";
      if (Platform.isAndroid) {
        var build = await deviceInfoPlugin.androidInfo;
        deviceId = build.id;
      } else if (Platform.isIOS) {
        var data = await deviceInfoPlugin.iosInfo;
        deviceId = data.identifierForVendor ?? ""; //UUID for iOS
      }

      if ((AppService.loginUser.active ?? "") == "" ||
          AppService.loginUser.active == deviceId) {
        //Save Device ID
        AppProvider provider = AppProvider();
        UserModel user = UserModel.fromJson(AppService.loginUser.toJson());
        user.active = deviceId;
        provider.updateUser(user.toJson());
        if (isRememberMe.value) {
          AppStorage.saveLogin();
        }
        Get.offAllNamed(HomeView.routeName);
      } else {
        AppAlert.warningAlert(title: "please_activate_new_device".tr);
      }
    } else {
      Fluttertoast.showToast(
        msg: "incorrect_username_password".tr,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }
}
