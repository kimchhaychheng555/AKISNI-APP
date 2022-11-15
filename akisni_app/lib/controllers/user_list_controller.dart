import 'package:akisni_app/models/user_models/user_model.dart';
import 'package:akisni_app/services/app_alert.dart';
import 'package:akisni_app/services/responsitory_services.dart';
import 'package:akisni_app/views/user_list_views/new_user_view.dart';
import 'package:get/get.dart';

class UserListController extends GetxController {
  var isLoading = false.obs;
  RxList<UserModel> listUsers = (<UserModel>[]).obs;

  @override
  void onInit() async {
    _onGetData();
    super.onInit();
  }

  void onAddNewLocationList() => Get.toNamed(NewUserView.routeName);

  Future<void> _onGetData() async {
    isLoading(true);
    var users = await ResponsitoryServices.getUser();
    listUsers.assignAll(users);
    isLoading(false);
  }

  void onEditPressed(UserModel location) =>
      Get.toNamed(NewUserView.routeName, arguments: location);

  void onDeletePressed(String? value) async {
    var resp = await ResponsitoryServices.deleteUser(value!);
    if (resp.statusCode == 200) {
      AppAlert.successAlert(title: "delete_user_success".tr);
    } else {
      AppAlert.successAlert(title: "delete_user_error".tr);
    }
    _onGetData();
  }

  void onAddNewUserPress() => Get.toNamed(NewUserView.routeName);
}
