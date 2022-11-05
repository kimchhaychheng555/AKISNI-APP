import 'package:akisni/components/button_component.dart';
import 'package:akisni/components/check_box_component.dart';
import 'package:akisni/components/input_text_component.dart';
import 'package:akisni/components/loading_overlay_component.dart';
import 'package:akisni/components/text_header_component.dart';
import 'package:akisni/constants/constant.dart';
import 'package:akisni/controllers/login_controller.dart';
import 'package:akisni/controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends GetResponsiveView<MainController> {
  LoginView({super.key});

  static String routeName = "/login";

  @override
  Widget builder() {
    var controller = Get.find<LoginController>();
    return Obx(
      () => Scaffold(
        body: LoadingOverlayComponent(
          isLoading: controller.isLoading.value,
          child: Container(
            color: BluePrimary,
            child: Padding(
              padding: EdgeInsets.all(DEFAULT_PADDING),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      height: 130,
                    ),
                    const SizedBox(height: 20),
                    TextHeaderComponent(
                      text: 'login'.tr,
                      fontSize: FONT_SIZE_HEADER,
                    ),
                    const SizedBox(height: 20),
                    InputTextComponent(
                      textColor: Colors.white,
                      controller: controller.usernameCtrl,
                      placeholder: "username".tr,
                    ),
                    InputTextComponent(
                      textColor: Colors.white,
                      controller: controller.passwordCtrl,
                      placeholder: "password".tr,
                      isPassword: true,
                    ),
                    CheckBoxComponent(
                      isChecked: controller.isRememberMe.value,
                      onChanged: (value) {
                        controller.isRememberMe(value ?? false);
                      },
                      textContent: 'remember_me'.tr,
                    ),
                    const SizedBox(height: 10),
                    ButtonComponent(
                      fontWeight: FontWeight.bold,
                      textColor: BluePrimary,
                      buttonColor: Colors.white,
                      onClick: () => controller.onLoginPressed(),
                      titleButton: 'login'.tr,
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
