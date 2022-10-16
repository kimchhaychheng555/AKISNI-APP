import 'package:akisni_app/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonComponent extends StatelessWidget {
  final String titleButton;
  final void Function()? onClick;
  const ButtonComponent({
    super.key,
    this.onClick,
    this.titleButton = 'Button',
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: AppColors.pramiryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ), //////// HERE
        ),
        onPressed: () {
          onClick!();
        },
        child: Text(
          titleButton,
          style: TextStyle(),
        ),
      ),
    );
  }
}
