import 'package:akisni_app/components/button_component.dart';
import 'package:akisni_app/components/card_component.dart';
import 'package:akisni_app/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../components/text_component.dart';

class LocationListCardComponent extends StatelessWidget {
  final String title;
  final String location;
  final String power;
  final String company;
  final String installDate;
  final String imageUrl;

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
            text: '${title}',
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Color(0xFFC63030),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextComponent(
                    text: '${'location'.tr} : ${location}',
                    color: Color(0xFF3B65AF),
                  ),
                  TextComponent(
                    text: '${'power'.tr} : ${power}',
                    color: Color(0xFF3B65AF),
                  ),
                  TextComponent(
                    text: '${'install_date'.tr} : ${installDate}',
                    color: Color(0xFF3B65AF),
                  ),
                  TextComponent(
                    text: '${'company'.tr} : ${company}',
                    color: Color(0xFF3B65AF),
                  ),
                ],
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                flex: 1,
                child: Image.asset(
                  imageUrl.isEmpty
                      ? 'assets/images/Rectangle 242.png'
                      : '${imageUrl}',
                  width: 100,
                ),
              )
            ],
          ),
          ButtonComponent(
            titleButton: 'direction',
            width: 120,
          )
        ],
      ),
    );
  }
}
