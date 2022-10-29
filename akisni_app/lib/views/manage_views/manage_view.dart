import 'package:akisni_app/components/drawer_component.dart';
import 'package:akisni_app/controllers/main_controller.dart';
import 'package:akisni_app/controllers/manage_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/loading_overlay_component.dart';
import '../../components/text_header_component.dart';
import '../../constants/constant.dart';
import '../location_views/components/location_list_card_component.dart';

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
          automaticallyImplyLeading: true,
          backgroundColor: BluePrimary,
          title: TextHeaderComponent(
            text: "location_list".tr.toUpperCase(),
          ),
        ),
        drawer: const DrawerComponent(),
        body: LoadingOverlayComponent(
          isLoading: controller.isLoading.value,
          child: Padding(
            padding: EdgeInsets.all(DEFAULT_PADDING),
            child: ListView.builder(
              itemCount: controller.listLocations.length,
              itemBuilder: ((BuildContext context, int index) {
                final locations = controller.listLocations[index];
                return LocationListCardComponent(
                  isManage: true,
                  location: locations,
                );
              }),
            ),
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
