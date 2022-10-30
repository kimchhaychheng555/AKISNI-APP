import 'package:akisni_app/components/button_component.dart';
import 'package:akisni_app/components/cache_network_image_component.dart';
import 'package:akisni_app/components/card_component.dart';
import 'package:akisni_app/constants/constant.dart';
import 'package:akisni_app/controllers/location_controller.dart';
import 'package:akisni_app/controllers/main_controller.dart';
import 'package:akisni_app/models/location_list_models/location_list_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/text_component.dart';

class LocationListCardComponent extends StatelessWidget {
  final LocationListModel location;
  final isManage;

  const LocationListCardComponent({
    super.key,
    required this.location,
    this.isManage = false,
  });

  @override
  Widget build(BuildContext context) {
    var mainController = Get.find<MainController>();
    var locationController = Get.find<LocationController>();
    return CardComponent(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextComponent(
                text: location.title ?? "No Title",
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: RedPrimary,
              ),
              isManage == true
                  ? Row(
                      children: [
                        IconButton(
                          splashRadius: 20,
                          onPressed: () =>
                              locationController.onEditPressed(location),
                          icon: Icon(
                            Icons.edit,
                            color: BluePrimary,
                          ),
                        ),
                        IconButton(
                          splashRadius: 20,
                          onPressed: () =>
                              locationController.onDeletePressed(location.id),
                          icon: Icon(
                            Icons.delete,
                            color: RedPrimary,
                          ),
                        ),
                      ],
                    )
                  : Container()
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextComponent(
                      text: '${'location'.tr} : ${location.location ?? ""}',
                      color: BluePrimary,
                    ),
                    TextComponent(
                      text: '${'power'.tr} : ${location.power ?? ""}',
                      color: BluePrimary,
                    ),
                    TextComponent(
                      text:
                          '${'install_date'.tr} : ${location.installDate ?? ""}',
                      color: BluePrimary,
                    ),
                    TextComponent(
                      text: '${'company'.tr} : ${location.company ?? ""}',
                      color: BluePrimary,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ButtonComponent(
                      titleButton: 'direction'.tr,
                      onClick: () => mainController.onDirectionPressed(
                          location.latitude.toString(),
                          location.longitude.toString()),
                      height: 40,
                      width: 135,
                      isSurfix: true,
                      surfix: Icons.directions,
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: SizedBox(
                  height: 120,
                  child: CacheNetworkImageComponent(imageUrl: location.image),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
