import 'package:akisni/controllers/home_controller.dart';
import 'package:akisni/controllers/location_controller.dart';
import 'package:akisni/controllers/login_controller.dart';
import 'package:akisni/controllers/main_controller.dart';
import 'package:akisni/controllers/manage_controller.dart';
import 'package:akisni/controllers/new_manage_controller.dart';
import 'package:akisni/controllers/new_user_controller.dart';
import 'package:akisni/controllers/track_location_controller.dart';
import 'package:akisni/controllers/user_list_controller.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() => MainController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<LocationController>(() => LocationController());
    Get.lazyPut<UserListController>(() => UserListController());
    Get.lazyPut<ManageController>(() => ManageController());
    Get.lazyPut<NewUserController>(() => NewUserController());
    Get.lazyPut<NewManageController>(() => NewManageController());
    Get.lazyPut<TrackLocationController>(() => TrackLocationController());
  }
}
