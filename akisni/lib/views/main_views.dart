import 'package:akisni/constants/constant.dart';
import 'package:akisni/controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class MainViews extends GetResponsiveView<MainController> {
  MainViews({Key? key}) : super(key: key);

  static String routeName = "/main";

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<MainController>();
    return Obx(
      () => controller.isLoading.value ? splashScreen : controller.afterLoading,
    );
  }

  Widget get splashScreen {
    return Material(
      color: BluePrimary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/logo.png",
            width: 150,
          ),
          const SizedBox(height: 10),
          const SpinKitThreeBounce(
            color: Colors.white,
            size: 25.0,
          ),
        ],
      ),
    );
  }
}
