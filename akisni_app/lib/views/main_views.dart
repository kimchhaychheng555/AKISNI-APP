import 'package:akisni_app/components/loading_overlay_component.dart';
import 'package:akisni_app/components/text_component.dart';
import 'package:akisni_app/components/text_header_component.dart';
import 'package:akisni_app/constants/constant.dart';
import 'package:akisni_app/controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:akisni_app/components/drawer_component.dart';

class MainViews extends StatelessWidget {
  const MainViews({Key? key}) : super(key: key);

  static String routeName = "/main";

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<MainController>();

    return Obx(
      () => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.pramiryColor,
          title: TextHeaderComponent(
            text: "home".tr.toUpperCase(),
          ),
        ),
        drawer: DrawerComponent(),
        body: LoadingOverlayComponent(
          isLoading: controller.isLoading.value,
          child: Container(
            padding: EdgeInsets.all(DEFAULT_PADDING),
            color: Colors.white,
            child: Center(
              child: Column(
                children: [
                  ...controller.userList.map(
                    (user) => TextComponent(
                      text: "${user.lastLongitude} - ${user.lastLatitude}",
                      color: BluePrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
