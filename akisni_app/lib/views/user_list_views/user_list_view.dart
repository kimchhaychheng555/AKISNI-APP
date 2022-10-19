import 'package:akisni_app/controllers/main_controller.dart';
import 'package:akisni_app/controllers/user_list_controller.dart';
import 'package:akisni_app/views/user_list_views/components/user_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../components/input_text_component.dart';
import '../../components/loading_overlay_component.dart';
import '../../components/text_header_component.dart';
import '../../constants/constant.dart';

class UserListView extends StatelessWidget {
  const UserListView({super.key});
  static String routeName = "/user";
  @override
  Widget build(BuildContext context) {
    var controller = Get.find<UserListController>();
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        elevation: 0,
        automaticallyImplyLeading: true,
        backgroundColor: BluePrimary,
        title: TextHeaderComponent(
          text: "user_list".tr.toUpperCase(),
        ),
      ),
      body: LoadingOverlayComponent(
        child: Padding(
          padding: EdgeInsets.all(DEFAULT_PADDING),
          child: Column(
            children: [
              InputTextComponent(
                isSearch: true,
                placeholder: 'Search',
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
                      isActive: users.active!,
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
    );
  }
}
