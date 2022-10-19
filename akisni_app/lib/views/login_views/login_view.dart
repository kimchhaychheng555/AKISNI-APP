import 'package:akisni_app/components/button_component.dart';
import 'package:akisni_app/components/check_box_component.dart';
import 'package:akisni_app/components/input_text_component.dart';
import 'package:akisni_app/components/loading_overlay_component.dart';
import 'package:akisni_app/components/text_header_component.dart';
import 'package:akisni_app/constants/constant.dart';
import 'package:akisni_app/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static String routeName = "/login";

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<LoginController>();
    return Obx(
      () => Scaffold(
        body: LoadingOverlayComponent(
          isLoading: controller.isLoading.value,
          child: Padding(
            padding: AppSpacing.bodyPandding,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextHeaderComponent(
                    text: 'login'.tr,
                    color: BluePrimary,
                    fontSize: FONT_SIZE_HEADER,
                  ),
                  const SizedBox(height: 20),
                  InputTextComponent(
                    controller: controller.usernameCtrl,
                    placeholder: "username".tr,
                  ),
                  InputTextComponent(
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
                    onClick: () => controller.onLoginPressed(),
                    titleButton: 'login'.tr,
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
