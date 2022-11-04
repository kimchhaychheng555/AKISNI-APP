import 'package:akisni/components/drawer_component.dart';
import 'package:akisni/constants/constant.dart';
import 'package:akisni/controllers/location_controller.dart';
import 'package:akisni/controllers/main_controller.dart';
import 'package:akisni/views/location_views/components/location_list_card_component.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/loading_overlay_component.dart';
import '../../components/text_header_component.dart';

class LocationView extends GetResponsiveView<MainController> {
  LocationView({super.key});

  static String routeName = "/location";

  @override
  Widget builder() {
    var controller = Get.find<LocationController>();
    return Obx(
      () => Scaffold(
          appBar: AppBar(
            elevation: 0,
            automaticallyImplyLeading: true,
            backgroundColor: BluePrimary,
            title: TextHeaderComponent(
              text: "location_list".tr.toUpperCase(),
            ),
          ),
          drawer: const DrawerComponent(),
          body: LoadingOverlayComponent(
            isLoading: controller.isLoading.value,
            child: ListView.builder(
              itemCount: controller.listLocations.length,
              itemBuilder: ((BuildContext context, int index) {
                final locations = controller.listLocations[index];
                return LocationListCardComponent(
                  location: locations,
                );
              }),
            ),
          )),
    );
  }
}
