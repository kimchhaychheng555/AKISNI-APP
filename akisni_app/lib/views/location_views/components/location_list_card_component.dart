import 'package:akisni_app/components/button_component.dart';
import 'package:akisni_app/components/card_component.dart';
import 'package:akisni_app/constants/constant.dart';
import 'package:akisni_app/controllers/main_controller.dart';
import 'package:akisni_app/models/location_list_models/location_list_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skeletons/skeletons.dart';

import '../../../components/text_component.dart';

class LocationListCardComponent extends StatelessWidget {
  final LocationListModel location;

  const LocationListCardComponent({
    super.key,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    var mainController = Get.find<MainController>();
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
                text: location.name ?? "",
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: RedPrimary,
              ),
              Row(
                children: [
                  Icon(
                    Icons.edit,
                    color: BluePrimary,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.delete,
                    color: RedPrimary,
                  ),
                ],
              )
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
                      height: 5,
                    ),
                    ButtonComponent(
                      titleButton: 'direction'.tr,
                      onClick: () => mainController.onDirectionPressed(
                          location.latitude.toString(),
                          location.longitude.toString()),
                      height: 30,
                      width: 120,
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
                  child: CachedNetworkImage(
                    imageUrl: "$BASE_URL/images/${location.image}",
                    fit: BoxFit.cover,
                    errorWidget: (context, url, error) => Image.asset(
                        "assets/images/placeholder-image.jpg",
                        fit: BoxFit.cover),
                    placeholder: (context, url) => const SkeletonAvatar(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
