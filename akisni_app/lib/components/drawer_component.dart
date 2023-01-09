import 'package:akisni_app/components/cache_network_image_component.dart';
import 'package:akisni_app/components/menu_item_component.dart';
import 'package:akisni_app/components/text_component.dart';
import 'package:akisni_app/constants/constant.dart';
import 'package:akisni_app/controllers/main_controller.dart';
import 'package:akisni_app/services/app_services.dart';
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
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child: SizedBox(
                                width: 60,
                                height: 60,
                                child: InkWell(
                                  onTap: () => controller.onViewImagePressed(
                                      AppService.loginUser.profile),
                                  child: CacheNetworkImageComponent(
                                    imageUrl: AppService.loginUser.profile,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextComponent(
                                  text: AppService.loginUser.fullName ?? "",
                                  fontSize: 18,
                                ),
                                TextComponent(
                                  text: AppService.loginUser.role ?? "user".tr,
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
                title: 'locator_list'.tr,
                onClick: () => controller.onLocatorListPressed(),
              ),
              if (AppService.loginUser.role?.toLowerCase() == "admin" ||
                  AppService.loginUser.role?.toLowerCase() == "moderator")
                MenuItemComponent(
                  icons: Icons.add_circle,
                  title: 'manage'.tr,
                  onClick: () => controller.onManagePressed(),
                ),
              if (AppService.loginUser.role?.toLowerCase() == "admin")
                MenuItemComponent(
                  icons: Icons.people,
                  title: 'user'.tr,
                  onClick: () => controller.onUserPressed(),
                ),
              if (AppService.loginUser.role?.toLowerCase() == "admin")
                MenuItemComponent(
                  icons: Icons.mode_of_travel,
                  title: 'track_location'.tr,
                  onClick: () => controller.onTrackLocationPressed(),
                ),
              MenuItemComponent(
                icons: Icons.settings,
                title: 'setting'.tr,
                onClick: () => controller.onSettingPressed(),
              ),
              MenuItemComponent(
                icons: Icons.logout,
                title: 'logout'.tr,
                onClick: () => controller.onLogoutPreseed(),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () => AppService.onChangeLanguage(lang: "kh"),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/197505.png',
                              width: 25,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const TextComponent(text: 'Khmer'),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () => AppService.onChangeLanguage(lang: "en"),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/en_flage.png',
                              width: 25,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const TextComponent(text: 'English'),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
