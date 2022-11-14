import 'package:akisni_app/components/drawer_component.dart';
import 'package:akisni_app/components/loading_overlay_component.dart';
import 'package:akisni_app/controllers/main_controller.dart';
import 'package:akisni_app/controllers/user_list_controller.dart';
import 'package:akisni_app/views/user_list_views/components/user_list_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/text_header_component.dart';
import '../../constants/constant.dart';

class UserListView extends GetResponsiveView<MainController> {
  UserListView({super.key});

  static String routeName = "/user";

  @override
  Widget builder() {
    var controller = Get.find<UserListController>();

    return Obx(
      () => Scaffold(
        drawer: const DrawerComponent(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: BluePrimary,
          title: TextHeaderComponent(
            text: "user_list".tr.toUpperCase(),
          ),
        ),
        body: LoadingOverlayComponent(
          isLoading: controller.isLoading.value,
          child: ListView.builder(
            itemCount: controller.listUsers.length,
            itemBuilder: ((BuildContext context, int index) {
              final user = controller.listUsers[index];
              return UserListItem(
                onEditPressed: () => controller.onEditPressed(user),
                onDeletePressed: () => controller.onDeletePressed(user.id),
                userName: user.username ?? '',
                fullName: user.fullName ?? '',
                phoneNumber: user.phoneNumber ?? '',
                profile: user.profile ?? '',
              );
            }),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => controller.onAddNewUserPress(),
          backgroundColor: BluePrimary,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
