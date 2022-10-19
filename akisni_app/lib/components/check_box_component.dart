import 'package:akisni_app/components/text_component.dart';
import 'package:flutter/material.dart';

class CheckBoxComponent extends StatelessWidget {
  final String textContent;
  final bool isChecked;
  final Function(bool?)? onChanged;
  const CheckBoxComponent({
    super.key,
    this.isChecked = false,
    required this.textContent,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          checkColor: Colors.white,
          value: isChecked,
          onChanged: onChanged,
        ),
        const SizedBox(
          width: 10,
        ),
        TextComponent(
          text: textContent,
          color: Colors.black,
        ),
      ],
    );
  }
}
