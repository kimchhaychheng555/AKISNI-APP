import 'package:akisni_app/components/drawer_component.dart';
import 'package:akisni_app/constants/constant.dart';
import 'package:akisni_app/controllers/location_controller.dart';
import 'package:akisni_app/controllers/main_controller.dart';
import 'package:akisni_app/views/location_views/components/location_list_card_component.dart';
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
            actions: [
              IconButton(
                onPressed: () => controller.onFilterActionPressed(),
                icon: const Icon(Icons.tune),
              )
            ],
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
