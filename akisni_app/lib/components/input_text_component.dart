import 'package:akisni_app/components/text_component.dart';
import 'package:akisni_app/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputTextComponent extends StatelessWidget {
  final String? placeholder;
  final TextEditingController? controller;
  final bool isPassword;
  final TextInputType textInputType;
  final bool isTextArea;
  final bool isSearch;
  final Color? textColor;
  final String? Function(String?)? validator;
  const InputTextComponent({
    super.key,
    this.controller,
    this.placeholder,
    this.textColor,
    this.validator,
    this.textInputType = TextInputType.text,
    this.isTextArea = false,
    this.isPassword = false,
    this.isSearch = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppSpacing.marginInputText,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isSearch == false
              ? TextComponent(
                  text: placeholder ?? "",
                  color: textColor ?? BluePrimary,
                  fontSize: DEFAULT_FONT_SIZE,
                )
              : Container(),
          const SizedBox(height: 10),
          TextFormField(
            validator: validator,
            keyboardType: textInputType,
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
        ],
      ),
    );
  }
}
