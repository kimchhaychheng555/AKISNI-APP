import 'package:akisni_app/components/drawer_component.dart';
import 'package:akisni_app/components/input_text_component.dart';
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

    return Scaffold(
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
        child: Padding(
          padding: EdgeInsets.all(DEFAULT_PADDING),
          child: Column(
            children: [
              InputTextComponent(
                isSearch: true,
                placeholder: 'search'.tr,
              ),
              SizedBox(
                height: SPACING_10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: controller.users.length,
                  itemBuilder: ((BuildContext context, int index) {
                    final users = controller.users[index];
                    return UserListItem(
                      userName: users.username ?? '',
                      fullName: users.fullName ?? '',
                      phoneNumber: users.phoneNumber ?? '',
                      profile: users.profile ?? '',
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.onAddNewUserPress();
        },
        backgroundColor: BluePrimary,
        child: const Icon(Icons.add),
      ),
    );
  }
}
