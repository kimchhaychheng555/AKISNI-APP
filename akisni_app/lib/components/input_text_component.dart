import 'package:akisni_app/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputTextComponent extends StatelessWidget {
  final String? placeholder;
  final TextEditingController? controller;
  final bool isPassword;
  const InputTextComponent({
    super.key,
    this.controller,
    this.placeholder,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppSpacing.marginInputText,
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            fontSize: 12,
          ),
          contentPadding: AppSpacing.paddingContentInputeText,
          fillColor: GrayQuaternary,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: GraySeconday, width: 0.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          hintText: placeholder ?? 'please_input_text'.tr,
        ),
      ),
    );
  }
}
