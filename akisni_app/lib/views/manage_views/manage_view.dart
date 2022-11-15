import 'package:akisni_app/components/drawer_component.dart';
import 'package:akisni_app/controllers/main_controller.dart';
import 'package:akisni_app/controllers/manage_controller.dart';
import 'package:akisni_app/views/manage_views/components/manage_list_card_component.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/loading_overlay_component.dart';
import '../../components/text_header_component.dart';
import '../../constants/constant.dart';

class ManageView extends GetResponsiveView<MainController> {
  ManageView({super.key});

  static String routeName = "/manage";

  @override
  Widget builder() {
    var controller = Get.find<ManageController>();
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () => controller.onFilterActionPressed(),
                icon: const Icon(Icons.tune))
          ],
          automaticallyImplyLeading: true,
          backgroundColor: BluePrimary,
          title: TextHeaderComponent(
            text: "manage_location_list".tr.toUpperCase(),
          ),
        ),
        drawer: const DrawerComponent(),
        body: LoadingOverlayComponent(
          isLoading: controller.isLoading.value,
          child: ListView.builder(
            itemCount: controller.listLocations.length,
            itemBuilder: ((BuildContext context, int index) {
              final locations = controller.listLocations[index];
              return ManageListCardComponent(
                location: locations,
              );
            }),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.onAddNewLocationList();
          },
          backgroundColor: BluePrimary,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
