import 'dart:ffi';

import 'package:akisni_app/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CheckBoxComponent extends StatefulWidget {
  final String textContent;
  final bool isChecked;
  const CheckBoxComponent({
    super.key,
    this.isChecked = false,
    required this.textContent,
  });

  @override
  State<CheckBoxComponent> createState() => _CheckBoxComponentState();
}

class _CheckBoxComponentState extends State<CheckBoxComponent> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          checkColor: Colors.white,
          value: widget.isChecked,
          onChanged: (bool? value) {
            setState(() {
              widget.isChecked == value!;
            });
          },
        ),
        SizedBox(
          width: 10,
        ),
        Text('${widget.textContent}'),
      ],
    );
  }
}
