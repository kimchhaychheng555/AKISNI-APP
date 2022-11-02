import 'package:akisni_app/components/cache_network_image_component.dart';
import 'package:akisni_app/components/loading_overlay_component.dart';
import 'package:akisni_app/components/text_component.dart';
import 'package:akisni_app/constants/constant.dart';
import 'package:akisni_app/controllers/home_controller.dart';
import 'package:akisni_app/controllers/main_controller.dart';
import 'package:akisni_app/views/main_view_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uuid/uuid.dart';

class HomeView extends GetResponsiveView<MainController> {
  HomeView({super.key});

  static String routeName = "/home";

  @override
  Widget builder() {
    var controller = Get.find<HomeController>();
    var mainController = Get.find<MainController>();

    return Obx(
      () => MainViewLayout(
        onSearch: (value) => controller.onSearch(value),
        title: "home".tr.toUpperCase(),
        body: LoadingOverlayComponent(
          child: Stack(
            alignment: Alignment.center,
            children: [
              controller.isLoading.value
                  ? LoadingOverlayComponent(
                      isLoading: true,
                      child: Container(),
                    )
                  : GoogleMap(
                      myLocationEnabled: true,
                      tiltGesturesEnabled: true,
                      mapType: MapType.normal,
                      initialCameraPosition: controller.currentCamera.value,
                      onTap: (_) => controller.onMapPressed(),
                      markers: controller.listLocation.toSet(),
                    ),
              if ((controller.currentMarkerActive.value?.id ??
                      Uuid.NAMESPACE_NIL) !=
                  Uuid.NAMESPACE_NIL)
                Positioned(
                  width: Get.width,
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
                          TextComponent(
                            text: controller.currentMarkerActive.value?.title ??
                                "HERE NO TITLE",
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: RedPrimary,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextComponent(
                                    text:
                                        '${'location'.tr} : ${controller.currentMarkerActive.value?.location ?? ""}',
                                    color: BluePrimary,
                                  ),
                                  TextComponent(
                                    text:
                                        '${'power'.tr} : ${controller.currentMarkerActive.value?.power ?? ""}',
                                    color: BluePrimary,
                                  ),
                                  TextComponent(
                                    text:
                                        '${'install_date'.tr} : ${controller.currentMarkerActive.value?.installDate ?? ""}',
                                    color: BluePrimary,
                                  ),
                                  TextComponent(
                                    text:
                                        '${'company'.tr} : ${controller.currentMarkerActive.value?.company ?? ""}',
                                    color: BluePrimary,
                                  ),
                                ],
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox(
                                  height: 120,
                                  width: 150,
                                  child: CacheNetworkImageComponent(
                                    imageUrl: controller
                                        .currentMarkerActive.value?.image,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              if ((controller.currentMarkerActive.value?.id ??
                      Uuid.NAMESPACE_NIL) !=
                  Uuid.NAMESPACE_NIL)
                Positioned(
                  right: 10,
                  bottom: 155,
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
                      onPressed: () => mainController.onDirectionPressed(
                        "${controller.currentMarkerActive.value?.latitude}",
                        "${controller.currentMarkerActive.value?.longitude}",
                      ),
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
