import 'package:akisni_app/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class InputTextComponent extends StatelessWidget {
  final String placeholder;
  const InputTextComponent({
    super.key,
    this.placeholder = 'Please input text',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppSpacing.marginInputText,
      child: TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(
            fontSize: 12,
          ),
          contentPadding: AppSpacing.paddingContentInputeText,
          fillColor: AppColors.bgInputText,
          filled: true,
          enabledBorder: const OutlineInputBorder(
            // width: 0.0 produces a thin "hairline" border
            borderSide: const BorderSide(
                color: AppColors.bgBorderInputText, width: 0.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          hintText: placeholder,
        ),
      ),
    );
  }
}
