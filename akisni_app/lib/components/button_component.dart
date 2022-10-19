import 'package:akisni_app/constants/constant.dart';
import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String titleButton;
  final void Function()? onClick;
  final double? width;
  final double? height;
  const ButtonComponent({
    super.key,
    this.onClick,
    this.height,
    this.width,
    this.titleButton = 'Button',
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height == 0 ? 50 : height,
      width: width == 0 ? double.infinity : width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: BluePrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ), //////// HERE
        ),
        onPressed: () {
          onClick!();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              titleButton,
            ),
            Icon(Icons.directions)
          ],
        ),
      ),
    );
  }
}
