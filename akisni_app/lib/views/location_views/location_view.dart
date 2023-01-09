import 'package:akisni_app/controllers/location_controller.dart';
import 'package:akisni_app/controllers/main_controller.dart';
import 'package:akisni_app/views/location_views/components/location_list_card_component.dart';
import 'package:akisni_app/views/main_view_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/loading_overlay_component.dart';

class LocationView extends GetResponsiveView<MainController> {
  LocationView({super.key});

  static String routeName = "/location";

  @override
  Widget builder() {
    var controller = Get.find<LocationController>();
    return Obx(
      () => WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: MainViewLayout(
            actions: [
              IconButton(
                  onPressed: () => controller.onFilterActionPressed(),
                  icon: const Icon(Icons.tune))
            ],
            onSearch: (value) => controller.onSearch(value),
            title: "location_list".tr.toUpperCase(),
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
      ),
    );
  }
}
