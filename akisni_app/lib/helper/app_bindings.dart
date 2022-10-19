import 'package:akisni_app/controllers/location_controller.dart';
import 'package:akisni_app/controllers/login_controller.dart';
import 'package:akisni_app/controllers/main_controller.dart';
import 'package:akisni_app/controllers/user_list_controller.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() => MainController());
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<LocationController>(() => LocationController());
    Get.lazyPut<UserListController>(() => UserListController());
  }
}
