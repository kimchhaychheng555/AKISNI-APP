import 'package:get/get.dart';
import 'package:akisni_app/components/text_component.dart';
import 'package:flutter/material.dart';

class NoNetWorkView extends StatelessWidget {
  const NoNetWorkView({super.key});

  static String routeName = "/no-network";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          TextComponent(text: "no_internet".tr),
        ],
      ),
    );
  }
}