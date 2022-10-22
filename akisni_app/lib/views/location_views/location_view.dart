import 'package:akisni_app/constants/constant.dart';
import 'package:akisni_app/controllers/location_controller.dart';
import 'package:akisni_app/views/location_views/components/location_list_card_component.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/input_text_component.dart';
import '../../components/loading_overlay_component.dart';
import '../../components/text_header_component.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});

  static String routeName = "/location";

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<LocationController>();
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios),
          elevation: 0,
          automaticallyImplyLeading: true,
          backgroundColor: BluePrimary,
          title: TextHeaderComponent(
            text: "location_list".tr.toUpperCase(),
          ),
        ),
        body: LoadingOverlayComponent(
          isLoading: controller.isLoading.value,
          child: Padding(
            padding: EdgeInsets.all(DEFAULT_PADDING),
            child: Column(
              children: [
                const InputTextComponent(
                  isSearch: true,
                  placeholder: 'Search',
                ),
                SizedBox(
                  height: SPACING_10,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: controller.locations.length,
                    itemBuilder: ((BuildContext context, int index) {
                      final locations = controller.locations[index];
                      return LocationListCardComponent(
                        title: locations.title,
                        location: locations.location,
                        power: locations.power,
                        installDate: locations.installDate,
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
