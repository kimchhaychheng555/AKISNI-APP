import 'package:akisni_app/components/drawer_component.dart';
import 'package:akisni_app/components/loading_overlay_component.dart';
import 'package:akisni_app/components/text_component.dart';
import 'package:akisni_app/components/text_header_component.dart';
import 'package:akisni_app/constants/constant.dart';
import 'package:akisni_app/controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainViews extends StatelessWidget {
  const MainViews({Key? key}) : super(key: key);

  static String routeName = "/main";

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<MainController>();

    return Obx(() => Scaffold(
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
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(DEFAULT_PADDING),
                    color: Colors.white,
                    child: Center(
                      child: Column(
                        children: [
                          ...controller.userList.map(
                            (user) => TextComponent(
                              text:
                                  "${user.lastLongitude} - ${user.lastLatitude}",
                              color: BluePrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    width: MediaQuery.of(context).size.width,
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 244, 192, 192)
                                .withOpacity(0.4),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextComponent(
                              text: 'DK20-098',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFC63030),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextComponent(
                                      text: 'Location : Borey Lim Chhay Hak',
                                      color: Color(0xFF3B65AF),
                                    ),
                                    TextComponent(
                                      text: 'Power : 400kVA (Thibidi)',
                                      color: Color(0xFF3B65AF),
                                    ),
                                    TextComponent(
                                      text: 'Install Date : 01 October 2020',
                                      color: Color(0xFF3B65AF),
                                    ),
                                    TextComponent(
                                      text: 'Company : ',
                                      color: Color(0xFF3B65AF),
                                    ),
                                  ],
                                ),
                                Image.asset('assets/images/Rectangle 242.png')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 160,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.pramiryColor,
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        color: Colors.white,
                        icon: Icon(
                          Icons.directions,
                          size: 36,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              )),
        ));
  }
}
