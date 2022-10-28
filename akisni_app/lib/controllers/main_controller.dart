import 'package:akisni_app/models/user_active_models/user_active_model.dart';
import 'package:akisni_app/services/app_services.dart';
import 'package:akisni_app/services/app_storage.dart';
import 'package:akisni_app/views/home_views/home_view.dart';
import 'package:akisni_app/views/location_views/location_view.dart';
import 'package:akisni_app/views/login_views/login_view.dart';
import 'package:akisni_app/views/manage_views/manage_view.dart';
import 'package:akisni_app/views/no_network_view.dart';
import 'package:akisni_app/views/user_list_views/user_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class MainController extends GetxController {
  var isLoading = false.obs;
  var isDbLoad = false.obs;
  var isLogin = false.obs;
  RxList<UserActiveModel> trackUserList = (<UserActiveModel>[]).obs;

  @override
  void onInit() async {
    isLoading(true);
    await AppService.onStartUp();
    isDbLoad(true);
    isLoading(false);

    super.onInit();
  }

  Widget get afterLoading {
    return AppService.isHasNetwork
        ? isLogin.value
            ? HomeView()
            : LoginView()
        : NoNetWorkView();
  }

  void onDirectionPressed(String latitude, String longitude) async {
    String dir = "google.navigation:q=$latitude,$longitude";
    final Uri uri = Uri.parse(dir);

    if (!await launchUrl(uri)) {
      throw 'Could not launch $uri';
    }
  }

  void onHomePressed() => Get.offNamed(HomeView.routeName);

  void onLocatorListPressed() => Get.offNamed(LocationView.routeName);

  void onManagePressed() => Get.offNamed(ManageView.routeName);

  void onUserPressed() => Get.offNamed(UserListView.routeName);

  void onTrackLocationPressed() {}

  void onLogoutPreseed() async {
    Get.offAllNamed(LoginView.routeName);
    await AppStorage.storage.remove("user");
  }
}
