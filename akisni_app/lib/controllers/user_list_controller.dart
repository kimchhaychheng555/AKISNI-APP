import 'package:akisni_app/components/button_component.dart';
import 'package:akisni_app/components/text_component.dart';
import 'package:akisni_app/constants/constant.dart';
import 'package:akisni_app/models/user_models/user_model.dart';
import 'package:akisni_app/services/app_alert.dart';
import 'package:akisni_app/services/responsitory_services.dart';
import 'package:akisni_app/views/user_list_views/new_user_view.dart';
import 'package:flutter/cupertino.dart';
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
    Get.defaultDialog(
      title: ('delete_location'.tr),
      content: SizedBox(
        width: 300,
        child: Column(
          children: [
            TextComponent(
              text: "are_you_sure".tr,
              color: BluePrimary,
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const SizedBox(width: 5),
                Expanded(
                  child: ButtonComponent(
                    onClick: () => Get.back(),
                    titleButton: "cancel".tr,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ButtonComponent(
                    onClick: () => _onDeleteSubmit(value),
                    buttonColor: RedPrimary,
                    titleButton: "delete".tr,
                  ),
                ),
                const SizedBox(width: 5),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _onDeleteSubmit(String? value) async {
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
