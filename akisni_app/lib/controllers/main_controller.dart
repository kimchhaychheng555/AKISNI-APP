import 'package:akisni_app/models/user_models/user_model.dart';
import 'package:akisni_app/services/app_services.dart';
import 'package:akisni_app/views/home_views/home_view.dart';
import 'package:akisni_app/views/location_views/location_view.dart';
import 'package:akisni_app/views/login_views/login_view.dart';
import 'package:akisni_app/views/no_network_view.dart';
import 'package:akisni_app/views/user_list_views/user_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  var isLoading = false.obs;
  var isDbLoad = false.obs;
  var isLogin = false.obs;
  RxList<UserModel> trackUserList = (<UserModel>[]).obs;

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
            ? const HomeView()
            : const UserListView()
        : const NoNetWorkView();
  }
}
