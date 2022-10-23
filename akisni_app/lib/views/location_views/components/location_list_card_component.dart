import 'package:akisni_app/components/button_component.dart';
import 'package:akisni_app/components/card_component.dart';
import 'package:akisni_app/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/text_component.dart';

class LocationListCardComponent extends StatelessWidget {
  final String? title;
  final String? location;
  final String? power;
  final String? company;
  final String? installDate;
  final String? imageUrl;

  const LocationListCardComponent({
    super.key,
    required this.title,
    this.installDate = '',
    this.power = '',
    this.company = '',
    this.location = '',
    this.imageUrl = '',
  });

  @override
  Widget build(BuildContext context) {
    return CardComponent(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextComponent(
            text: title ?? "",
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: const Color(0xFFC63030),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextComponent(
                    text: '${'location'.tr} : $location',
                    color: BluePrimary,
                  ),
                  TextComponent(
                    text: '${'power'.tr} : $power',
                    color: BluePrimary,
                  ),
                  TextComponent(
                    text: '${'install_date'.tr} : $installDate',
                    color: BluePrimary,
                  ),
                  TextComponent(
                    text: '${'company'.tr} : $company',
                    color: BluePrimary,
                  ),
                ],
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                flex: 1,
                child: Image.asset(
                  "$imageUrl",
                  width: 100,
                ),
              )
            ],
          ),
          const ButtonComponent(
            titleButton: 'direction',
            width: 120,
            height: 30,
            isSurfix: true,
            surfix: Icons.directions,
          )
        ],
      ),
    );
  }
}
