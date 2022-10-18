import 'package:akisni_app/components/button_component.dart';
import 'package:akisni_app/components/check_box_component.dart';
import 'package:akisni_app/components/input_text_component.dart';
import 'package:akisni_app/constants/constant.dart';
import 'package:akisni_app/views/main_views.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static String routeName = "/login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppSpacing.bodyPandding,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Log In',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const InputTextComponent(),
              const InputTextComponent(),
              CheckBoxComponent(textContent: 'remember_me'.tr),
              const SizedBox(
                height: 10,
              ),
              ButtonComponent(
                onClick: () => Get.toNamed(MainViews.routeName),
                titleButton: 'Log In',
              ),
            ]),
      ),
    );
  }
}
