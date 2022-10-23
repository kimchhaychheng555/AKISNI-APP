import 'package:akisni_app/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputTextComponent extends StatelessWidget {
  final String? placeholder;
  final TextEditingController? controller;
  final bool isPassword;
  final bool isTextArea;
  final bool isSearch;
  const InputTextComponent({
    super.key,
    this.controller,
    this.placeholder,
    this.isTextArea = false,
    this.isPassword = false,
    this.isSearch = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppSpacing.marginInputText,
      child: TextField(
        maxLines: isTextArea == true ? 4 : 1,
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
            borderRadius: isSearch
                ? BorderRadius.circular(100)
                : BorderRadius.circular(4.0),
          ),
          border: OutlineInputBorder(
            borderRadius: isSearch
                ? BorderRadius.circular(100)
                : BorderRadius.circular(4.0),
          ),
          hintText: placeholder ?? 'please_input_text'.tr,
        ),
      ),
    );
  }
}
