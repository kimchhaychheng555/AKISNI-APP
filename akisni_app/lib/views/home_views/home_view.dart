import 'package:akisni_app/components/drawer_component.dart';
import 'package:akisni_app/components/loading_overlay_component.dart';
import 'package:akisni_app/components/text_component.dart';
import 'package:akisni_app/components/text_header_component.dart';
import 'package:akisni_app/constants/constant.dart';
import 'package:akisni_app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<HomeController>();
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: BluePrimary,
          title: TextHeaderComponent(
            text: "home".tr.toUpperCase(),
          ),
        ),
        drawer: const DrawerComponent(),
        body: LoadingOverlayComponent(
          child: Stack(
            alignment: Alignment.center,
            children: [
              controller.isLoading.value
                  ? LoadingOverlayComponent(
                      isLoading: controller.isLoading.value,
                      child: Container(),
                    )
                  : GoogleMap(
                      tiltGesturesEnabled: true,
                      mapType: MapType.normal,
                      initialCameraPosition: controller.currentCamera.value ??
                          const CameraPosition(
                            bearing: 0.0,
                            target:
                                LatLng(11.556124986846767, 104.92695081979036),
                            tilt: 0.0,
                            zoom: 16.373828887939453,
                          ),
                      markers: controller.listLocation.toSet(),
                    ),
              Positioned(
                width: MediaQuery.of(context).size.width,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 244, 192, 192)
                            .withOpacity(0.4),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
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
                        const TextComponent(
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
                                  text:
                                      '${'location'.tr} : Borey Lim Chhay Hak',
                                  color: BluePrimary,
                                ),
                                TextComponent(
                                  text: '${'power'.tr} : 400kVA (Thibidi)',
                                  color: BluePrimary,
                                ),
                                TextComponent(
                                  text:
                                      '${'install_date'.tr} : 01 October 2020',
                                  color: BluePrimary,
                                ),
                                TextComponent(
                                  text: '${'company'.tr} : ',
                                  color: BluePrimary,
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
                    color: BluePrimary,
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    color: Colors.white,
                    icon: const Icon(
                      Icons.directions,
                      size: 36,
                    ),
                    onPressed: () => controller.onclick(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
