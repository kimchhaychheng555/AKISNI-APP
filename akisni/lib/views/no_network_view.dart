import 'package:akisni/controllers/main_controller.dart';
import 'package:get/get.dart';
import 'package:akisni/components/text_component.dart';
import 'package:flutter/material.dart';

class NoNetWorkView extends GetResponsiveView<MainController> {
  NoNetWorkView({super.key});

  static String routeName = "/no-network";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextComponent(
            text: "no_internet".tr,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
