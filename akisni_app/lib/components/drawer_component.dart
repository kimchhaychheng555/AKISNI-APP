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
                icons: Icons.home,
                title: 'home'.tr,
                onClick: () => controller.onHomePressed(),
              ),
              MenuItemComponent(
                icons: Icons.vertical_split,
                title: 'Locator List',
                onClick: () => controller.onLocatorListPressed(),
              ),
              MenuItemComponent(
                icons: Icons.add_circle,
                title: 'Manage',
                onClick: () => controller.onManagePressed(),
              ),
              MenuItemComponent(
                icons: Icons.people,
                title: 'User',
                onClick: () => controller.onUserPressed(),
              ),
              MenuItemComponent(
                icons: Icons.mode_of_travel,
                title: 'Track Location',
                onClick: () => controller.onTrackLocationPressed(),
              ),
              MenuItemComponent(
                icons: Icons.logout,
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
