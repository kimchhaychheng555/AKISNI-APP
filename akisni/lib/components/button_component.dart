import 'package:akisni/components/text_component.dart';
import 'package:akisni/constants/constant.dart';
import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String? titleButton;
  final void Function()? onClick;
  final double? width;
  final double? height;
  final bool isSurfix;
  final IconData? surfix;
  final Color? buttonColor, textColor;
  final FontWeight? fontWeight;
  const ButtonComponent({
    super.key,
    this.onClick,
    this.fontWeight,
    this.textColor,
    this.buttonColor,
    this.height,
    this.isSurfix = false,
    this.width,
    this.titleButton,
    this.surfix,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      width: width ?? double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor ?? BluePrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
        ),
        onPressed: () {
          onClick!();
        },
        child: isSurfix == false
            ? TextComponent(
                color: textColor,
                text: titleButton ?? "Button",
                fontWeight: fontWeight,
              )
            : Row(
                children: [
                  TextComponent(
                    color: textColor,
                    fontSize: 14,
                    text: titleButton ?? "Button",
                    fontWeight: fontWeight,
                  ),
                  const SizedBox(width: 5),
                  Icon(
                    surfix,
                    size: 20,
                  ),
                ],
              ),
      ),
    );
  }
}
