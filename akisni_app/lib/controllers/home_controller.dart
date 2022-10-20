import 'package:akisni_app/views/home_views/home_view.dart';
import 'package:akisni_app/views/user_list_views/user_list_view.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  void onHomePressed() => Get.offAndToNamed(HomeView.routeName);

  void onLocatorListPressed() {}

  void onManagePressed() {}

  void onPermissionPressed() {}

  void onUserPressed() => Get.offAllNamed(UserListView.routeName);

  void onTrackLocationPressed() {}

  void onLogoutPreseed() {}
}
