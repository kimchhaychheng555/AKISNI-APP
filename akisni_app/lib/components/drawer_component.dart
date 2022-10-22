import 'package:akisni_app/components/menu_item_component.dart';
import 'package:akisni_app/components/text_component.dart';
import 'package:akisni_app/constants/constant.dart';
import 'package:akisni_app/controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<MainController>();
    return SafeArea(
      child: Drawer(
        child: Container(
          color: BluePrimary,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 100,
                child: DrawerHeader(
                    decoration: BoxDecoration(
                      color: BluePrimary,
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: CircleAvatar(
                                radius: 20.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: Image.asset('assets/images/icon.png'),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: const [
                                TextComponent(
                                  text: 'Chay',
                                  fontSize: 18,
                                ),
                                TextComponent(
                                  text: 'admin',
                                  fontSize: 14,
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              MenuItemComponent(
                title: 'home'.tr,
                onClick: () => controller.onHomePressed(),
              ),
              MenuItemComponent(
                title: 'Locator List',
                onClick: () => controller.onLocatorListPressed(),
              ),
              MenuItemComponent(
                title: 'Manage',
                onClick: () => controller.onManagePressed(),
              ),
              MenuItemComponent(
                title: 'Permission',
                onClick: () => controller.onPermissionPressed(),
              ),
              MenuItemComponent(
                title: 'User',
                onClick: () => controller.onUserPressed(),
              ),
              MenuItemComponent(
                title: 'Track Location',
                onClick: () => controller.onTrackLocationPressed(),
              ),
              MenuItemComponent(
                title: 'Logout',
                onClick: () => controller.onLogoutPreseed(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
