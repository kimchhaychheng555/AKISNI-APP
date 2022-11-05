import 'package:akisni_app/components/button_component.dart';
import 'package:akisni_app/components/date_time_picker_component.dart';
import 'package:akisni_app/components/drawer_component.dart';
import 'package:akisni_app/components/text_component.dart';
import 'package:akisni_app/constants/constant.dart';
import 'package:akisni_app/controllers/location_controller.dart';
import 'package:akisni_app/controllers/main_controller.dart';
import 'package:akisni_app/views/location_views/components/location_list_card_component.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/loading_overlay_component.dart';
import '../../components/tage_component.dart';
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
                  onPressed: () {
                    Get.bottomSheet(
                      Container(
                          padding: EdgeInsets.all(DEFAULT_PADDING),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          height: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextComponent(
                                text: 'filter_result'.tr,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: DateTimePickerComponent(
                                      initialValue: DateTime.now().toString(),
                                      label: 'start_date'.tr,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: DateTimePickerComponent(
                                      initialValue: DateTime.now().toString(),
                                      label: 'end_date'.tr,
                                    ),
                                  )
                                ],
                              ),
                              TextComponent(
                                text: 'type'.tr,
                                color: BluePrimary,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: const [
                                    TageComponent(
                                      label: 'Term 5 years',
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    TageComponent(
                                      label: 'Term 5 years',
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    TageComponent(
                                      label: 'Term 5 years',
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    TageComponent(
                                      label: 'Term 5 years',
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              ButtonComponent(
                                titleButton: 'apply_filter'.tr,
                              )
                            ],
                          )),
                    );
                  },
                  icon: const Icon(Icons.tune))
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
