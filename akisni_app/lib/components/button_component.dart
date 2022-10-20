import 'package:akisni_app/constants/constant.dart';
import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String? titleButton;
  final void Function()? onClick;
  final double? width;
  final double? height;
  final Widget? surfix;
  const ButtonComponent({
    super.key,
    this.onClick,
    this.height,
    this.width,
    this.titleButton,
    this.surfix,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: BluePrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
        ),
        onPressed: () {
          onClick!();
        },
        child: Text(
          titleButton ?? "Button",
          style: const TextStyle(),
        ),
      ),
    );
  }
}
