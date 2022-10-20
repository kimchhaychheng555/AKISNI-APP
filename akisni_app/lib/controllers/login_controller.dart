import 'package:akisni_app/services/app_storage.dart';
import 'package:akisni_app/services/responsitory_services.dart';
import 'package:akisni_app/views/home_views/home_view.dart';
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
      if (isRememberMe.value) {
        AppStorage.saveLogin();
      }
      Get.toNamed(HomeView.routeName);
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
